<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Innovator - Dashboard</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


</head>
	<body>
	<%
	String status = request.getParameter("success");
	PrintWriter out2 = response.getWriter();
	System.out.print(status.equals("success"));
	if(status.equals("success"))
	{
		out2.print("<script type=\"text/javascript\">alert(\"Project Added Successfully\");</script>");
	}
	else if(status.equals("successprofile"))
	{
		out2.print("<script type=\"text/javascript\">alert(\"Profile Updated Successfully\");</script>");
	}
	else
	{
		
	}

	%>
	
	<%if(session.getAttribute("iemail")!=null)
	{%>
		<jsp:include page="developerheader.jsp"></jsp:include>
		
		 <div class="container-fluid bg-1 text-center">
		   <h3 class="margin">Welcome To Funding Stack</h3>
				<img src="images/innodashboard.PNG" class="img-responsive" style="display:inline" alt="project">
		  <h3>Place Your Dreams Here!!</h3>
		</div>
		
		<jsp:include page="footer.jsp"></jsp:include>
		
		<%}
else
{
response.sendRedirect("login.jsp");
}%>
	
	</body>
</html>