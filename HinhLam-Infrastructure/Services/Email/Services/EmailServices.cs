using HinhLam_DataObject.ViewModel;
using HinhLam_Infrastructure.Services.Email.Repositories;
using Microsoft.Extensions.Options;
using Microsoft.Extensions.Configuration;
using MimeKit;
using MimeKit.Utils;


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

            var mimeemail = new MimeMessage();
            mimeemail.From.Add(MailboxAddress.Parse(_emailSettings.From));
            mimeemail.To.Add(MailboxAddress.Parse(email.To));
            mimeemail.Subject = email.Subject;
            var ccRecipients = _configuration["HinhLamMailSettings:CC"];
            if (!string.IsNullOrEmpty(ccRecipients))
            {
                foreach (var ccRecipient in ccRecipients.Split(','))
                {
                    mimeemail.Cc.Add(MailboxAddress.Parse(ccRecipient.Trim()));
                }
            }
            var builder = new BodyBuilder();

            
            if (email.Attachment != null)
            {
                var stream = new MemoryStream();
                await email.Attachment.CopyToAsync(stream);
                stream.Position = 0;
                builder.Attachments.Add(email.Attachment.FileName, stream);
                // You can also add inline image resources in the email if needed.
                // For example, if your email text contains image placeholders and you want to display images inline.
                // var image = builder.LinkedResources.Add(email.ImagePath);
                // image.ContentId = MimeUtils.GenerateMessageId();
                // builder.HtmlBody = string.Format(email.Text, image.ContentId);
                builder.HtmlBody = email.Text;
            }
            else
            {
                builder.HtmlBody = email.Text;
            }

            mimeemail.Body = builder.ToMessageBody();
           
            using (var client = new MailKit.Net.Smtp.SmtpClient())
            {
                try
                {
                    await client. ConnectAsync(_emailSettings.SmtpServer, _emailSettings.Port);
                    await client.AuthenticateAsync(_emailSettings.UserName, _emailSettings.Password);
                    await client.SendAsync(mimeemail);
                    
                }
                catch(Exception ex)
                {
                    Console.WriteLine(ex);
                }
                finally
                {
                    await client.DisconnectAsync(true);
                    client.Dispose();
                }
            };
            
        }

    }
}
