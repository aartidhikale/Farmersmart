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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String email1=request.getParameter("email");
		String pass1=request.getParameter("pass");
		HttpSession session=request.getSession();
		try{
			if(email1.equals("admin@gmail.com")&& pass1.equals("admin@123"))
			{
				try
				{
					Class.forName("com.mysql.cj.jdbc.Driver");
					
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/farmersmart?serverTimezone=UTC","root","");
					
					String s="Select total from income";
					String s1="Select * from customer";
					Statement stmt1=con.createStatement();
					ResultSet rs,re;
					rs=stmt1.executeQuery(s);
			
					int income=0;
					int count=0;
					while(rs.next())
					{
						
						income+=rs.getInt("total");
					}
					session.setAttribute("income", income);
					re=stmt1.executeQuery(s1);
					while(re.next())
				{
					
					count++;
				}
				
					
					session.setAttribute("count", count);
				}catch(Exception e)
				{
					out.print(e);
				}
			response.sendRedirect("Admindash.jsp");
			}
			else
			{
				response.sendRedirect("adminlogin.html");
			}
		}
	catch(Exception e)
		{
		System.out.println(e);
		}
		
		
		//String str="select * from customer where email=? AND pass=?";
			
		
				
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
