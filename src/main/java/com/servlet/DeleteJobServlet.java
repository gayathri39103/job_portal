package com.servlet;

import java.io.IOException;
import com.DB.DBConnect;
import com.dao.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/delete")
public class DeleteJobServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session= req.getSession();
			int id = Integer.parseInt(req.getParameter("id"));
			JobDAO dao=new JobDAO(DBConnect.getConn());
			boolean f = dao.deleteJobs(id);
			if(f) {
				session.setAttribute("succMsg","Job delete successfully");
				resp.sendRedirect("view_jobs.jsp");
			}
			else {
				session.setAttribute("succMsg","Something wrong on server");
				resp.sendRedirect("view_jobs.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
