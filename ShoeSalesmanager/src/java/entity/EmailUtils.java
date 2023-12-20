/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


/**
 *
 * @author Admin
 */
public class EmailUtils {

    public static void send(Email email)
            throws Exception {
        Properties prop = new Properties();

        prop.put("mail.smtp.host", "smtp.gmail.com");// địa chỉ smtp server của gmail
        prop.put("mail.smtp.port", "587");// cổng smtp của server là 587
        prop.put("mail.smtp.auth", "true");//sử dụng xác thức khi kết nối với server
        prop.put("mail.smtp.starttls.enable", "true");// cho phép sử dụng TLS(tranfer layer protocol) để bảo mật kết 
        /*
                Đây là một cách để cấu hình thông tin về SMTP server mà bạn sẽ sử dụng để gửi email. 
        Cụ thể, nó thiết lập các thuộc tính như địa chỉ và cổng của SMTP server, xác thực, và sử dụng TLS để bảo mật kết nối.
         */
        Session session = Session.getInstance(prop, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(email.getFrom(), email.getFromPassword());
            }
        });
        /*
        Sử dụng Session.getInstance() để tạo một phiên (session) giao tiếp với SMTP server. 
        Điều này cần thông tin xác thực để đăng nhập vào Gmail. Đây là nơi bạn cung cấp email 
        người gửi và mật khẩu tương ứng.
         */

        //Dùng để thiết lập thông tin cho email như người gửi, người nhận, tiêu đề và nội dung của email.
        try {
            Message message = new MimeMessage(session);

            message.setFrom(new InternetAddress(email.getFrom()));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email.getTo()));
            message.setSubject(email.getSubject());
            message.setContent(email.getContent(), "text/html; charset=utf-8");

            Transport.send(message);

        } catch (Exception e) {
            e.printStackTrace();

            throw e;
        }
    }
}
