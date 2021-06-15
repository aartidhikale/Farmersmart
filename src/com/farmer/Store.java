package com.farmer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Store
 */
@WebServlet("/Store")
public class Store extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Store() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		String uname=(String)session.getAttribute("email1");
		
		PrintWriter out=response.getWriter();
		
		
		//int c=stmt.executeUpdate(str);
		
		
	
		  HttpSession session1=request.getSession();
		  session1.setAttribute("uname", uname);
		try{
	
	
	int one,am1;
	int two,am2;
	int three,am3;	
	int four,am4;
	int five,am5;
	int six,am6;
	int seven,am7;
	int eight,am8;
	int nine,am9;
	
	
	if(request.getParameter("spongegourd")==null)
	{
		 one=0;
		 am1=0;
		
		
		
	}
	else
	{
		one=Integer.parseInt(request.getParameter("spongegourd"));
		am1=Integer.parseInt(request.getParameter("Amount1"));
		session1.setAttribute("spongegourd", am1);
		
	}
	
	if(request.getParameter("tomatoes")==null)
	{
		 two=0;
		 am2=0;

	
		
	}
	else
	{
		two=Integer.parseInt(request.getParameter("tomatoes"));
		am2=Integer.parseInt(request.getParameter("Amount2"));
		session1.setAttribute("tomatoes", am2);
		
		
		
		

	}
	
	if(request.getParameter("pepper")==null)
	{
		 three=0;
		 am3=0;
	
		
	}
	else
	{
		three=Integer.parseInt(request.getParameter("pepper"));
		am3=Integer.parseInt(request.getParameter("Amount4"));
		session1.setAttribute("pepper", am3);
		

	}

	if(request.getParameter("apple")==null)
	{
		 four=0;
		 am4=0;
	 
		
	}
	else
	{
		four=Integer.parseInt(request.getParameter("apple"));
		am4=Integer.parseInt(request.getParameter("Amount4"));
		session1.setAttribute("apple", am4);
		

	}
	
	if(request.getParameter("banana")==null)
	{
		 five=0;
		 am5=0;
	
		
		
	}
	else
	{
		five=Integer.parseInt(request.getParameter("banana"));
		am5=Integer.parseInt(request.getParameter("Amount5"));
		session1.setAttribute("banana", am5);
		
	}
	
	if(request.getParameter("greenpeas")==null)
	{
		 six=0;
		 am6=0;

	
		
	}
	else
	{
		six=Integer.parseInt(request.getParameter("greenpeas"));
		am6=Integer.parseInt(request.getParameter("Amount6"));
		session1.setAttribute("greenpeas", am6);
		
		
		
		

	}
	
	if(request.getParameter("Cauliflower")==null)
	{
		 seven=0;
		 am7=0;
	 
		
	}
	else
	{
		seven=Integer.parseInt(request.getParameter("Cauliflower"));
		am7=Integer.parseInt(request.getParameter("Amount7"));
		session1.setAttribute("Cauliflower", am7);
		

	}

	if(request.getParameter("Watermelon")==null)
	{
		 eight=0;
		 am8=0;
	
		
	}
	else
	{
		eight=Integer.parseInt(request.getParameter("Watermelon"));
		am8=Integer.parseInt(request.getParameter("Amount8"));
		session1.setAttribute("Watermelon", am8);
		

	}
	
	if(request.getParameter("orange")==null)
	{
		 nine=0;
		 am9=0;
	
		
	}
	else
	{
		nine=Integer.parseInt(request.getParameter("orange"));
		am9=Integer.parseInt(request.getParameter("Amount9"));
		session1.setAttribute("orange", am9);
		

	}
	
	
	
	int total=one*am1+two*am2+three*am3+four*am4+five*am5+six*am6+seven*am7+eight*am8+nine*am9;
	         // String t= Integer.toString(total);
	try{
	String str="INSERT INTO income " + " (username,total) values (?,?)"; 
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/farmersmart?serverTimezone=UTC","root","");
			PreparedStatement stmt=con.prepareStatement(str);
	stmt.setString(1,uname);
	stmt.setInt(2,total);
	int c=stmt.executeUpdate();
	
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	     
	     session.setAttribute("total", total);

		
	if(total>0)
	{			response.sendRedirect("success.jsp");	
	
	}
	else
	{
		response.sendRedirect("error.html");
	}
	
		}catch(Exception e)
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
