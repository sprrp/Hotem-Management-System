import java.awt.EventQueue;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import net.proteanit.sql.DbUtils;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.awt.event.ActionEvent;
import javax.swing.JTable;
import javax.swing.JScrollPane;
import java.awt.Font;
import java.awt.Color;
public class Project extends JFrame 
{
	

	private static final long serialVersionUID = 1L;
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	private JPanel contentPane;
	private JTextField customer_ID;
	private JTextField First_Name;
	private JTextField Last_Name;
	private JTextField Address;
	private JTable table;
	private JTextField Phone;
	private JTextField Email;
	
	 
	
	public static void main(String[] args)
	{
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Project frame = new Project();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	
	public Project() 
	{
		setType(Type.UTILITY);
		setFont(new Font("Times New Roman", Font.BOLD, 24));
		setTitle("EMPLOYEE INFORMATION SYSTEM");
	
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 881, 452);
		contentPane = new JPanel();
		contentPane.setBackground(new Color(224, 255, 255));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("ID");
		lblNewLabel.setFont(new Font("Times New Roman", Font.BOLD, 18));
		lblNewLabel.setBounds(45, 43, 50, 19);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("First Name");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 16));
		lblNewLabel_1.setBounds(45, 88, 85, 26);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_2 = new JLabel("Last Name");
		lblNewLabel_2.setFont(new Font("Times New Roman", Font.PLAIN, 15));
		lblNewLabel_2.setBounds(45, 121, 85, 32);
		contentPane.add(lblNewLabel_2);
		
		JLabel lblNewLabel_3 = new JLabel("Address");
		lblNewLabel_3.setFont(new Font("Times New Roman", Font.PLAIN, 15));
		lblNewLabel_3.setBounds(45, 150, 70, 41);
		contentPane.add(lblNewLabel_3);

		JLabel lblNewLabel_4 = new JLabel("Phone");
		lblNewLabel_4.setFont(new Font("Times New Roman", Font.PLAIN, 16));
		lblNewLabel_4.setBounds(45, 187, 50, 42);
		contentPane.add(lblNewLabel_4);
		
		JLabel lblNewLabel_5 = new JLabel("Email");
		lblNewLabel_5.setFont(new Font("Times New Roman", Font.PLAIN, 16));
		lblNewLabel_5.setBounds(45, 239, 70, 26);
		contentPane.add(lblNewLabel_5);
		
		
		customer_ID = new JTextField();
		customer_ID.setFont(new Font("Times New Roman", Font.PLAIN, 16));
		customer_ID.setBounds(140, 43, 93, 19);
		contentPane.add(customer_ID);
		customer_ID.setColumns(10);
		
		First_Name = new JTextField();
		First_Name.setFont(new Font("Times New Roman", Font.PLAIN, 14));
		First_Name.setBounds(140, 92, 130, 19);
		contentPane.add(First_Name);
		First_Name.setColumns(10);
		
		Last_Name = new JTextField();
		Last_Name.setFont(new Font("Times New Roman", Font.PLAIN, 14));
		Last_Name.setBounds(140, 128, 130, 19);
		contentPane.add(Last_Name);
		Last_Name.setColumns(10);
		
		Address = new JTextField();
		Address.setFont(new Font("Times New Roman", Font.PLAIN, 14));
		Address.setBounds(140, 161, 175, 19);
		contentPane.add(Address);
		Address.setColumns(10);
			
		Phone = new JTextField();
		Phone.setFont(new Font("Times New Roman", Font.PLAIN, 14));
		Phone.setBounds(140, 200, 175, 19);
		contentPane.add(Phone);
		Phone.setColumns(10);
		
		Email = new JTextField();
		Email.setFont(new Font("Times New Roman", Font.PLAIN, 14));
		Email.setBounds(132, 244, 183, 19);
		contentPane.add(Email);
		Email.setColumns(10);
	
		// The below is the part of inserting the database	
		
		JButton btnNewButton = new JButton("Insert");
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 15));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) 
			{
				try
				{
					String st="INSERT INTO project.customer"
							+"(customer_ID, First_Name, Last_Name, Address, Phone, Email)"
							+"VALUES (?, ?, ?, ?, ?,?)";
					    Class.forName("com.mysql.cj.jdbc.Driver");
			            System.out.println("Connected to MySQL");
			 			 String userName= "root";
						 String password="toor";
						 String url= "jdbc:mysql://localhost:3306/project";
						 con= DriverManager.getConnection(url,userName,password);
						 System.out.println("\n Database Connection Established....");
						  pst= con.prepareStatement(st);
						  pst.setString(1,customer_ID.getText());
						  pst.setString(2,First_Name.getText());
						  pst.setString(3,Last_Name.getText());
						  pst.setString(4,Address.getText());
						  pst.setString(5,Phone.getText());
						  pst.setString(6,Email.getText());
						  pst.executeUpdate();
						  JOptionPane.showMessageDialog(null, "Inserted Successful");
				}
						  catch (Exception ex)
					        {
					           JOptionPane.showMessageDialog(null, ex);
					        }
						 
			}
		});
		btnNewButton.setBounds(10, 305, 85, 21);
		contentPane.add(btnNewButton);
		
		//The below is the delete part of the Database where we use the customer id as the key for deleting the data
		
		JButton btnNewButton_1 = new JButton("Delete");
		btnNewButton_1.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnNewButton_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) 
			{
			
			
			try
			{
				 String st="DELETE FROM customer WHERE customer_ID = ? ";
				 Class.forName("com.mysql.cj.jdbc.Driver");
		         String userName= "root";
		     	 String password="toor";
				 String url= "jdbc:mysql://localhost:3306/project";
				 con= DriverManager.getConnection(url,userName,password);
				 System.out.println("\n Database Connection Established....");
				 pst= con.prepareStatement(st);
				 pst.setString(1,customer_ID.getText());
				 pst.executeUpdate();
				JOptionPane.showMessageDialog(null, "Deleted Successful");
			}
			
			catch (Exception ex)
			{
			        JOptionPane.showMessageDialog(null, ex);
			}
					 
		}
				
			
		});
		btnNewButton_1.setBounds(115, 305, 96, 21);
		contentPane.add(btnNewButton_1);
	
		//The below is the Part where we can update the database,
		//just we need to know which Id we are going to update other information.
		JButton btnNewButton_2 = new JButton("Update");
		btnNewButton_2.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnNewButton_2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) 
			{
				try
				{
					String st="update project.customer set First_Name=?, Last_Name=?,Address=?, Phone=?, Email=? where customer_ID=?";
					Class.forName("com.mysql.cj.jdbc.Driver");
		            System.out.println("Connected to MySQL");
		 			 String userName= "root";
					 String password="toor";
					 String url= "jdbc:mysql://localhost:3306/project";
					 con= DriverManager.getConnection(url,userName,password);
					 System.out.println("\n Database Connection Established....");
					  pst= con.prepareStatement(st);
					  pst.setString(6,customer_ID.getText());
					  pst.setString(1,First_Name.getText());
					  pst.setString(2,Last_Name.getText());
					  pst.setString(3,Address.getText());
					  pst.setString(4,Phone.getText());
					  pst.setString(5,Email.getText());
					  pst.executeUpdate();
					  JOptionPane.showMessageDialog(null, "Updated Successful");
				}
						  catch (Exception ex)
					        {
					           JOptionPane.showMessageDialog(null, ex);
					        }
				
						 
			
			}
		});
		btnNewButton_2.setBounds(219, 305, 96, 21);
		contentPane.add(btnNewButton_2);
		
		//The below is  table part, we can see all the list of the customers list.
		JButton btnNewButton_3 = new JButton("Show Table");
		btnNewButton_3.setFont(new Font("Times New Roman", Font.BOLD, 16));
		btnNewButton_3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) 
			{
				try
				{
					String st="SELECT customer_ID, First_Name,Last_Name,Address\r\n" + 
							"FROM project.customer;";
					 Class.forName("com.mysql.cj.jdbc.Driver");
			         String userName= "root";
			     	 String password="toor";
					 String url= "jdbc:mysql://localhost:3306/project";
					 con= DriverManager.getConnection(url,userName,password);
					 System.out.println("\n Database Connection Established....");
					 pst = con.prepareStatement(st);
					 rs=pst.executeQuery();
					 table.setModel(DbUtils.resultSetToTableModel(rs));
				 }
				
				catch (Exception ex)
				{
					  JOptionPane.showMessageDialog(null, ex);
				}
				
			
			}
		});
		btnNewButton_3.setBounds(554, 22, 117, 21);
		contentPane.add(btnNewButton_3);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(325, 62, 532, 328);
		contentPane.add(scrollPane);
		
		table = new JTable();
		scrollPane.setViewportView(table);
		
		
		 
	 
		
	}
}
	