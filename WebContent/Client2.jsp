<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client 2</title>
<link rel="stylesheet" href="css/chatserver.css">
</head>
<body>
<%
HttpSession session2= request.getSession();
String c2email =(String) session.getAttribute("cemail"); // this is innovator email id
System.out.print("Crowd Email :: "+c2email);
session2.setAttribute("c2email", c2email);
String clientmsg2 = request.getParameter("clientmsg2");
String msg=session.getAttribute("msg")+"<br>" +c2email+" : "+clientmsg2;
session.setAttribute("msg", msg);
//System.out.print("Crowd MSG :: "+msg);
%>
<div class="w3-half w3-sand w3-container" style="height:80%;width:100%">
    <div class="w3-padding-32 w3-padding-large w3-center">
    <h1> Start your chat   </h1>
    <p class="w3-opacity"></p>
	<form class="w3-container w3-card-2 w3-padding-32 w3-white" action="Client2.jsp"> 
	<div class="w3-section">
          <label>Email-Id</label>
          <input class="w3-input" style="width:100%;" type="text" name="email2" value="<%=session.getAttribute("c2email")%>">
    </div>
	<div class="w3-section">
          <label>Name</label>
          <%-- <input class="w3-input" style="width:100%;" type="text" name="name2" value=<%=session3.getAttribute("name2")%>> --%>
    </div>
	<div class="w3-section">
          <label>Message</label>
          <input class="w3-input" style="width:100%;" type="text"  name="clientmsg2" autofocus="autofocus">
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

if(session.getAttribute("msg")!=null){
	//out.println(session3.getAttribute("msg")+"<br/>");	
}
else{
	session.setAttribute("msg", "");
}

%>

</body>
</html>