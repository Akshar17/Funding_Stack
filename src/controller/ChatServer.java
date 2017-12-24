package controller;


import java.net.*;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

/**
 * Servlet implementation class ChatServer
 */
public class ChatServer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServerSocket serverSocket;
	String message;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChatServer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out2 = response.getWriter();
		int port = Integer.parseInt("443");
		serverSocket = new ServerSocket(port);
	    serverSocket.setSoTimeout(100000);
	    
	    try
        {
           System.out.println("Waiting for client on port " +
           serverSocket.getLocalPort() + "...");
           Socket server = serverSocket.accept();
           
           DataInputStream in =
                 new DataInputStream(server.getInputStream());
           //System.out.println("Server Said."+in.readUTF());
           DataOutputStream out =
                new DataOutputStream(server.getOutputStream());
           
           server.close();
        }catch(SocketTimeoutException s)
        {
           System.out.println("Socket timed out!");
        }catch(IOException e)
        {
           e.printStackTrace();

        }
	    response.sendRedirect("Client.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
