package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CrowdOtpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public CrowdOtpServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
		String cotp=request.getParameter("crow_otp");
		
		HttpSession session=request.getSession();
		String copt1=(String)session.getAttribute("cotp");
		String emailid=(String)session.getAttribute("cemailid");
		String page="";
		
		if(cotp.equals(""))
		{
			page="error.jsp?msg=enterotp";
		}
		else if(cotp.equals(copt1))
		{
			page="sponsorernewpassword.jsp";
		}
		else
		{
			page="error.jsp?msg=wrongotp";
		}
		response.sendRedirect(page);
	}

}
