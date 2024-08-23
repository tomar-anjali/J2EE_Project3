package org.jsp.ProductMngSys;

import java.io.IOException;
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

@WebServlet(urlPatterns = "/update")
public class UpdateServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id =Integer.parseInt(req.getParameter("id")) ;
		
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/ProductMngSys","postgres","root");
			
			PreparedStatement ps=con.prepareStatement("select * from product where id=? order by id asc");
			ps.setInt(1, id);
			ResultSet rs= ps.executeQuery();
			
			req.setAttribute("res", rs);
			RequestDispatcher rd=req.getRequestDispatcher("Update.jsp");
			rd.forward(req, resp);
			
			
			ps.close();
			con.close();
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}
}
