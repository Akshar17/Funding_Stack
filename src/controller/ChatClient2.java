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
public class ChatClient2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChatClient2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out2=response.getWriter();
		// TODO Auto-generated method stub
		String clientmsg2 = request.getParameter("clientmsg2");
		String name2 = request.getParameter("name2");
		HttpSession session4= request.getSession();
		
		HttpSession session = request.getSession();
		String c2email = (String) session.getAttribute("cemail");
		System.out.println("Crowd Email ID :::: "+c2email);
		session.setAttribute("c2email", c2email);
		String msg=session4.getAttribute("msg")+"<br>" +c2email+" : "+clientmsg2;
		
		System.out.println(msg);
		session4.setAttribute("msg", msg);
		session4.setAttribute("name2", name2);
		
		String serverName = "localhost";
	      int port = Integer.parseInt("443");
	      try
	      {
	         
	         Socket client = new Socket(serverName, port);
	         
	         //OutputStream outToServer = client.getOutputStream();
	         //DataOutputStream out = new DataOutputStream(outToServer);

	         //out.writeUTF(name2+" Said :: "+clientmsg2);
	         
	         //InputStream inFromServer = client.getInputStream();
	         //DataInputStream in = new DataInputStream(inFromServer);
	         response.sendRedirect("Client2.jsp");
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
