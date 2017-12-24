<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="model.Model" %>
    <%@ page import="dao.Dao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chat</title>
</head>
<%HttpSession session2= request.getSession();
response.setIntHeader("Refresh", 1);
if(session.getAttribute("msg")!=null){
	out.println(session2.getAttribute("msg")+"<br/>");
	
}
session2.getAttribute("msg");
String to=(String) session.getAttribute("iemail");
String from=(String) session.getAttribute("cemail");
String query = "update table chat set to='"+to+"', from='"+from+"', messgae='"+session2.getAttribute("msg")+"'";
Model m  = new Model();
boolean status = Dao.Register(m, query);

%>
<body>
</body>
</html>