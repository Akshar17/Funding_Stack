<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/font-awesome.min.css">
<jsp:include page="css_js.jsp"></jsp:include>
<style type="text/css">

	.card {
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    max-width: 300px;
    margin: auto;
    text-align: center;
}

.title {
    color: grey;
    font-size: 18px;
}

button {
    border: none;
    outline: 0;
    display: inline-block;
    padding: 8px;
    color: white;
    background-color: #000;
    text-align: center;
    cursor: pointer;
    width: 100%;
    font-size: 18px;
}

a {
    text-decoration: none;
    font-size: 22px;
    color: black;
}

button:hover, a:hover {
    opacity: 0.7;
}
</style>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<br>
<br>
<center>

<div class="container">
	<div class="card col-xs-6 col-md-3 bg-avatar">
		<br>
	  <img src="images/img_avatar.png" alt="John" style="width:100%">
	  <h1>Khush Patel</h1>
	  <p class="title color-text">Developer</p>
	</div>
	<div class="card col-xs-6 col-md-3 bg-avatar">
		<br>
	  <img src="images/img_avatar.png" alt="John" style="width:100%">
	  <h1>Akshar Patel</h1>
	  <p class="title color-text">Developer</p>
	</div>
	<div class="card col-xs-6 col-md-3 bg-avatar">
		<br>
	  <img src="images/img_avatar.png" alt="John" style="width:100%">
	  <h1>Mahima Patel</h1>
	  <p class="title color-text">Web Designer</p>
	</div>
</div>
<br>
<div class="container">
	<div class="card col-xs-6 col-md-4 bg-avatar">
		<br>
	  <img src="images/img_avatar.png" alt="John" style="width:100%">
	  <h1>Heta Patel</h1>
	  <p class="title color-text">Web Designer</p>
	</div>
	<div class="card col-xs-6 col-md-4 bg-avatar">
		<br>
	  <img src="images/img_avatar.png" alt="John" style="width:100%">
	  <h1>Harshit Patel</h1>
	  <p class="title color-text">Database Administrator & Developer</p>
	</div>
	<div class="card col-xs-6 col-md-4 bg-avatar">
		<br>
	  <img src="images/img_avatar.png" alt="John" style="width:100%">
	  <h1>Neel Patel</h1>
	  <p class="title color-text">Content Writer</p>
	</div>
</div>

</center>

</body>
</html>