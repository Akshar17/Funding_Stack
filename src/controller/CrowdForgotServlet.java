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

public class CrowdForgotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public CrowdForgotServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String emailid=request.getParameter("crow_emailid");
	String page="";
	String data="12345678901234567890123456789012345678901234567890123456789012345678901234567890";
	String cotp="";
	
	if(emailid.equals(""))
	{
		page="error.jsp?msg=fields";
	}
	
	else
	{
	
	try {
		Model m=new Model();
		m.setEmail(emailid);
		String loginquery="select * from rcrowd where email='"+emailid+"'";
		ResultSet rs= Dao.login(m, loginquery);
		if(rs.next())
		{
			String cpassword=rs.getString("password");
			HttpSession session=request.getSession();
			session.setAttribute("cemail", emailid);
			session.setAttribute("cpass", cpassword);			
			char ch[]=data.toCharArray();
			for(int i=0;i<4;i++)
			{	
				int j=(int)((Math.random())*80);
				cotp=cotp+ch[j];
			}
			session.setAttribute("cotp", cotp);
			PasswordMail pm=new PasswordMail();
			boolean status=pm.sendMail(emailid, cotp);
			if(status)
			{
				page="sponsorerotp.jsp";
			}
			else
			{
				page="error.jsp?msg=crowdmailnotsent";
			}
		}
		else
		{
			page="error.jsp?msg=crowdusernotfound";
		}
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (MessagingException e) {
				page="error.jsp?msg=crowdmailnotsent";
			}	
			}
	
	response.sendRedirect(page);
					

	}

}
