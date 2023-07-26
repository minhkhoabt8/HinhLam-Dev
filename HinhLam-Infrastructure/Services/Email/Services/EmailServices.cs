using System.Net.Mail;
using System.Net;
using HinhLam_DataObject.ViewModel;
using HinhLam_Infrastructure.Services.Email.Repositories;
using Microsoft.Extensions.Options;
using Microsoft.Extensions.Configuration;
using System.IO;

namespace HinhLam_Infrastructure.Services.Email.Services
{
    public class EmailServices : IEmailServices
    {
        private readonly EmailSettings _emailSettings;
        private readonly IConfiguration _configuration;
        public EmailServices(IOptions<EmailSettings> emailSettings , IConfiguration configuration)
        {
            _emailSettings = emailSettings.Value;
            _configuration = configuration;
        }


        public async Task SendEmailAsync(EmailViewModel email)
        {
            try
            {
                MailMessage message = new MailMessage
                {
                    From = new MailAddress(_configuration["HinhLamMailSettings:HinhLamEmail"]),
                    Subject = email.Subject,
                    Body = email.Text,
                    IsBodyHtml = true,
                     
                };

                message.To.Add(email.To);

                message.CC.Add("support@hinhlam.com");

                if (email.Attachment != null)
                {
                    MemoryStream stream = new MemoryStream();

                    await email.Attachment.CopyToAsync(stream);
                    stream.Seek(0, SeekOrigin.Begin); // Reset the position to the beginning of the stream

                    Attachment fileAttachment = new Attachment(stream, email.Attachment.FileName, email.Attachment.ContentType);
                    message.Attachments.Add(fileAttachment);
                }

                using (SmtpClient smtpClient = new SmtpClient(_emailSettings.SmtpServer, _emailSettings.Port))
                {
                    smtpClient.UseDefaultCredentials = false;
                    smtpClient.Credentials = new NetworkCredential(_emailSettings.UserName, _emailSettings.Password);
                    smtpClient.EnableSsl = true;
                    await smtpClient.SendMailAsync(message);
                    
                }   
            }
            catch (Exception ex)
            {
                Console.WriteLine(" Error sending email: " + ex.Message);
               
            }
        }

    }
}
