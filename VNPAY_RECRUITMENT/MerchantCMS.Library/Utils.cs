using System;
using System.Globalization;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;

namespace Payment.Library
{
    public class Utils
    {
        public static string RandomString(int size)
        {
            return Guid.NewGuid().ToString().Replace("-", "").Substring(0, size).ToLower();
        }
        public static string SignMd5(string data)
        {
            var enCoder = new UTF8Encoding();
            byte[] valueByteArr = enCoder.GetBytes(data);
            HashAlgorithm algorithmType = new MD5CryptoServiceProvider();
            byte[] hashArray = algorithmType.ComputeHash(valueByteArr);
            var sb = new StringBuilder();
            foreach (byte b in hashArray)
            {
                sb.AppendFormat("{0:x2}", b);
            }
            return sb.ToString();
        }
        public static int IsInt(object input)
        {
            int n;
            return int.TryParse(input.ToString(), out n) ? n : 0;
        }

        public static float IsFloat(object input)
        {
            float n;
            var isNumeric = float.TryParse(input.ToString(), out n);
            return isNumeric ? Convert.ToInt32(input) : 0;
        }

        public static DateTime IsDateTime(object input)
        {
            DateTime val;
            return DateTime.TryParse(input.ToString(), out val) ? val : DateTime.MinValue;
        }

        public static string FormatDateTime(object dt)
        {
            return string.Format("{0:dd/MM/yyyy | HH:mm}", dt);
        }


        public static string GetAlias(string strInputHtml)
        {

            //Modified by xonv
            //Date: 10/09/2011
            //Desc: Remove Unicode sign to Ascii

            StringBuilder sb = new StringBuilder();
            string sTemp = StandardWord(strInputHtml);
            // sTemp = HttpContext.Current.Server.HtmlDecode(HTML);
            sTemp = sTemp.Replace("&", " ");
            sTemp = Regex.Replace(sTemp, "Đ|&#273;", "D");
            sTemp = Regex.Replace(sTemp, "đ|&#272;", "d");
            sTemp = Regex.Replace(sTemp, "-", " ");
            sTemp = sTemp.Trim();
            // normalize the Unicode
            sTemp = sTemp.Normalize(NormalizationForm.FormD);

            for (int i = 0; i < sTemp.Length; i++)
            {
                char currentChar = sTemp[i];

                if (char.IsWhiteSpace(currentChar) || currentChar == '.')
                {
                    sb.Append('-');
                }
                else if (char.GetUnicodeCategory(currentChar) != UnicodeCategory.NonSpacingMark && !char.IsPunctuation(currentChar) && !char.IsSymbol(currentChar) &&
                         currentChar < 128)
                {
                    sb.Append(currentChar);
                }
            }

            return sb.ToString();

        }

        public static string StandardWord(string strInput)
        {

            var strTemp = strInput.Trim().Replace("-", " ");

            if (strTemp.Length > 0)
            {
                while (strTemp.IndexOf("  ") > 0)
                {
                    strTemp = strTemp.Replace("  ", " ");
                    strTemp = strTemp.Trim();
                }
            }
            return strTemp;

        }

        public static string Send(string fromEmail, string fromPassword, string fromName, string toEmail, string toName, string subject, string body)
        {
            string rs = "";
            try
            {
                var fromAddress = new MailAddress(fromEmail, fromName);
                var toAddress = new MailAddress(toEmail, toName);

                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new System.Net.NetworkCredential(fromAddress.Address, fromPassword)
                };

                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    BodyEncoding = System.Text.Encoding.UTF8,
                    IsBodyHtml = true,
                    SubjectEncoding = System.Text.Encoding.UTF8,
                    Subject = subject,
                    Body = body
                })
                {
                    smtp.Send(message) ;
                }

                rs = "00";
            }
            catch (Exception)
            {
                rs = "01";
            }

            return rs;
        }

        public static string AntiScripTag(string input)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(input, "script"))
            {
                throw new HttpException(500, "Potantially malicious Request.QueryString detected.");
            }
            else
            {
                return input;
            }
        }
    }
}