import javax.swing.*;
import javax.swing.border.EmptyBorder;
import java.awt.*;

public class Main {
    public static void main(String[] args) {
        SwingUtilities.invokeLater(Main::criarTelaBemVindo);
    }

    private static void criarTelaBemVindo() {
        JFrame frame = new JFrame("Bem-vindo");
        frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        frame.setSize(480, 300);
        frame.setLocationRelativeTo(null);

        JPanel painel = new JPanel();
        painel.setLayout(new BoxLayout(painel, BoxLayout.Y_AXIS));
        painel.setBorder(new EmptyBorder(24, 24, 24, 24));
        painel.setBackground(new Color(245, 248, 255));

        JLabel titulo = new JLabel("Bem-vindo!");
        titulo.setAlignmentX(Component.CENTER_ALIGNMENT);
        titulo.setFont(new Font("SansSerif", Font.BOLD, 30));
        titulo.setForeground(new Color(37, 56, 88));

        JLabel subtitulo = new JLabel("Vamos começar sua jornada por aqui.");
        subtitulo.setAlignmentX(Component.CENTER_ALIGNMENT);
        subtitulo.setFont(new Font("SansSerif", Font.PLAIN, 16));
        subtitulo.setForeground(new Color(68, 86, 120));

        JButton botaoComecar = new JButton("Começar");
        botaoComecar.setAlignmentX(Component.CENTER_ALIGNMENT);
        botaoComecar.setFont(new Font("SansSerif", Font.BOLD, 16));
        botaoComecar.setFocusPainted(false);
        botaoComecar.setBackground(new Color(72, 118, 255));
        botaoComecar.setForeground(Color.WHITE);
        botaoComecar.setOpaque(true);
        botaoComecar.setBorder(BorderFactory.createEmptyBorder(10, 26, 10, 26));

        JLabel mensagemAcao = new JLabel(" ");
        mensagemAcao.setAlignmentX(Component.CENTER_ALIGNMENT);
        mensagemAcao.setFont(new Font("SansSerif", Font.ITALIC, 14));
        mensagemAcao.setForeground(new Color(37, 56, 88));

        botaoComecar.addActionListener(e -> mensagemAcao.setText("Tudo pronto! Agora você pode seguir para a próxima etapa."));

        painel.add(titulo);
        painel.add(Box.createRigidArea(new Dimension(0, 10)));
        painel.add(subtitulo);
        painel.add(Box.createRigidArea(new Dimension(0, 24)));
        painel.add(botaoComecar);
        painel.add(Box.createRigidArea(new Dimension(0, 18)));
        painel.add(mensagemAcao);

        frame.setContentPane(painel);
        frame.setVisible(true);
    }
}
