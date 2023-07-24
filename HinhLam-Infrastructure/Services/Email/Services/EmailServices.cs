using System.Net.Mail;
using System.Net;
using HinhLam_DataObject.ViewModel;
using HinhLam_Infrastructure.Services.Email.Repositories;
using Microsoft.Extensions.Options;


namespace HinhLam_Infrastructure.Services.Email.Services
{
    public class EmailServices : IEmailServices
    {
        private readonly EmailSettings _emailSettings;
        public EmailServices(IOptions<EmailSettings> emailSettings)
        {
            _emailSettings = emailSettings.Value;
        }


        public void SendEmail(EmailViewModel email)
        {
            MailMessage message = new MailMessage
            {
                From = new MailAddress(_emailSettings.From),
                Subject = email.Subject,
                Body = email.Text,
                IsBodyHtml = true // Set this to true if the email body contains HTML
            };
            message.To.Add(email.To);

            if (!string.IsNullOrEmpty(email.ImagePath))
            {
                Attachment imageAttachment = new Attachment(email.ImagePath);
                message.Attachments.Add(imageAttachment);
            }

            using (SmtpClient smtpClient = new SmtpClient(_emailSettings.SmtpServer, _emailSettings.Port))
            {
                smtpClient.Credentials = new NetworkCredential(_emailSettings.UserName, _emailSettings.Password);
                smtpClient.EnableSsl = true;
                smtpClient.Send(message);
            }
        }




    }
}
