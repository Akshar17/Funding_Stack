package controller;


import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.net.*;
import java.io.*;

/**
 * Servlet implementation class ChatClient
 */
public class ChatClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChatClient() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out2=response.getWriter();
		// TODO Auto-generated method stub
		String clientmsg1 = request.getParameter("clientmsg1");
		String name1 = request.getParameter("name1");
		HttpSession session1= request.getSession();
		
		HttpSession session= request.getSession();
		String c1email = (String) session.getAttribute("iemail");
		System.out.println("Crowd Email ID :::: "+c1email);
		session.setAttribute("c1email", c1email);
		String msg=session1.getAttribute("msg")+"<br>" +c1email+" : "+clientmsg1;
		
		System.out.println(msg);
		session1.setAttribute("msg", msg);
		HttpSession session5= request.getSession();
		session5.setAttribute("msg", msg);
		session1.setAttribute("name1", name1);
		
		String serverName = "localhost";
	      int port = Integer.parseInt("443");
	      try
	      {
	         
	         Socket client = new Socket(serverName, port);
	         
	         //OutputStream outToServer = client.getOutputStream();
	         //DataOutputStream out =new DataOutputStream(outToServer);

	         //out.writeUTF(name1+" Said :: "+clientmsg1);
	         
	         //InputStream inFromServer = client.getInputStream();
	         //DataInputStream in =new DataInputStream(inFromServer);
	         response.sendRedirect("Client.jsp");
	         client.close();
	      }catch(IOException e)
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
