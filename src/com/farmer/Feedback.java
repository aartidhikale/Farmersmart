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
 * Servlet implementation class Feedback
 */
@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Feedback() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String email=request.getParameter("email");

		String subject=request.getParameter("subject");
		String msg=request.getParameter("msg");
		PrintWriter out=response.getWriter();
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/farmersmart?serverTimezone=UTC","root","");
			String str="INSERT INTO feedback " + " (name,email,subject,msg) values (?,?,?,?)";
			PreparedStatement stmt=con.prepareStatement(str);
			
			stmt.setString(1,name);
			stmt.setString(2,email);
			stmt.setString(3,subject);
			stmt.setString(4,msg);
			
			int c=stmt.executeUpdate();
	        
			
			if(c==1){
				response.sendRedirect("Feedback.html");
			
			}
			else
			{
		
				response.sendRedirect("Error.html");

			}
			
			
		}catch(Exception e)
		{
			out.println("<html><body bgcolor='pink' ><center><br><br><h1>Error....</h1></center></body></html>");
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
