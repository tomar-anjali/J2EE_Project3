package org.jsp.ProductMngSys;

import java.io.IOException;
import java.net.ConnectException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/create")
public class CreateServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id =Integer.parseInt(req.getParameter("id")) ;
		String name = req.getParameter("name");
		double price =Double.parseDouble(req.getParameter("price")) ;
		String brand = req.getParameter("brand");
		
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/ProductMngSys","postgres","root");
			PreparedStatement ps= con.prepareStatement("insert into product values(?,?,?,?)");
			ps.setInt(1, id);
			ps.setString(2, name);
			ps.setDouble(3, price);
			ps.setString(4, brand);
			int row = ps.executeUpdate();
			ps.close();
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try 
		{
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/ProductMngSys","postgres","root");
			PreparedStatement ps= con.prepareStatement("select * from product order by id asc");
			ResultSet rs = ps.executeQuery();
			req.setAttribute("res", rs);
			RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
			rd.forward(req, resp);
		} 
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		}
		
	}
}
