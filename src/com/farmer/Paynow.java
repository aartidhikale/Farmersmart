package com.farmer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Paynow
 */
@WebServlet("/Paynow")
public class Paynow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Paynow() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname1=request.getParameter("fname");
		String lname1=request.getParameter("lname");
        String address=request.getParameter("address");
		String paymentm=request.getParameter("paymentMethod");
		String nameoncard=request.getParameter("nameoncard");
		String numberoncard=request.getParameter("numberoncard");
		String expiry=request.getParameter("expiry");
		String cvv=request.getParameter("cvv");
		String email=request.getParameter("email");
		String str="INSERT INTO payment " + " (fname,lname,address,paymentm,nameoncard,numberoncard,expiry,cvv,email) values (?,?,?,?,?,?,?,?,?)";
		PrintWriter out=response.getWriter();
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/farmersmart?serverTimezone=UTC","root","");
				PreparedStatement stmt=con.prepareStatement(str);
		//int c=stmt.executeUpdate(str);
		stmt.setString(1,fname1);
		stmt.setString(2,lname1);
		stmt.setString(3,address);
		stmt.setString(4,paymentm);
		stmt.setString(5,nameoncard);
		stmt.setString(6,numberoncard);
		stmt.setString(7,expiry);
		stmt.setString(8,cvv);
		stmt.setString(9,email);
		int c=stmt.executeUpdate();

		
		if(c==1){
			response.sendRedirect("Orderdone.html");
		}
		else
		{
			out.println("4041.html");

		}
		
		
		con.close();
		
		}
	
	catch(Exception e)
	{
		System.out.println(e);
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
