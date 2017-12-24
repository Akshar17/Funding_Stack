<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Funding Stack - Error</title>
		<link href="css/error.css" rel="stylesheet" type="text/css"  media="all" />
	</head>
	<%
	String msg=request.getParameter("msg");
	String error="";
	String link="";	
	if(msg.equals("innovatornotfound"))
	{
		error="Innovator Not found or Invalid Credentials";
		link="login.jsp";
	}
	else if(msg.equals("passcmp"))
	{
		error="Password not Match";
		link="signup.jsp";		
	}
	else if(msg.equals("crowdnotfound"))
	{
		error="Crowd Not found or Invalid Credentials";
		link="login.jsp";		
	}
	else if(msg.equals("innoemailexist"))
	{
		error="Innovator already exist";
		link="login.jsp";		
	}
	else if(msg.equals("crowdemailexist"))
	{
		error="Crowd already exist";
		link="login.jsp";		
	}
	else if(msg.equals("innousernotfound"))
	{
		error="Innovator Doesn't exist";
		link="developerforgotpassword.jsp";		
	}
	else if(msg.equals("crowdusernotfound"))
	{
		error="Crowd Doesn't exist";
		link="sponsorerforgotpassword.jsp";		
	}
	else if(msg.equals("innomailnotsent"))
	{
		error="Mail not Sent in Innovator";
		link="developerforgotpassword.jsp";		
	}
	else if(msg.equals("crowdmailnotsent"))
	{
		error="Mail not Sent in Crowd";
		link="sponsorerforgotpassword.jsp";		
	}
	else if(msg.equals("enterotp"))
	{
		error="Please Enter OTP";
		link="developerotp.jsp";		
	}
	else if(msg.equals("wrongotp"))
	{
		error="Please Enter Valid OTP";
		link="developerotp.jsp";		
	}
	else if(msg.equals("passwordnotmatch"))
	{
		error="Password not match";
		link="developernewpassword.jsp";		
	}
	else if(msg.equals("passwordupdatefailed"))
	{
		error="Password failed to Update";
		link="developernewpassword.jsp";		
	}
	else if(msg.equals("innopasswordupdatefailed"))
	{
		error="Password failed to Update";
		link="developerchangepassword.jsp";		
	}
	else if(msg.equals("innopasswordnotmatch"))
	{
		error="Password not match";
		link="developerchangepassword.jsp";		
	}
	else if(msg.equals("innooldpassword"))
	{
		error="Old Password not Matched";
		link="developerchangepassword.jsp";		
	}
	else if(msg.equals("innopasswordoldcontains"))
	{
		error="Password Contains old Password";
		link="developerchangepassword.jsp";		
	}
	else if(msg.equals("failedtoaddproject"))
	{
		error="Please Enter Valid Details";
		link="addproject.jsp";		
	}
	else if(msg.equals("projectvaliddetails"))
	{
		error="Please Enter Valid Details";
		link="viewproject.jsp";		
	}
	else if(msg.equals("projectdeletefailed"))
	{
		error="Failed to Delete Project";
		link="viewproject.jsp";		
	}
	else if(msg.equals("profileupdatefailed"))
	{
		error="Failed to Update Profile";
		link="developerprofile.jsp";		
	}
	else if(msg.equals("projectupdatefailed"))
	{
		error="Failed to Update Project";
		link="viewproject.jsp";		
	}
	
	//Crowd Section
	
	else if(msg.equals("failedtoraise"))
	{
		error="Please Enter Integer Amount";
		link="fund.jsp";		
	}
	else if(msg.equals("failedtoemailraise"))
	{
		error="Mail not Sent";
		link="fund.jsp";		
	}
	else if(msg.equals("fundnotraise"))
	{
		error="Data not Inserted";
		link="fund.jsp";		
	}
	else if(msg.equals("crowdprofileupdatefailed"))
	{
		error="Crowd Failed to Update";
		link="sponsorerprofile.jsp";		
	}
	else if(msg.equals("crowdpasswordupdatefailed"))
	{
		error="Password failed to Update";
		link="sponsorerchangepassword.jsp";		
	}
	else if(msg.equals("crowdpasswordnotmatch"))
	{
		error="Password not match";
		link="sponsorerchangepassword.jsp";		
	}
	else if(msg.equals("crowdoldpassword"))
	{
		error="Old Password not Matched";
		link="sponsorerchangepassword.jsp";		
	}
	else if(msg.equals("crowdpasswordoldcontains"))
	{
		error="Password Contains old Password";
		link="sponsorerchangepassword.jsp";		
	}
	else if(msg.equals("innophonewrong"))
	{
		error="Contact Details are not Valid";
		link="developerprofile.jsp";		
	}
	else if(msg.equals("crowphonewrong"))
	{
		error="Contact Deatils are not Valid";
		link="sponsorerprofile.jsp";		
	}
	
	else
	{
		error="Page Not Found";
		link="index.jsp";		
	}
	
	
	
	%>
	<meta http-equiv="refresh" content="3;url=<%=link%>" />
	<body>
		<!--start-wrap--->
		<div class="wrap">
			<!---start-header---->
				<div class="header">
					<div class="logo">
						<h1><a href="#"><%=error %></a></h1>
					</div>
				</div>
			<!---End-header---->
			<!--start-content------>
			<div class="content">
				<img src="images/error-img.png" title="error" />
				<p><span><label>O</label>hh.....</span>You Requested the page that is no longer There.</p>
				<a href="<%= link%>">Continue</a>
				<div class="copy-right">
					<p>&copy; 2017 Ohh. All Rights Reserved | Design by <a href="index.jsp">Funding Stack</a></p>
				</div>
   			</div>
			<!--End-Cotent------>
		</div>
		<!--End-wrap--->
	</body>
</html>



