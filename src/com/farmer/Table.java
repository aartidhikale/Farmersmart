package com.farmer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Table
 */
@WebServlet("/Table")
public class Table extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Table() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/farmersmart?serverTimezone=UTC","root","");
		
		String s="Select * from customer";
		String s1="select * from feedback";
		String s2="select * from payment";
		Statement stmt1=con.createStatement();
		ResultSet rs,rs1,rs2;
		rs=stmt1.executeQuery(s);
		out.println("<body bgcolor='pink'>");
		out.println("<button color='white' autofocus padding='50px 32px'><a href='Admindash.jsp'>Back</a></button>");
		out.println("<center><font size='20' color='yellow'>Total Customer</font></center>");
		out.println("<br><hr><br><br>");
		out.println("<center><table border='1' bgcolor='##ffcc99' width='50%'><tr><th>Fname</th><th>Lname</th><th>email</th><th>Mob_no</th><th>city</th><th>pincode</th></tr>");
		while(rs.next())
		{
		    String fname=rs.getString(1);
		    String lname=rs.getString(2);
		    String email=rs.getString(3);
		    String mob_no=rs.getString(4);

		    String city=rs.getString(6);
		    String pincode=rs.getString(7);
		  
		 
		    
	      out.print("<tr><td>"+fname+"</td><td>"+lname+"</td><td>"+email+"</td><td>"+mob_no+"</td><td>"+city+"</td><td>"+pincode+"</td></tr>");
	      
	      
		}
		out.println("</table></center>");
		
		Statement stmt2=con.createStatement();
		
		rs1 =stmt2.executeQuery(s1);
		out.println("<body bgcolor='pink'>");

		out.println("<center><font size='20' color='Red'>FeedBack </font></center>");
		out.println("<br><hr><br><br>");
		out.println("<center><table border='1' bgcolor='white' width='50%'><tr><th>name</th><th>email</th><th>subject</th><th>Message</th></tr>");
		while(rs1.next())
		{
		    String name=rs1.getString(1);
		    String email=rs1.getString(2);
		    String subject=rs1.getString(3);
		    String message=rs1.getString(4);

		  
		  
		 
		    
	      out.print("<tr><td>"+name+"</td><td>"+email+"</td><td>"+subject+"</td><td>"+message+"</td></tr>");
	      
	      
		}
		out.println("</table></center>");
		try{
		
       Statement stmt3=con.createStatement();
		
		rs2 =stmt3.executeQuery(s2);
		

		out.println("<center><font size='20' color='Red'>Payment Details </font></center>");
		out.println("<br><hr><br><br>");
		out.println("<center><table border='1' bgcolor='orange' width='50%'><tr><th>fname</th><th>lname</th><th>email</th><th>address</th><th>Payment Method</th></tr>");
		while(rs2.next())
		{
			 
			  
		    String fname=rs2.getString(1);
		    String lname=rs2.getString(2);
		    String email=rs2.getString(9);
		    String address=rs2.getString(3);
		    String paymentm=rs2.getString(4);

		
		 
		    
	      out.print("<tr><td>"+fname+"</td><td>"+lname+"</td><td>"+email+"</td><td>"+address+"</td><td>"+paymentm+"</td></tr>");
	      
	      
		}
		out.println("</table></center>");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	con.close();
		}
		catch(Exception e)
		{
			out.print(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
