package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;


public class CrowdChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CrowdChangePasswordServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String crow_opassword=request.getParameter("crow_opassword");//old password
		String crow_npassword=request.getParameter("crow_npassword");//new password
		String crow_cpassword=request.getParameter("crow_cpassword");//confirm password
		String page="";
		HttpSession session=request.getSession();
		
		String email=(String)session.getAttribute("cemail");
		String password1=(String)session.getAttribute("cpassword");	
		
		String sql="update rcrowd set password='"+crow_npassword+"' where email='"+email+"'";
		
		if(crow_opassword.equals(password1))
		{
			if(!crow_npassword.equals(password1))
			{
				if(!crow_npassword.contains(password1))
				{
					if(crow_npassword.equals(crow_cpassword))
					{
						Model m=new Model();
						m.setEmail(email);
						m.setPassword(crow_npassword);
					try {
							int i=	Dao.update(m,sql);
							if(i!=0)
							{
								page="login.jsp";
							
							}
							else
							{
								page="error.jsp?msg=crowdpasswordupdatefailed";
							}
						} 
						catch (Exception e) {
							e.printStackTrace();
						}					
					}
					else
					{
						page="error.jsp?msg=crowdpasswordnotmatch";
					}
				}
				else
				{
					page="error.jsp?msg=crowdpasswordoldcontains";
				}
			}
			else
			{
				page="error.jsp?msg=crowdpasswordoldcontains";
			}

		}
		else
		{
			page="error.jsp?msg=crowdoldpassword";
		}
		response.sendRedirect(page);
	}
		
		

}
