package com.farmer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Cart
 */
@WebServlet("/Cart")
public class Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(false);
		String email=(String)session.getAttribute("email1");
		PrintWriter out=response.getWriter();
		String str="select * from cart where username=? ";
		HttpSession session1=request.getSession();
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/farmersmart?serverTimezone=UTC","root","");
		PreparedStatement stmt=con.prepareStatement(str);
			stmt.setString(1, email);
			
		ResultSet rs=stmt.executeQuery();
			
		           out.print("Cart is :");
				if(rs.next())
				{
					String uname=rs.getString(1);
					session1.setAttribute("uname", uname);
					String cart1=rs.getString(2);
					if(cart1.equals("empty"))
					{
						session1.setAttribute("cart1",cart1);
					}
					else
					{
						session1.setAttribute("cart1",cart1);
					}
					
					String cart2=rs.getString(3);
					if(cart2.equals("empty"))
					{
						session1.setAttribute("cart2",cart2);
					}
					else
					{session1.setAttribute("cart2",cart2);}
					
					String cart3=rs.getString(4);
					
					if(cart3.equals("empty"))
					{
						session1.setAttribute("cart3",cart3);
					}
					else
			    	{session1.setAttribute("cart3",cart3);}
                      String cart4=rs.getString(5);
					
					if(cart4.equals("empty"))
					{
						session1.setAttribute("cart4",cart4);
					}
					else
			    	{session1.setAttribute("cart4",cart4);}
					 String cart5=rs.getString(6);
						
						if(cart5.equals("empty"))
						{
							session1.setAttribute("cart5",cart5);
						}
						else
				    	{session1.setAttribute("cart5",cart5);}
						
						 String cart6=rs.getString(7);
							
							if(cart6.equals("empty"))
							{
								session1.setAttribute("cart6",cart6);
							}
							else
					    	{session1.setAttribute("cart6",cart6);}	
							 String cart7=rs.getString(8);
								
								if(cart7.equals("empty"))
								{
									session1.setAttribute("cart7",cart7);
								}
								else
						    	{session1.setAttribute("cart7",cart7);}	
								 String cart8=rs.getString(9);
									
									if(cart8.equals("empty"))
									{
										session1.setAttribute("cart8",cart8);
									}
									else
							    	{session1.setAttribute("cart8",cart8);}
									
									 String cart9=rs.getString(10);
										
										if(cart9.equals("empty"))
										{
											session1.setAttribute("cart9",cart9);
										}
										else
								    	{session1.setAttribute("cart9",cart9);}
					response.sendRedirect("Yourcart.jsp");
				}
				else
				{
					response.sendRedirect("my-account.jsp");
				}
		
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		
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
