<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client 1</title>
<link rel="stylesheet" href="css/chatserver.css">
</head>
<body>
<%
HttpSession session2= request.getSession();
String c1email =(String) session.getAttribute("iemail"); // this is innovator email id
System.out.print("Innovator Email :: "+c1email);
session.setAttribute("c1email", c1email);
String clientmsg1 = request.getParameter("clientmsg1");
String msg=session.getAttribute("msg")+"<br>" +c1email+" : "+clientmsg1;
session.setAttribute("msg", msg);
//System.out.print("Innovator MSG :: "+msg);
%>
	<div class="w3-half w3-sand w3-container" style="height:80%;width:100%">
    <div class="w3-padding-32 w3-padding-large w3-center">
    <h1> Start your chat   </h1>
    <p class="w3-opacity"></p>
	<form class="w3-container w3-card-2 w3-padding-32 w3-white" action="Client.jsp">
	<div class="w3-section">
          <label>Email-Id</label>
          <input class="w3-input" style="width:100%;" type="text" name="email1" value="<%=c1email%>">
    </div>
	<div class="w3-section">
          <label>Name</label>
          <input class="w3-input" style="width:100%;" type="text" name="name1" placeholder="Please enter your name" value="">
    </div>
	<div class="w3-section">
         <label>Message</label>
          <input class="w3-input" style="width:100%;" type="text"  name="clientmsg1" autofocus="autofocus" placeholder="Please enter your Message here">
    </div>

	<button type="submit" class="w3-btn w3-block w3-black">Send</button>

</form>
<br>
   <div class="w3-section" style="width:100%;">
      <label>Your chat is here:</label>
      <br>
      <iframe src="InnovatorCrowdChat.jsp"  ></iframe>
   </div>
   </div>
   </div>
   
<%
if(session2.getAttribute("msg")!=null){
	//out.println(session2.getAttribute("msg")+"<br/>");	
}
else{
	session.setAttribute("msg", "");
}

%>

</body>
</html>