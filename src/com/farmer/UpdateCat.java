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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UpdateCat
 */
@WebServlet("/UpdateCat")
public class UpdateCat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCat() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(false);
		String uname=(String)session.getAttribute("email1");
		
		PrintWriter out=response.getWriter();
	
		try{
			
			String one,two,three,four,five,six,seven,eight,nine;	
			if(request.getParameter("spongegourd")==null)
			{
				 one="empty";
				
				
			}
			else
			{
				one=request.getParameter("spongegourd");
				
			
			}
			
			
			if(request.getParameter("tomatoes")==null)
			{
				 two="empty";
			
				
			}
			else
			{
				two=request.getParameter("tomatoes");

			}
			
			if(request.getParameter("pepper")==null)
			{
				 three="empty";
				
			}
			else
			{
				three=request.getParameter("pepper");

			}
			if(request.getParameter("apple")==null)
			{
				 four="empty";
				
				
			}
			else
			{
				four=request.getParameter("apple");
				
			
			}
			if(request.getParameter("banana")==null)
			{
				 five="empty";
				
				
			}
			else
			{
				five=request.getParameter("banana");
				
			
			}
			if(request.getParameter("greenpeas")==null)
			{
				 six="empty";
				
				
			}
			else
			{
				six=request.getParameter("greenpeas");
				
			
			}
			if(request.getParameter("Cauliflower")==null)
			{
				 seven="empty";
				
				
			}
			else
			{
				seven=request.getParameter("Cauliflower");
				
			
			}
			if(request.getParameter("Watermelon")==null)
			{
				 eight="empty";
				
				
			}
			else
			{
				eight=request.getParameter("Watermelon");
				
			
			}
			if(request.getParameter("orange")==null)
			{
				 nine="empty";
				
				
			}
			else
			{
				nine=request.getParameter("orange");
				
			
			}

			
			String str="UPDATE cart SET spongegourd=? ,tomatoes=?,pepper=?,apple=?,banana=?,greenpeas=?,Cauliflower=?,Watermelon=?,orange=? WHERE username=?";
			
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/farmersmart?serverTimezone=UTC","root","");
					PreparedStatement stmt=con.prepareStatement(str);
			//int c=stmt.executeUpdate(str);
			
			stmt.setString(1,one);
			stmt.setString(2,two);
			stmt.setString(3,three);
			stmt.setString(4,four);
			stmt.setString(5,five);
			stmt.setString(6,six);
			stmt.setString(7,seven);
			stmt.setString(8,eight);
			stmt.setString(9,nine);
			stmt.setString(10,uname);
			
			
			int c=stmt.executeUpdate();
			response.sendRedirect("CartUpdateSucess.html");
			}catch(Exception e)
				{
				e.printStackTrace();
				//response.sendRedirect("Error.html");
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
