package com.farmer;

import java.io.FileWriter;
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
 * Servlet implementation class Generatereport
 */
@WebServlet("/Generatereport")
public class Generatereport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Generatereport() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		int flag=0;
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/farmersmart?serverTimezone=UTC","root","");
		
		String s="Select * from customer";
		Statement stmt1=con.createStatement();
		ResultSet rs =stmt1.executeQuery(s);
		
		 try{
			 
		 
		FileWriter fw=new FileWriter("C:/Users/abc/Desktop/report1.txt");
	
	
			
		String line="Firstname  LastName                         email                 Mobno                                city                    pincode";
		 fw.write(line);
		 fw.write("\n");
		while(rs.next())
		{
		    String fname=rs.getString(1);
		    String lname=rs.getString(2);
		    String email=rs.getString(3);
		    String mob_no=rs.getString(4);
		   
		    String city=rs.getString(5);
		    String pincode=rs.getString(6);
		    flag=1;

		 line=fname+"         "+lname+"                    "+email+"                               "+mob_no+"                        "+city+"              "+pincode;
		 fw.write(line);
		 fw.write("\n");
		    
	     
	      
	      
		}
		fw.close();
		 }catch(Exception e)
		 {
			 out.println(e);
		 }
		
	
		}
		catch(Exception e)
		{
			out.println("Error");
		}
		if(flag==1)
		{
		 response.sendRedirect("blank1.html");
		}
		else
		{
			response.sendRedirect("4041.html");
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
