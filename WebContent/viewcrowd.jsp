<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.Model"%>
<%@page import="dao.Dao"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="css_js.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>View Crowd</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

</head>

<body>

<jsp:include page="developerheader.jsp"></jsp:include>


 <!-- Container -->
       <div class="container-fluid bg-1 text-center">
      <form class="form-horizontal" action="viewproject2.jsp" method="post">
      <!-- Form Name -->
      <br>
   
      <table class="table table-condensed">
          <thead>
            <tr>
              <th>Project ID</th>
              <th>Title</th>
              <th>Amount</th>
              <th>Crowd Email ID</th>
            </tr>
          </thead>
          <br>
          <tbody>
          <%
			HttpSession emailid= request.getSession();
			String email =(String) emailid.getAttribute("iemail");
			Model m =new Model();
			ResultSet rs = Dao.login(m,"select project_id,title,fund_amount,crow_email from fund where inno_email='"+email+"'"); 
			while(rs.next())
			{
			String title= rs.getString("title");
			String project_id= rs.getString("project_id");
			String fund_amount = rs.getString("fund_amount");
			String crow_email = rs.getString("crow_email");
			
		%>
      
            <tr>
            
              <td><input value="<%=project_id%>" name="textinput" type="text" placeholder="" class="form-control input-md" disabled></td>
              <td><input value="<%=title%>" name="textinput" type="text" placeholder="" class="form-control input-md" disabled></td>
              <td><input value="<%=fund_amount%>" name="textinput" type="text" placeholder="" class="form-control input-md" disabled></td>
              <td><input value="<%=crow_email%>" name="textinput" type="text" placeholder="" class="form-control input-md" disabled></td>
              
              
            </tr>
            <%

			}
		
			 %>
            
           </tbody>
        </table>
      
      </form>
      </div>
      


<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>