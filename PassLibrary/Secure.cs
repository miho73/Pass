﻿using System;
using System.Data;
using System.Linq;
using System.IO;
using System.Security.Cryptography;
using System.Text;

namespace PassLibrary
{
    public class Secure
    {
        public Secure(string Key)
        {
            KEY = Key;
        }
        public Secure() {}
        private string KEY { get; set; }
        private string IV = "fjheoehgoeheoeh6";
        public string Key
        {
            get
            {
                return KEY;
            }
            set
            {
                KEY = GetRandomText(Int32.Parse(value));
            }
        }
        private string GetRandomText(int len)
        {
            Random random = new Random();
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            return new string(Enumerable.Repeat(chars, len)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }
        //TODO: Code Optimize
        public string AES256Encrypt(string msg)
        {
            RijndaelManaged aes = new RijndaelManaged();
            aes.KeySize = 256;
            aes.BlockSize = 128;
            aes.Mode = CipherMode.CBC;
            aes.Padding = PaddingMode.PKCS7;
            aes.Key = Encoding.UTF8.GetBytes(Key);
            aes.IV = Encoding.UTF8.GetBytes(IV);
            var encrypt = aes.CreateEncryptor(aes.Key, aes.IV);
            byte[] buf = null;
            using (var ms = new MemoryStream())
            {
                using (var cs = new CryptoStream(ms, encrypt, CryptoStreamMode.Write))
                {
                    byte[] xXml = Encoding.UTF8.GetBytes(msg);
                    cs.Write(xXml, 0, xXml.Length);
                }
                buf = ms.ToArray();
            }
            string Output = Convert.ToBase64String(buf);
            return Output;
        }
        public string AES256Decrypt(string msg)
        {
            RijndaelManaged aes = new RijndaelManaged();
            aes.KeySize = 256;
            aes.BlockSize = 128;
            aes.Mode = CipherMode.CBC;
            aes.Padding = PaddingMode.PKCS7;
            aes.Key = Encoding.UTF8.GetBytes(Key);
            aes.IV = Encoding.UTF8.GetBytes(IV);
            var decrypt = aes.CreateDecryptor();
            byte[] buf = null;
            using (var ms = new MemoryStream())
            {
                using (var cs = new CryptoStream(ms, decrypt, CryptoStreamMode.Write))
                {
                    byte[] xXml = Convert.FromBase64String(msg);
                    cs.Write(xXml, 0, xXml.Length);
                }
                buf = ms.ToArray();
            }
            string Output = Encoding.UTF8.GetString(buf);
            return Output;
        }
        public byte[] AES256Encrypt(byte[] msg)
        {
            RijndaelManaged aes = new RijndaelManaged();
            aes.KeySize = 256;
            aes.BlockSize = 128;
            aes.Mode = CipherMode.CBC;
            aes.Padding = PaddingMode.PKCS7;
            aes.Key = Encoding.UTF8.GetBytes(Key);
            aes.IV = Encoding.UTF8.GetBytes(IV);
            var encrypt = aes.CreateEncryptor(aes.Key, aes.IV);
            byte[] buf = null;
            using (var ms = new MemoryStream())
            {
                using (var cs = new CryptoStream(ms, encrypt, CryptoStreamMode.Write))
                {
                    cs.Write(msg, 0, msg.Length);
                }
                buf = ms.ToArray();
            }
            return buf;
        }
        public byte[] AES256Decrypt(byte[] msg)
        {
            RijndaelManaged aes = new RijndaelManaged();
            aes.KeySize = 256;
            aes.BlockSize = 128;
            aes.Mode = CipherMode.CBC;
            aes.Padding = PaddingMode.PKCS7;
            aes.Key = Encoding.UTF8.GetBytes(Key);
            aes.IV = Encoding.UTF8.GetBytes(IV);
            var decrypt = aes.CreateDecryptor();
            byte[] buf = null;
            using (var ms = new MemoryStream())
            {
                using (var cs = new CryptoStream(ms, decrypt, CryptoStreamMode.Write))
                {
                    cs.Write(msg, 0, msg.Length);
                }
                buf = ms.ToArray();
            }
            return buf;
        }
        public class RSASystem
        {
            private string priKey;
            private string pubKey;
            public string PubKey
            {
                get
                {
                    return pubKey;
                }
            }
            public RSASystem()
            {
                RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
                //Public Key
                RSAParameters privateKey = RSA.Create().ExportParameters(true);
                rsa.ImportParameters(privateKey);
                priKey = rsa.ToXmlString(true);
                //Private Key
                RSAParameters publicKey = new RSAParameters();
                publicKey.Modulus = privateKey.Modulus;
                publicKey.Exponent = privateKey.Exponent;
                rsa.ImportParameters(publicKey);
                pubKey = rsa.ToXmlString(false);
            }
            public RSASystem(string pubKey)
            {
                this.pubKey = pubKey;
            }
            public string encrypt(string plainText)
            {
                RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
                rsa.FromXmlString(pubKey);

                byte[] inbuf = (new UTF8Encoding()).GetBytes(plainText);

                byte[] encbuf = rsa.Encrypt(inbuf, false);

                return System.Convert.ToBase64String(encbuf);
            }
            public string RSADecrypt(string encryptedText)
            {
                RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
                rsa.FromXmlString(priKey);

                byte[] srcbuf = System.Convert.FromBase64String(encryptedText);

                byte[] decbuf = rsa.Decrypt(srcbuf, false);

                string sDec = (new UTF8Encoding()).GetString(decbuf, 0, decbuf.Length);
                return sDec;
            }

        }
    }
}
