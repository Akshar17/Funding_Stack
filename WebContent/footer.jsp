<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<jsp:include page="css_js.jsp"></jsp:include>
	
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<style type="text/css">
		.full {
    width: 100%;	
}
.gap {
	height: 30px;
	width: 100%;
	clear: both;
	display: block;
}
.footer {
	background: black;
	height: auto;
	padding-bottom: 30px;
	position: relative;
	width: 100%;
	border-bottom: 1px solid #CCCCCC;
	border-top: 1px solid #DDDDDD;
}
.footer p {
	margin: 0;
}
.footer img {
	max-width: 100%;
}
.footer h3 {
	border-bottom: 1px solid #BAC1C8;
	color: #54697E;
	font-size: 18px;
	font-weight: 600;
	line-height: 27px;
	padding: 40px 0 10px;
	text-transform: uppercase;
}
.footer ul {
	font-size: 13px;
	list-style-type: none;
	margin-left: 0;
	padding-left: 0;
	margin-top: 15px;
	color: #7F8C8D;
}
.footer ul li a {
	padding: 0 0 5px 0;
	display: block;
}
.footer a {
	color: #78828D
}
.supportLi h4 {
	font-size: 20px;
	font-weight: lighter;
	line-height: normal;
	margin-bottom: 0 !important;
	padding-bottom: 0;
}
.newsletter-box input#appendedInputButton {
	background: #FFFFFF;
	display: inline-block;
	float: left;
	height: 30px;
	clear: both;
	width: 100%;
}
.newsletter-box .btn {
	border: medium none;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-o-border-radius: 3px;
	-ms-border-radius: 3px;
	border-radius: 3px;
	display: inline-block;
	height: 40px;
	padding: 0;
	width: 100%;
	color: #fff;
}
.newsletter-box {
	overflow: hidden;
}
.bg-gray {
	background-image: -moz-linear-gradient(center bottom, #BBBBBB 0%, #F0F0F0 100%);
	box-shadow: 0 1px 0 #B4B3B3;
}
.social li {
	background: none repeat scroll 0 0 #B5B5B5;
	border: 2px solid #B5B5B5;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-o-border-radius: 50%;
	-ms-border-radius: 50%;
	border-radius: 50%;
	float: left;
	height: 36px;
	line-height: 36px;
	margin: 0 8px 0 0;
	padding: 0;
	text-align: center;
	width: 36px;
	transition: all 0.5s ease 0s;
	-moz-transition: all 0.5s ease 0s;
	-webkit-transition: all 0.5s ease 0s;
	-ms-transition: all 0.5s ease 0s;
	-o-transition: all 0.5s ease 0s;
}
.social li:hover {
	transform: scale(1.15) rotate(360deg);
	-webkit-transform: scale(1.1) rotate(360deg);
	-moz-transform: scale(1.1) rotate(360deg);
	-ms-transform: scale(1.1) rotate(360deg);
	-o-transform: scale(1.1) rotate(360deg);
}
.social li a {
	color: #EDEFF1;
}
.social li:hover {
	border: 2px solid #2c3e50;
	background: #2c3e50;
}
.social li a i {
	font-size: 16px;
	margin: 0 0 0 5px;
	color: #EDEFF1 !important;
}
.footer-bottom {
	background: #E3E3E3;
	border-top: 1px solid #DDDDDD;
	padding-top: 10px;
	padding-bottom: 10px;
}
.footer-bottom p.pull-left {
	padding-top: 6px;
}
.payments {
	font-size: 1.5em;	
}
	
	</style>
</head>

<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
            
            
                <div class="col-lg-4">
                    <h3> Links </h3>
                    <ul class="nav nav-pills" role="tablist">
					  <li><a href="signup.jsp"><button type="button" class="btn btn-default navbar-btn">Sign in</button></li></a>
					  <li><a href="signup.jsp"><button type="button" class="btn btn-default navbar-btn">&nbsp;Login&nbsp;</button></li></a>
					</ul>
                  
				  
                </div>
                <div class="col-lg-4">
                
                    <h3> Developers </h3>
                    
                    <ul class="list-group bg-black">
                    	
					  <li class="list-group-item bg-black"><span class="txt-clr">Khush Patel</span><span class="badge">Project Manager, Developer</span></li>
					  <li class="list-group-item bg-black"><span class="txt-clr">Akshar Patel</span><span class="badge">Developer</span></li> 
					  <li class="list-group-item bg-black"><span class="txt-clr">Mahima Patel</span><span class="badge">Web Designer</span></li>
					  <li class="list-group-item bg-black"><span class="txt-clr">Heta Patel</span><span class="badge">Web Designer</span></li>
					  <li class="list-group-item bg-black"><span class="txt-clr">Harshit Patel</span><span class="badge">Database Administrator & Developer </span></li>
					  <li class="list-group-item bg-black"><span class="txt-clr">Neel Patel</span><span class="badge">Content Writer</span></li>
					  
					</ul>
				
                </div>
                <div class="col-lg-4">
                    <h3> Contact </h3>
                    <ul>
                        <li>
                         	<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                         	Subscribe Us
		</button>
	
		<div class="modal" id="myModal" tabindex="-1" role="dialog" >
			<div class="modal-dialog" role="document">
				<div class="modal-content">
				
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" >
							<span >&times;</span>
						</button>
						<h3 class="modal-title" >Email ID</h3>
					</div>
					
					<div class="modal-body">
					<form class="form-horizontal" action="subscribe.jsp" method="post">
					<input id="subemail" type="email" class="form-control" name="subemail" placeholder="Enter your Email ID">
					
					</div>
					
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Dismiss</button>
						<button type="submit" class="btn btn-primary">Done</button>
					</div>
					</form>
					
				</div>
			</div>
		</div>
  								
                        </li>
                    </ul>
                    <ul class="social">
                        <li><a href="#"><p class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><p class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><p class="fa fa-google-plus"></i></a></li>
                        <li><a href="#"><p class="fa fa-pinterest"></i></a></li>
                        <li><a href="#"><p class="fa fa-youtube"></i></a></li>
                    </ul>
                </div>
            </div>
            <!--/.row--> 
        </div>
        <!--/.container--> 
    </div>
    <!--/.footer-->
    
    <div class="footer-bottom col-sm-12">
        <div class="container">
            <center><p> Copyright © Funding Stack 2017. All right are reserved. </p></center>
        </div>
    </div>
    <!--/.footer-bottom--> 
</footer>
</html>