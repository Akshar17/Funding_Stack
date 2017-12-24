package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;

public class InnovatorProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InnovatorProfile() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page="";
		String inm=request.getParameter("inno_name");	
		String icn=request.getParameter("inno_contact");
		
		if(icn.matches("[0-9]+"))
		{
			if(icn.length() == 10)
			{
				String ied=request.getParameter("inno_qualification");
				String ioccup=request.getParameter("inno_whoami");
				String iabtme=request.getParameter("inno_aboutme");
				HttpSession session = request.getSession();
				
				String emailid=(String)session.getAttribute("iemail");
				String updatequery="update innoprofile set(name,contact,education,occupation,aboutme)=('"+inm+"','"+icn+"','"+ied+"','"+ioccup+"','"+iabtme+"') where emailid='"+emailid+"' ";

				try 
				{
				
					Model m=new Model();

					if(Dao.update(m,updatequery)!=0)
					{
						page="DeveloperDashboard.jsp?success=successprofile";
					}
					else
					{
						page="error.jsp?msg=profileupdatefailed";
					}
						
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}

			}
			else
			{
				page="error.jsp?msg=innophonewrong";
			}
		}
		else
		{
			page = "error.jsp?msg=innophonewrong";
		}
		response.sendRedirect(page);
	}

}
