package com.farmer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


@WebServlet("/Register")
public class Register extends HttpServlet {
       
	
	
	
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname1=request.getParameter("fname");
		String lname1=request.getParameter("lname");

		String pass1=request.getParameter("pass");
		String mob_no1=request.getParameter("mob_no");
		String email1=request.getParameter("email");
		String city1=request.getParameter("city");
		String pincode1=request.getParameter("pincode");

		String str="INSERT INTO customer " + " (fname,lname,pass,mob_no,email,city,pincode) values (?,?,?,?,?,?,?)";
		PrintWriter out=response.getWriter();
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/farmersmart?serverTimezone=UTC","root","");
				PreparedStatement stmt=con.prepareStatement(str);
		//int c=stmt.executeUpdate(str);
		stmt.setString(1,fname1);
		stmt.setString(2,lname1);
		stmt.setString(3,pass1);
		stmt.setString(4,mob_no1);
		stmt.setString(5,email1);
		stmt.setString(6,city1);
		stmt.setString(7,pincode1);
		
		int c=stmt.executeUpdate();

		
		if(c==1){
				response.sendRedirect("login.html");
		}
		else
		{
			response.sendRedirect("register.html");

		}
		
		
		con.close();
		
		}
	
	catch(Exception e)
	{
		System.out.println(e);
	}

	}

		
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
