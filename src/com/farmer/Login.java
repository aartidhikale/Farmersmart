package com.farmer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		String email1=request.getParameter("email");
		String pass1=request.getParameter("pass");
		
		String str="select * from customer where email=? AND pass=?";
			
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/farmersmart?serverTimezone=UTC","root","");
		PreparedStatement stmt=con.prepareStatement(str);
			stmt.setString(1, email1);
			stmt.setString(2, pass1);
		ResultSet rs=stmt.executeQuery();
			
				if(rs.next())
				{
					String name=rs.getString(1);
					HttpSession session=request.getSession();
					session.setAttribute("uname", name);
					session.setAttribute("email1", email1);
					response.sendRedirect("my-account.jsp");
				}
				else
				{
					response.sendRedirect("register.html");
				}
		
			
		}
		catch(Exception e)
		{
			response.sendRedirect("register.html");
		
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
