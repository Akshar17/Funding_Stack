package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import mail.PasswordMail;
import model.Model;

public class InnovatorForgotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public InnovatorForgotServlet() {
        super();
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
		String emailid=request.getParameter("inno_emailid");
		String page="";
		String loginquery="select * from rinno where email='"+emailid+"'";
		String data="12345678901234567890123456789012345678901234567890123456789012345678901234567890";
		String iotp="";
		
		if(emailid.equals(""))
		{
			page="error.jsp?msg=fields";
		}
		
		else
		{
		
		try {
			Model m=new Model();
			m.setEmail(emailid);
			ResultSet rs= Dao.login(m, loginquery);
			if(rs.next())
			{
				String password=rs.getString("password");
				HttpSession session=request.getSession();
				session.setAttribute("iemail",emailid);
				session.setAttribute("ipass", password);
				
				HttpSession sessionemail=request.getSession();
				sessionemail.setAttribute("iemail",emailid);
				
				char ch[]=data.toCharArray();
				for(int i=0;i<4;i++)
				{	
					int j=(int)((Math.random())*80);
					iotp=iotp+ch[j];
				}
				session.setAttribute("iotp",iotp);
				PasswordMail pm=new PasswordMail();
				boolean status=pm.sendMail(emailid, iotp);
				if(status)
				{
					page="developerotp.jsp";
				}
				else
				{
					page="error.jsp?msg=innomailnotsent";
				}
			}
			else
			{
				page="error.jsp?msg=innousernotfound";
			}
					
					
				} catch (SQLException e) {
					e.printStackTrace();
				} catch (MessagingException e) {
					page="error.jsp?msg=innomailnotsent";
					
				}	
				}
		
		response.sendRedirect(page);
	}

}
