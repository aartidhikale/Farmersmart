<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>FarmersMart</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/Farmersmartlogo.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    
 <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style type="text/css">
.form-control {
	height: 40px;
	box-shadow: none;
	color: #969fa4;
}
.form-control:focus {
	border-color: #5cb85c;
}
.form-control, .btn {        
	border-radius: 3px;
}
.signin-form {
	width: 450px;
	margin: 0 auto;
	padding: 150px 0PX;
  	font-size: 15px;
}
.signin-form h2 {
	color: #636363;
	margin: 0 0 15px;
	position: relative;
	text-align: center;
}
.signin-form h2:before, .signin-form h2:after {
	content: "";
	height: 2px;
	width: 30%;
	background: #d4d4d4;
	position: absolute;
	top: 50%;
	z-index: 2;
}	
.signin-form h2:before {
	left: 0;
}
.signin-form h2:after {
	right: 0;
}
.signin-form .hint-text {
	color: #999;
	margin-bottom: 30px;
	text-align: center;
}
.signin-form form {
	color: #999;
	border-radius: 3px;
	margin-bottom: 15px;
	background: #f2f3f7;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}
.signin-form .form-group {
	margin-bottom: 20px;
}
.signin-form input[type="checkbox"] {
	margin-top: 3px;
}
.signin-form .btn {        
	font-size: 16px;
	font-weight: bold;		
	min-width: 140px;
	outline: none !important;
}
.signin-form .row div:first-child {
	padding-right: 10px;
}
.signin-form .row div:last-child {
	padding-left: 10px;
}    	
.signin-form a {
	color: #fff;
	text-decoration: underline;
}
.signin-form a:hover {
	text-decoration: none;
}
.signin-form form a {
	color: #5cb85c;
	text-decoration: none;
}	
.signin-form form a:hover {
	text-decoration: underline;
}  

.login-box {
    margin-top: 75px;
    height: auto;
    background: #1A2226;
    text-align: center;
    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}

.login-key {
    height: 100px;
    font-size: 80px;
    line-height: 100px;
    background: -webkit-linear-gradient(#27EF9F, #0DB8DE);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.login-title {
    margin-top: 15px;
    text-align: center;
    font-size: 30px;
    letter-spacing: 2px;
    margin-top: 15px;
    font-weight: bold;
    color: #ECF0F5;
}

.login-form {
    margin-top: 25px;
    text-align: left;
}

input[type=text] {
    background-color: #1A2226;
    border: none;
    border-bottom: 2px solid #0DB8DE;
    border-top: 0px;
    border-radius: 0px;
    font-weight: bold;
    outline: 0;
    margin-bottom: 20px;
    padding-left: 0px;
    color: #ECF0F5;
}

input[type=password] {
    background-color: #1A2226;
    border: none;
    border-bottom: 2px solid #0DB8DE;
    border-top: 0px;
    border-radius: 0px;
    font-weight: bold;
    outline: 0;
    padding-left: 0px;
    margin-bottom: 20px;
    color: #ECF0F5;
}

.form-group {
    margin-bottom: 40px;
    outline: 0px;
}

.form-control:focus {
    border-color: inherit;
    -webkit-box-shadow: none;
    box-shadow: none;
    border-bottom: 2px solid #0DB8DE;
    outline: 0;
    background-color: #1A2226;
    color: #ECF0F5;
}

input:focus {
    outline: none;
    box-shadow: 0 0 0;
}

label {
    margin-bottom: 0px;
}

.form-control-label {
    font-size: 10px;
    color: #6C6C6C;
    font-weight: bold;
    letter-spacing: 1px;
}

.btn-outline-primary {
    border-color: #0DB8DE;
    color: #0DB8DE;
    border-radius: 0px;
    font-weight: bold;
    letter-spacing: 1px;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

.btn-outline-primary:hover {
    background-color: #0DB8DE;
    right: 0px;
}

.login-btm {
    float: left;
}

.login-button {
    padding-right: 0px;
    text-align: right;
    margin-bottom: 25px;
}

.login-text {
    text-align: left;
    padding-left: 0px;
    color: #A2A4A4;
}

.loginbttm {
    padding: 0px;
}
</style>

</head>

<body>
    <!-- Start Main Top -->
    <div class="main-top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<div class="custom-select-box">
                       
                    </div>
                    <div class="right-phone-box">
                        <p>Call US :- <a href="#"> +11 9921580459</a></p>
                    </div>
                    <div class="our-link">
                        <ul>
                            <li><a href="#"><i class="fa fa-user s_color"></i> My Account</a></li>
                            <li><a href="contact-us.html"><i class="fas fa-location-arrow"></i> Our location</a></li>
                            <li><a href="contact-us.html"><i class="fas fa-headset"></i> Contact Us</a></li>
                             <li><a href="about.html"><i class="fas fa-headset"></i> About Us</a></li>
                                                         <li><a href="https://mahadbtmahait.gov.in/Farmer/Login/Login"><i class="fas fa-headset"></i> Schemes</a></li>
                            <li><a href="https://www.youtube.com/watch?v=hy-4xcsOoFQ"><i class="fas fa-headset"></i> Strategy</a></li>
                             <li><a  href="login.html" data-toggle="modal" data-target="#logoutModalU">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a></li>
                        </ul>
                    </div>
                </div>
                
                    <div class="text-slid-box">
                        <div id="offer-box" class="carouselTicker">
                            <ul class="offer-box">
                                
                                <li>
                                    <i class="fab fa-opencart"></i> 50% - 80% off on Vegetables
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> Off 10%! Shop Vegetables
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> Off 50%! Shop Now
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> Off 10%! Shop Vegetables
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> 50% - 80% off on Vegetables
                                </li>
                                
                                <li>
                                    <i class="fab fa-opencart"></i> Off 50%! Shop Now 
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<div class="login-box">
			  
					</div>
					
					
                </div>
                </div>
                
            </div>
        </div>
    
    <!-- End Main Top -->

    <!-- Start Main Top -->
    <header class="main-header">
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                    <a class="navbar-brand" href="index.html"><img src="images/Farmersmartlogo1.jpg" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
						<li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="about.html">About Us</a></li>
					
						<li class="nav-item"><a class="nav-link" href="gallery.html">Gallery</a></li>
						<li class="nav-item"><a class="nav-link" href="contact-us.html">Contact Us</a></li>
                    <li class="nav-item">	<form action="Cart"  method="get"><input type="submit" name="cart" value="Cart"></form></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Start Atribute Navigation -->
                
                <!-- End Atribute Navigation -->
            </div>
            <!-- Start Side Menu -->
           
        <!-- End Navigation -->
    </header>
    <!-- End Main Top -->

    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->

    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
               
                    <h2>  welcome <% 
              
                String uname=(String)session.getAttribute("uname"); out.print(uname);
                                    		%> </h2> 
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Shop</a></li>
                        <li class="breadcrumb-item active">My Account</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->


<form >
</form>
    <!-- Start My Account  -->
   <div class="products-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                        <h1>Our Gallery</h1>
                        <p>This is our gallery</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="special-menu text-center">
                        <div class="button-group filter-button-group">
                            <button class="active" data-filter="*">All</button>
                            <button data-filter=".bulbs">Daily Vegetables</button>
                            <button data-filter=".fruits">Fruits</button>
							<button data-filter=".seasonal-fruits">Sesonal Fruits</button>
							<button data-filter=".root-and-tuberous">Root and tuberous</button>
							<button data-filter=".leafy-veg">Leafy vegetables</button>
							
                        </div>
                    </div>
                </div>
            </div>

            <div class="row special-list">
                <div class="col-lg-3 col-md-6 special-grid bulbs">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                                <p class="sale">Sale</p>
                            </div>
                            <img src="images/gallery-img-01.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                              
                           <a class="cart" href="#">Sponge Gourd</a>  
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid fruits">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/gallery-img-02.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                           <a class="cart" href="#">Tomatoes</a>  
                                
                            </div>
                        </div>                        
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid bulbs">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/gallery-img-03.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                            <a class="cart" href="#">Pepper</a>  
                                                                
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid fruits">
                    <div class="products-single fix">
                        <div class="box-img-hover">                            
                            <img src="images/apple.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                            <a class="cart" href="#">Apple</a>  
                                                                
                            </div>
                        </div>                        
                    </div>
                </div>
				<div class="col-lg-3 col-md-6 special-grid fruits">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/Banana.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                	      <a class="cart" href="#">Banana</a>  
                                
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid bulbs">
                    <div class="products-single fix">
                        <div class="box-img-hover">                            
                            <img src="images/Cauliflower.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                	      <a class="cart" href="#">Cauliflower</a>  
                                
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid leafy-veg">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/spinach.png" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                	      <a class="cart" href="#">Spinich</a>  
                                
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid seasonal-fruits">
                    <div class="products-single fix">
                        <div class="box-img-hover">                            
                            <img src="images/watermelon.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                          <a class="cart" href="#">Watermelon</a>  
                                
                            </div>
                        </div>                        
                    </div>
                </div>
				
				<div class="col-lg-3 col-md-6 special-grid seasonal-fruits">
                    <div class="products-single fix">
                        <div class="box-img-hover">                            
                            <img src="images/strawberries.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                	      <a class="cart" href="#">Strawberries</a>  

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid root-and-tuberous">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/potatoes.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                 	      <a class="cart" href="#">Potatoes</a>  
                                
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid bulbs">
                    <div class="products-single fix">
                        <div class="box-img-hover">                           
                            <img src="images/pumpkin.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                  	      <a class="cart" href="#">Pumpkin</a>  
   
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 special-grid podded-vegetables">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/gallery-img-12.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                   	      <a class="cart" href="#">Green Peas</a>  
                                
                            </div>
                        </div>                        
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6 special-grid fruits">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/instagram-img-05.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                   	      <a class="cart" href="#">Cherry</a>  
                                
                            </div>
                        </div>                        
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6 special-grid fruits">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/oranges.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                   	      <a class="cart" href="#">Oranges</a>  
                   	     
                                
                            </div>
                        </div>                        
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6 special-grid leafy-veg">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/fenugreek.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                   	      <a class="cart" href="#">Fenugreek</a>  
                                
                            </div>
                        </div>                        
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6 special-grid root-and-tuberous">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/carrot.png" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                   	      <a class="cart" href="#">Carrot</a>  
                                
                            </div>
                        </div>                        
                    </div>
                </div>
                
                
                <div class="col-lg-3 col-md-6 special-grid root-and-tuberous">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/sweetpotato.png" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                   	      <a class="cart" href="#">Sweet Potato</a>  
                                
                            </div>
                        </div>                        
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6 special-grid bulbs">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/garlic.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                   	      <a class="cart" href="#">Garlic</a>  
                                
                            </div>
                        </div>                        
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6 special-grid bulbs">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/cucumber.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                   	      <a class="cart" href="#">Cucumber</a>  
                                
                            </div>
                        </div>                        
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6 special-grid fruits">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/lemon.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                   	      <a class="cart" href="#">lemon</a>  
                                
                            </div>
                        </div>                        
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6 special-grid fruits">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/pineapple.png" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                   	      <a class="cart" href="#">Pineapples</a>  
                                
                            </div>
                        </div>                        
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 special-grid seasonal-fruits">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/grapes.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                   	      <a class="cart" href="#">Grapes</a>  
                                
                            </div>
                        </div>                        
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6 special-grid fruits">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/dragonfruit.jpg" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                   	      <a class="cart" href="#">Dragon Fruit</a>  
                                
                            </div>
                        </div>                        
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6 special-grid fruits">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <img src="images/kiwi.png" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                   	      <a class="cart" href="#">Kiwi</a>  
                                
                            </div>
                        </div>                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Gallery  -->
  <div class="row">
  <div class="signin-form">
    <form action="Store" method="get">
		<h2>Buy now</h2>
		<div class="form-group">
        	 <input type="checkbox" id="vehicle1" name="spongegourd" value="30">
             <label for="vehicle1"> Sponge Gourd   Rs- 30</label>
  
             <select name="Amount1" id="amount">
  
				  <option value="1">1</option>
				  <option value="2">2</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
             </select>
        </div>
        
        <div class="form-group">
        	 <input type="checkbox" id="vehicle1" name="tomatoes" value="50">
             <label for="vehicle1"> tomatoes   Rs- 50</label>
  
             <select name="Amount2" id="amount">
  
				  <option value="1">1</option>
				  <option value="2">2</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
             </select>
        </div>
        
        <div class="form-group">
        	 <input type="checkbox" id="vehicle1" name="pepper" value="40">
             <label for="vehicle1"> Pepper   Rs- 40</label>
  
             <select name="Amount3" id="amount">
  
				  <option value="1">1</option>
				  <option value="2">2</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
             </select>
        </div>
        
        <div class="form-group">
        	 <input type="checkbox" id="vehicle1" name="apple" value="50">
             <label for="vehicle4"> Apple   Rs- 50</label>
  
             <select name="Amount4" id="amount">
  
				  <option value="1">1</option>
				  <option value="2">2</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
             </select>
        </div>
        
        <div class="form-group">
        	 <input type="checkbox" id="vehicle1" name="banana" value="50">
             <label for="vehicle5"> Banana   Rs- 50</label>
  
             <select name="Amount5" id="amount">
  
				  <option value="1">1</option>
				  <option value="2">2</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
             </select>
        </div>
        
        <div class="form-group">
        	 <input type="checkbox" id="vehicle1" name="greenpeas" value="40">
             <label for="vehicle6"> Greenpeas   Rs- 40</label>
  
             <select name="Amount6" id="amount">
  
				  <option value="1">1</option>
				  <option value="2">2</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
             </select>
        </div>
        
        <div class="form-group">
        	 <input type="checkbox" id="vehicle1" name="Cauliflower" value="20">
             <label for="vehicle1"> Cauliflower   Rs- 20</label>
  
             <select name="Amount7" id="amount">
  
				  <option value="1">1</option>
				  <option value="2">2</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
             </select>
        </div>
        
        <div class="form-group">
        	 <input type="checkbox" id="vehicle1" name="Watermelon" value="100">
             <label for="vehicle1"> Watermelon   Rs- 100</label>
  
             <select name="Amount8" id="amount">
  
				  <option value="1">1</option>
				  <option value="2">2</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
             </select>
        </div>
        
        <div class="form-group">
        	 <input type="checkbox" id="vehicle1" name="orange" value="70">
             <label for="vehicle1"> orange   Rs- 70</label>
  
             <select name="Amount9" id="amount">
  
				  <option value="1">1</option>
				  <option value="2">2</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
             </select>
        </div>
        
        
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Buy Now</button>
        </div>
    </form>

</div>
<div class="signin-form">
    <form action="AddCart" method="get">
		<h2>Add To Cart</h2>
		
       
        <div class="form-group">
        	  <input type="checkbox" id="vehicle1" name="spongegourd" value="spongegourd">
             <label for="vehicle1"> Sponge Gourd   Rs- 30</label>
  
        </div>
		<div class="form-group">
            <input type="checkbox" id="vehicle1" name="tomatoes" value="tomatoes">
             <label for="vehicle1"> tomatoes   Rs- 50</label>
        </div>
        <div class="form-group">
         <input type="checkbox" id="vehicle1" name="pepper" value="pepper">
             <label for="vehicle1"> Pepper   Rs- 40</label>
	      
       </div>
       <div class="form-group">
         <input type="checkbox" id="vehicle1" name="apple" value="apple">
             <label for="vehicle4"> Apple   Rs- 50</label>
  
       </div>
       <div class="form-group">
         <input type="checkbox" id="vehicle1" name="banana" value="banana">
             <label for="vehicle5"> Banana   Rs- 50</label>
       </div>
       <div class="form-group">
         <input type="checkbox" id="vehicle1" name="greenpeas" value="greenpeas">
             <label for="vehicle6"> Greenpeas   Rs- 40</label>
  
       </div>
       <div class="form-group">
          <input type="checkbox" id="vehicle1" name="Cauliflower" value="Cauliflower">
             <label for="vehicle1"> Cauliflower   Rs- 20</label>
       </div>
       <div class="form-group">
        <input type="checkbox" id="vehicle1" name="Watermelon" value="Watermelon">
             <label for="vehicle1"> Watermelon   Rs- 100</label>
  
       </div>
       <div class="form-group">
         <input type="checkbox" id="vehicle1" name="orange" value="orange">
             <label for="vehicle1"> orange   Rs- 70</label>
	      
       </div>
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Add to cart</button>
        </div>
    </form>

</div>
</div>
<div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-2"></div>
            <div class="col-lg-6 col-md-8 login-box">
                <div class="col-lg-12 login-key">
                    <i class="fa fa-key" aria-hidden="true"></i>
                </div>
                <div class="col-lg-12 login-title">
              Update Cart
                </div>

                <div class="col-lg-12 login-form">
                    <div class="col-lg-12 login-form">
                        <form action="UpdateCat" action="get">
                            <div class="form-group">
                            <input type="checkbox"  name="spongegourd" value="spongegourd" class="form-control">

                                <label class="form-control-label">Sponge Gourd</label>
                       
                            </div>
                            <div class="form-group">
                               <input type="checkbox"  name="tomatoes" value="tomatoes" class="form-control">

                                <label class="form-control-label">Tomatoes</label>
                       
                            </div>
                            <div class="form-group">
                               <input type="checkbox"  name="pepper" value="pepper" class="form-control">

                                <label class="form-control-label">Pepper</label>
                       
                            </div>
                             <div class="form-group">
                               <input type="checkbox"  name="apple" value="apple" class="form-control">

                                <label class="form-control-label">apple</label>
                       
                            </div>
                             <div class="form-group">
                               <input type="checkbox"  name="banana" value="banana" class="form-control">

                                <label class="form-control-label">Banana</label>
                       
                            </div>
                             <div class="form-group">
                               <input type="checkbox"  name="greenpeas" value="greenpeas" class="form-control">

                                <label class="form-control-label">Greenpeas</label>
                       
                            </div>
                             <div class="form-group">
                               <input type="checkbox"  name="Cauliflower" value="Cauliflower" class="form-control">

                                <label class="form-control-label">Cauliflower</label>
                       
                            </div>
                             <div class="form-group">
                               <input type="checkbox"  name="Watermelon" value="Watermelon" class="form-control">

                                <label class="form-control-label">Watermelon</label>
                       
                            </div>
                             <div class="form-group">
                               <input type="checkbox"  name="orange" value="orange" class="form-control">

                                <label class="form-control-label">orange</label>
                       
                            </div>

                            <div class="col-lg-12 loginbttm">
                                <div class="col-lg-6 login-btm login-text">
                                    <!-- Error Message -->
                                </div>
                                <div class="col-lg-6 login-btm login-button">
                                    <button type="submit" class="btn btn-outline-primary">Update Cart</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-3 col-md-2"></div>
            </div>
        </div>
        </div>
        <br><br>
<!-- partial -->
  

   <div class="instagram-box">
        <div class="main-instagram owl-carousel owl-theme">
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-01.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-02.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-03.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-04.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-05.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-06.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-07.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-08.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-09.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-05.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Instagram Feed  -->


    <!-- Start Footer  -->
    <footer>
        <div class="footer-main">
            <div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-top-box">
							<h3>Business Time</h3>
							<ul class="list-time">
								<li>Monday - Friday: 08.00am to 05.00pm</li> <li>Saturday: 10.00am to 08.00pm</li> <li>Sunday: <span>Closed</span></li>
							</ul>
						</div>
					</div>
					
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-top-box">
							<h3>Social Media</h3>
							<p>Get in touch with us with our social media handels.</p>
							<ul>
                                <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                            </ul>
						</div>
					</div>
				</div>
				<hr>
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-widget">
                             <h4>About FarmersMart</h4>
                            <p>FarmersMart is a growing and free platform for all the Indian farmers to grow their reach and gain their profits as they deserve.We supply you fresh vegies and fruits from the farmers itself making them the whole business person without intermediaries</p> 
							<p>Eat healthy and fresh and stay fit is our objective for all of you!! </p> 
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link">
                            <h4>Information</h4>
                            <ul>
                                <li><a href="about.html">About Us</a></li>
                                <li>
                               <a  href="login.html" data-toggle="modal" data-target="#logoutModal">
                                  
                                  Terms &amp; Conditions
                                </a></li>
                                <li><a href="contact-us.html">Our Sitemap</a></li>
                                
                               <li>
                               <a  href="login.html" data-toggle="modal" data-target="#logoutModal1">
                                  
                               Delivery information
                                </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link-contact">
                            <h4>Contact Us</h4>
                            <ul>
                                <li>
                                    <p><i class="fas fa-map-marker-alt"></i>Address: 666, Upper Indiranagar, <br>Bibvewadi, Pune,<br> Maharashtra 411037 </p>
                                </li>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+191-9921580459">+91 9921580459</a></p>
                                </li>
                                <li>
                                    <p><i class="fas fa-envelope"></i>Email: <a href="mailto:farmers.mart@gmail.com">farmers.mart@gmail.com</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer  -->

    <!-- Start copyright  -->
    <div class="footer-copyright">
        <p class="footer-company">All Rights Reserved. &copy;  <a href="#">FarmersMart</a> Design By : Aarti Dhikale ,Nehali patel, Samiksha Dhumal and thankful for guidance of Sangeeta rajan mam
</p>
    </div>
    <!-- End copyright  -->
 <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Terms and Conditions</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">As a visitor to the Site/ Customer you are advised to please read the Term & Conditions carefully. 
As part of the registration process we may collect the following personally identifiable information about you: 
Name including first and last name, alternate email address, mobile phone number and contact details.
Services of the Site would be available to only select geographies in India.
If you are a minor i.e. under the age of 18 years but at least 13 years of age you may use the Site only under the supervision of a parent
or legal guardian Terms and Conditions
All shoppers have to register and login for placing orders on the Site.
You have to keep your account and registration details current and correct for communications related to your purchases from the site. 
Gaining unauthorized access to other computer systems.
Interfering with any other person's use or enjoyment of the Site.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal"><a href="contact-us.html">Thank you</a></button>
                  
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="logoutModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Delivery information</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Apart from quality, we also believe in making fresh foods available to all and thus, you can find very nominal pricing while shopping online with us.
The freshness of the produce being delivered to you is unquestionable, even in the case of standard delivery. 
We choose our produce with as much care as you do. Carefully sorted, meticulously cleaned and carefully packed, 
fruits and vegetables from our online store reach you the day you order them. 
We offers delivery in Pune, delivery in Nashik and most other major cities in Maharashtra.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal"><a href="contact-us.html">Thank you</a></button>
                  
                </div>
            </div>
        </div>
    </div>
    
     <div class="modal fade" id="logoutModalU" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

    <!-- ALL JS FILES -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/jquery.superslides.min.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/inewsticker.js"></script>
    <script src="js/bootsnav.js."></script>
    <script src="js/images-loded.min.js"></script>
    <script src="js/isotope.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/baguetteBox.min.js"></script>
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>