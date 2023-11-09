package dao;

import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.image.BufferedImage;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import com.github.sarxos.webcam.Webcam;
import com.github.sarxos.webcam.WebcamPanel;
import com.github.sarxos.webcam.WebcamResolution;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;

public class Test extends JFrame implements Runnable,ThreadFactory{

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private WebcamPanel camPanel = null;
	private Webcam webcam = null;
	private JPanel PanelCam;
	private ExecutorService executor = Executors.newSingleThreadExecutor();
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Test frame = new Test();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public Test() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 651, 506);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBounds(0, 0, 635, 467);
		contentPane.add(panel);
		panel.setLayout(null);
		
		JPanel PanelCam = new JPanel();
		PanelCam.setBounds(73, 43, 469, 276);
		panel.add(PanelCam);
		Dimension size = WebcamResolution.QVGA.getSize();
		webcam = Webcam.getWebcams().get(0);
		webcam.setViewSize(size);
		
		camPanel = new WebcamPanel(webcam);
		camPanel.setPreferredSize(size);
		camPanel.setFPSDisplayed(true);
		PanelCam.add(camPanel);
		executor.execute(this);
//		initWebcam();
	}
	public void initWebcam() {
		Dimension size = WebcamResolution.QVGA.getSize();
		webcam = Webcam.getWebcams().get(0);
		webcam.setViewSize(size);
		
		camPanel = new WebcamPanel(webcam);
		camPanel.setPreferredSize(size);
		camPanel.setFPSDisplayed(true);
		PanelCam.add(camPanel);
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		do {
			try {
				Thread.sleep(100);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Result result = null;
			BufferedImage image = null;
			if(webcam.isOpen()) {
				if((image = webcam.getImage()) == null) {
					continue;
				}
				LuminanceSource source = new BufferedImageLuminanceSource(image);
				BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));
				
				try {
					result = new MultiFormatReader().decode(bitmap);
				} catch (NotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if(result != null) {
					System.out.println(result.getText());
				}
			}
		} while (true);
	}
	@Override
	public Thread newThread(Runnable r) {
		Thread t = new Thread(r, "Thread");
		t.setDaemon(true);
		return t;
	}
}
