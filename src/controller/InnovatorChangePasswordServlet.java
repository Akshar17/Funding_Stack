package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;

public class InnovatorChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
    public InnovatorChangePasswordServlet() {
        super();
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String inno_opassword=request.getParameter("inno_opassword");//old password
		String inno_npassword=request.getParameter("inno_npassword");//new password
		String inno_cpassword=request.getParameter("inno_cpassword");//confirm password
		String page="";
		HttpSession session=request.getSession();
		
		String email=(String)session.getAttribute("iemail");
		String password1=(String)session.getAttribute("ipassword");

		
		String sql="update rinno set password='"+inno_npassword+"' where email='"+email+"'";
		
		if(inno_opassword.equals(password1))
		{
			if(!inno_npassword.equals(password1))
			{
				if(!inno_npassword.contains(password1))
				{
					if(inno_npassword.equals(inno_cpassword))
					{
						Model m=new Model();
						m.setEmail(email);
						m.setPassword(inno_npassword);
					try {
							int i=	Dao.update(m,sql);
							if(i!=0)
							{
								page="login.jsp";
							
							}
							else
							{
								page="error.jsp?msg=innopasswordupdatefailed";
							}
						} catch (Exception e) {
								e.printStackTrace();
						}
					}
					else
					{
						page="error.jsp?msg=innopasswordnotmatch";
					}
				}
				else
				{
					page="error.jsp?msg=innopasswordoldcontains";
				}
				
			}
			else
			{
				page="error.jsp?msg=innopasswordoldcontains";
			}

		}
		else
		{
			page="error.jsp?msg=innooldpassword";
		}
		response.sendRedirect(page);
	}
		
			
}

