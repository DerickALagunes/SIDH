package mx.edu.utez.sidh.utils;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import mx.edu.utez.sidh.bean.Usuario;

/**
 *
 * @author Derick
 */
public class EnviarCorreo {

    public void enviarA(Usuario usuario) {

        final String username = "sistema.sidh@gmail.com";
        final String password = "sistemasidh2017";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("sistema.sidh@gmail.com"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(usuario.getEmail()));
            message.setSubject("Recordatorio, llena tu disponibilidad para este periodo!");
            message.setText("Buen día "+usuario.getNombre()+" "+usuario.getApellidoPaterno()+","
                    + "\n\n Le recordamos que aun no ha indicado su disponibilidad para el nuevo cuatrimestre");

            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

}
