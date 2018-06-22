<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
   		<title>Faro - Mediterranean Cuisine</title>
     	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    	<!-- raleway font -->
    	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700|Raleway" rel="stylesheet">
    	<!-- bootstrap -->
    	<link href="<c:url value="/resources/faro/css/bootstrap.min.css" />" rel="stylesheet" >
    	<!-- open-iconic-bootstrap -->
    	<link href="<c:url value="/resources/faro/css/open-iconic-bootstrap.min.css" />" rel="stylesheet" >
    	<!-- animate css -->
    	<link href="<c:url value="/resources/faro/css/animate.css" />" rel="stylesheet" >
    	<!-- owl caroul -->
    	<link href="<c:url value="/resources/faro/css/owl.carousel.min.css" />" rel="stylesheet" >
    	<!-- owl theme -->
    	<link href="<c:url value="/resources/faro/css/owl.theme.default.min.css" />" rel="stylesheet" >
    	<!-- magnific -->
    	<link href="<c:url value="/resources/faro/css/magnific-popup.css" />" rel="stylesheet" >
    	<!-- datepicker -->
    	<link href="<c:url value="/resources/faro/css/bootstrap-datepicker.css" />" rel="stylesheet" >
    	<!-- timepicker -->
    	<link href="<c:url value="/resources/faro/css/jquery.timepicker.css" />" rel="stylesheet" >
    	<!-- icomoon -->
    	<link href="<c:url value="/resources/faro/css/icomoon.css" />" rel="stylesheet" >
    	<!-- style -->
    	<link href="<c:url value="/resources/faro/css/style.css" />" rel="stylesheet" >
    </head>
    
    <body data-spy="scroll" data-target="#site-navbar" data-offset="200">
    	<!-- nav begins-->
    	<nav class="navbar navbar-expand-lg navbar-dark site_navbar bg-dark site-navbar-light" id="site-navbar">
      		<div class="container">
        		<a class="navbar-brand" href="index.html">FARO</a>
        		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#site-nav" aria-controls="site-nav" aria-expanded="false" aria-label="Toggle navigation">
          			<span class="oi oi-menu"></span> Menu
        		</button>

	        	<div class="collapse navbar-collapse" id="site-nav">
	          		<ul class="navbar-nav ml-auto">
	            		<li class="nav-item active"><a href="#section-home" class="nav-link">Home</a></li>
	            		<li class="nav-item"><a href="#section-about" class="nav-link">About</a></li>
	            		<li class="nav-item"><a href="#section-offer" class="nav-link">Offer</a></li>
	            		<li class="nav-item"><a href="#section-menu" class="nav-link">Menu</a></li>
	            		<li class="nav-item"><a href="#section-contact" class="nav-link">Contact</a></li>
	          		</ul>
	        	</div>
      		</div>
    	</nav>
    	<!-- nav ends -->

    	<!-- landing image begins -->
    	<section class="site-cover" style="background-image: url(images/faro_bg.jpg);" id="section-home">
      		<div class="container">
        		<div class="row align-items-center justify-content-center text-center site-vh-100">
          			<div class="col-md-12">
            			<h1 class="site-heading site-animate mb-3">Welcome To Faro</h1>
            			<h2 class="h5 site-subheading mb-5 site-animate">Visit us for our unique mediterranean cuisine &amp; fresh drinks.</h2>    
            				<p><a href="https://colorlib.com/" target="_blank" class="btn btn-outline-white btn-lg site-animate" data-toggle="modal" data-target="#reservationModal">Reserve a Table</a></p>
          			</div>
        		</div>
      		</div>
    	</section>
    	<!-- landing image ends -->
    
    	<!-- welcome page begins -->
    	<section class="site-section" id="section-about">
      		<div class="container">
        		<div class="row">
          			<div class="col-md-5 site-animate mb-5">
            			<h4 class="site-sub-title">Our Story</h4>
            			<h2 class="site-primary-title display-4">Welcome</h2>
            				<p>Faro offers an innovative mezze menu inspired by Turkish, Greek and Lebanese cuisines served up in a mediterranean setting.</p>

            				<p class="mb-4">Building on three-generations of knowledge of Mediterranean cooking and years of research and travel, the menu features shared small plates of authentic and innovative fare, creative cocktails, and unique Mediterranean wines.</p>
          			</div>
          			<div class="col-md-1"></div>
          			<div class="col-md-6 site-animate img" data-animate-effect="fadeInRight">
            			<img src="images/chef_pepin.jpg" alt="Free Template by colorlib.com" class="img-fluid">
          			</div>
        		</div>
      		</div>
    	</section>
    	<!-- welcome page ends -->
    
		<!-- summer menu begins -->
    	<section class="site-section bg-light" id="section-offer">
      		<div class="container">
        		<div class="row">
          			<div class="col-md-12 text-center mb-5 site-animate">
            			<h4 class="site-sub-title">Our Offers</h4>
            			<h2 class="display-4">Summer Menu</h2>
            				<div class="row justify-content-center">
              					<div class="col-md-7">
                					<p class="lead">Small plate shareables to enjoy over a glass of wine and good conversation</p>
              					</div>
            				</div>
          			</div>
          
          			<div class="col-md-12">
            			<div class="owl-carousel site-owl">
              				<div class="item">
                				<div class="media d-block mb-4 text-center site-media site-animate border-0">
                  					<img src="images/summer_2.jpg" alt="Lamb Shakshuka" class="img-fluid">
                  					<div class="media-body p-md-5 p-4">
                    					<h5 class="text-primary">$19.50</h5>
						              	<h5 class="mt-0 h4">Lamb Shakshuka</h5>
						      			<p class="mb-4">Lamb<br>Baked Eggs<br>Cherry Tomato Sauce</p>

                  					</div>
                				</div>
              				</div>
              				
              				<div class="item">
                				<div class="media d-block mb-4 text-center site-media site-animate border-0">
                    				<img src="images/summer_1.jpg" alt="Baba Ghanoush" class="img-fluid">
                    				<div class="media-body p-md-5 p-4">       
					                    <h5 class="text-primary">$9.50</h5>
					                    <h5 class="mt-0 h4">Baba Ghanoush</h5>
					                    <p class="mb-4">Eggplant<br>Olive Oil<br>Pita Bread</p>
                  					</div>
                				</div>
              				</div>
              
              				<div class="item">
                				<div class="media d-block mb-4 text-center site-media site-animate border-0">
                  					<img src="images/summer_3.jpg" alt="Greek Disco Fries" class="img-fluid">
                  					<div class="media-body p-md-5 p-4">
					                    <h5 class="text-primary">$11.50</h5>
					                    <h5 class="mt-0 h4">Greek Disco Fries</h5>
					                    <p class="mb-4">Alexia Fries<br>Gruyere Cheese<br>Worcestershire sauce </p>

                  					</div>
                				</div>
              				</div>

              				<div class="item">
                				<div class="media d-block mb-4 text-center site-media site-animate border-0">
					          		<img src="images/summer_4.jpg" alt="Put an Egg on It" class="img-fluid">
					            	<div class="media-body p-md-5 p-4">
                    					<h5 class="text-primary">$12.50</h5>
                    					<h5 class="mt-0 h4">Put an Egg on it</h5>
                    					<p class="mb-4">Kobe Beef<br>Applewoood Smoked Bacon<br>Fries</p>

                  					</div>
                				</div>
              				</div>

              				<div class="item">
                				<div class="media d-block mb-4 text-center site-media site-animate border-0">
                  					<img src="images/summer_5.jpg" alt="Fried Chicken" class="img-fluid">
                  					<div class="media-body p-md-5 p-4">
                    					<h5 class="text-primary">$14.50</h5>
                    					<h5 class="mt-0 h4">Fried Chicken</h5>
                    					<p class="mb-4">Fried Chicken<br>Lemon and Cucumber Sauce<br>Parsley</p>

                  					</div>
                				</div>
              				</div>
              
              				<div class="item">
                				<div class="media d-block mb-4 text-center site-media site-animate border-0">
                  					<img src="images/summer_6.jpg" alt="Blacked Cod" class="img-fluid">
                  					<div class="media-body p-md-5 p-4">
                    					<h5 class="text-primary">$23.50</h5>
                    					<h5 class="mt-0 h4">Blacked Cod</h5>
                    					<p class="mb-4">Blackened Cod<br>Pineapple<br>Apple Cider Vinegar</p>

                  					</div>
                				</div>
              				</div>

              				<div class="item">
                				<div class="media d-block mb-4 text-center site-media site-animate border-0">
                  					<img src="images/summer_7.jpg" alt="Spanakopita" class="img-fluid">
                  					<div class="media-body p-md-5 p-4">
					                    <h5 class="text-primary">$22.50</h5>
					                    <h5 class="mt-0 h4">Spanakopita</h5>
					                    <p class="mb-4">House-Made Phyllo<br>Spinach<br>Ricotta</p>

                  					</div>
                				</div>
              				</div>

              				<div class="item">
                				<div class="media d-block mb-4 text-center site-media site-animate border-0">
                  					<img src="images/summer_8.jpg" alt="Sea Scallops" class="img-fluid">
                  					<div class="media-body p-md-5 p-4">
                    					<h5 class="text-primary">$19.50</h5>
                    					<h5 class="mt-0 h4">Sea Scallops</h5>
                    					<p class="mb-4">Dill Yogurt<br>Sugar Snap Peas<br>Sesame Rose Spice</p>

                  					</div>
                				</div>
              				</div>
              
              				<div class="item">
                				<div class="media d-block mb-4 text-center site-media site-animate border-0">
                  					<img src="images/summer_9.jpg" alt="Lamb Eggplant" class="img-fluid">
                  					<div class="media-body p-md-5 p-4">
					                    <h5 class="text-primary">$17.00</h5>
					                    <h5 class="mt-0 h4">Lamb Eggplant</h5>
					                    <p class="mb-4">Roasted Egg Plant<br>Ground Jamison Lamb<br>Tomato Sauce</p>

                  					</div>
                				</div>
              				</div>

            			</div>
          			</div>
          
        		</div>
      		</div>
    	</section>
    	<!-- summer menu ends -->

		<!-- menu begins -->
    	<section class="site-section" id="section-menu">
      		<div class="container">
        		<div class="row">
          			<div class="col-md-12 text-center mb-5 site-animate">
            			<h2 class="display-4">Delicious Menu</h2>
            			<div class="row justify-content-center">
              				<div class="col-md-7">
                				<p class="lead">Get a glimpse of our exquisite menu and join us for lunch or dinner</p>
              				</div>
            			</div>
          			</div>

          			<div class="col-md-12 text-center">
            			<ul class="nav site-tab-nav nav-pills mb-5" id="pills-tab" role="tablist">
              				<li class="nav-item site-animate">
                				<a class="nav-link active" id="pills-breakfast-tab" data-toggle="pill" href="#pills-breakfast" role="tab" aria-controls="pills-breakfast" aria-selected="true">Lunch</a>
              				</li>
              				<li class="nav-item site-animate">
                				<a class="nav-link" id="pills-lunch-tab" data-toggle="pill" href="#pills-lunch" role="tab" aria-controls="pills-lunch" aria-selected="false">Dinner</a>
              				</li>
              				<li class="nav-item site-animate">
                				<a class="nav-link" id="pills-dinner-tab" data-toggle="pill" href="#pills-dinner" role="tab" aria-controls="pills-dinner" aria-selected="false">Cocktails</a>
              				</li>
            			</ul>

            			<div class="tab-content text-left">
            			
            				<!-- lunch -->
		              		<div class="tab-pane fade show active" id="pills-breakfast" role="tabpanel" aria-labelledby="pills-breakfast-tab">
		                		<div class="row">
		                  			<div class="col-md-6 site-animate">
		                    			<div class="media menu-item">
		                      				<img class="mr-3" src="images/menu_1.jpg" class="img-fluid" alt="Hünkãr Beğendi">
		                      					<div class="media-body">
		                        					<h5 class="mt-0">Hünkãr Beğendi</h5>
		                        					<p>Traditional Turkish-braised lamb shank<br>Eggplant-kefalograviera puree</p>
		                        					<h6 class="text-primary menu-price">$35.50</h6>
		                      					</div>
		                    			</div>

                    					<div class="media menu-item">
                      						<img class="mr-3" src="images/menu_2.jpg" class="img-fluid" alt="Kofte Burger">
                      							<div class="media-body">
                        							<h5 class="mt-0">Kofte Burger</h5>
							                        <p>Kobe Beef<br> Smoked yogurt tzatzik</p>
							                        <h6 class="text-primary menu-price">$16.00</h6>
                      							</div>
                    					</div>

                    					<div class="media menu-item">
					                   		<img class="mr-3" src="images/menu_3.jpg" class="img-fluid" alt="Hommus Ma Lahm">
					                      		<div class="media-body">
					                        		<h5 class="mt-0">Hommus Ma Lahm</h5>
					                        		<p>Hommus Ma Lahm<br>House-pickled vegetables</p>
					                        		<h6 class="text-primary menu-price">$14.50</h6>
					                      		</div>
					                    </div>
                  					</div>
                  					
                  					<div class="col-md-6 site-animate">
				                    	<div class="media menu-item">
				                      		<img class="mr-3" src="images/menu_4.jpg" class="img-fluid" alt="Blacked Cod">
				                      			<div class="media-body">
				                        			<h5 class="mt-0">Blacked Cod</h5>
				                        			<p>Blackened Cod<br>Apple Cider Vinegar</br></p>
				                        			<h6 class="text-primary menu-price">$35.50</h6>
				                      			</div>
				                    	</div>

                    					<div class="media menu-item">
                      						<img class="mr-3" src="images/menu_5.jpg" class="img-fluid" alt="Sea Scallops">
                      							<div class="media-body">
					                        		<h5 class="mt-0">Sea Scallops</h5>
					                        		<p>Dill Yogurt<br>Sesame Rose Spice</p>
					                        		<h6 class="text-primary menu-price">$19.50</h6>
					                      		</div>
					                    </div>

                    					<div class="media menu-item">
					                   		<img class="mr-3" src="images/menu_6.jpg" class="img-fluid" alt="Bantijan Bil Laban">
					                      		<div class="media-body">
					                        		<h5 class="mt-0">Bantijan Bil Laban</h5>
					                        		<p>Crispy eggplant<br>Roasted garlic-yogurt</p>
					                        		<h6 class="text-primary menu-price">$18.50</h6>
					                      		</div>
					                    </div>
                  					</div>
                				</div>
              				</div>
              				
              				<!-- dinner -->
			              	<div class="tab-pane fade" id="pills-lunch" role="tabpanel" aria-labelledby="pills-lunch-tab">
			                	<div class="row">
			                  		<div class="col-md-6 site-animate">
			                  		
			                    		<div class="media menu-item">
			                      			<img class="mr-3" src="images/menu_7.jpg" class="img-fluid" alt="Lamb Shakshuka">
			                      			<div class="media-body">
			                        			<h5 class="mt-0">Lamb Shakshuka</h5>
			                        			<p>Lamb<br>Cherry Tomato Sauce</p>
			                        			<h6 class="text-primary menu-price">$19.50</h6>
			                      			</div>
			                    		</div>

                    				<div class="media menu-item">
                      					<img class="mr-3" src="images/menu_8.jpg" class="img-fluid" alt="Baba Ghanoush">
                      						<div class="media-body">
					                   			<h5 class="mt-0">Baba Ghanoush</h5>
					                        	<p>Eggplant<br>Pita Bread</p>
					                        	<h6 class="text-primary menu-price">$9.50</h6>
                      						</div>
                    				</div>

                    				<div class="media menu-item">
				                      	<img class="mr-3" src="images/menu_9.jpg" class="img-fluid" alt="Lamb Eggplant">
				                      		<div class="media-body">
				                        		<h5 class="mt-0">Lamb Eggplant</h5>
				                        		<p>Roasted Egg Plant<br>Ground Jamison Lamb</p>
				                        		<h6 class="text-primary menu-price">$17.00</h6>
				                      		</div>
				                    </div>
                  				</div>
                  				
                  				<div class="col-md-6 site-animate">
                    				<div class="media menu-item">
				                    	<img class="mr-3" src="images/menu_10.jpg" class="img-fluid" alt="Fattoush">
				                      		<div class="media-body">
						                        <h5 class="mt-0">Fattoush</h5>
						                        <p>Vegetable Assortment<br>Pomegranate Vinegar dressing</p>
						                        <h6 class="text-primary menu-price">$9.00</h6>
				                      		</div>
				                	</div>

				                    <div class="media menu-item">
				                      	<img class="mr-3" src="images/menu_11.jpg" class="img-fluid" alt="Greek Disco Fries">
				                      		<div class="media-body">
						                        <h5 class="mt-0">Greek Disco Fries</h5>
						                        <p>Alexia Fries<br>Gruyere Cheese</p>
				                        		<h6 class="text-primary menu-price">$11.50</h6>
				                      		</div>
				                	</div>

                    				<div class="media menu-item">
                      					<img class="mr-3" src="images/menu_12.jpg" class="img-fluid" alt="Fried Chicken">
                      						<div class="media-body">
						                        <h5 class="mt-0">Fried Chicken</h5>
						                        <p>Fried Chicken<br>Lemon and Cucumber Sauce</p>
						                        <h6 class="text-primary menu-price">$14.50</h6>
                      						</div>
                    				</div>
                  				</div>
                			</div>
              			</div>
              			
              			<!-- cocktails -->
              			<div class="tab-pane fade" id="pills-dinner" role="tabpanel" aria-labelledby="pills-dinner-tab">
		                	<div class="row">
		                  		<div class="col-md-6 site-animate">

				                    <div class="media menu-item">
				                      	<img class="mr-3" src="images/cocktail_1.jpg" class="img-fluid" alt="Reborn">
				                      		<div class="media-body">
						                        <h5 class="mt-0">Reborn</h5>
						                        <p>Tsipouro<br>Aquafaba<br>Cardamom Ashes</p>
						                        <h6 class="text-primary menu-price">$14.50</h6>
				                      		</div>
				                  	</div>

                    				<div class="media menu-item">
                      					<img class="mr-3" src="images/cocktail_2.jpg" class="img-fluid" alt="Greek Cosmo">
					                      	<div class="media-body">
					                        	<h5 class="mt-0">Greek Cosmo</h5>
					                        	<p>Haraki Tsikoudia<br>Cranberry Juice<br>Lime Juice</p>
					                        	<h6 class="text-primary menu-price">$12.50</h6>
					                      	</div>
					             	</div>

				                    <div class="media menu-item">
				                      	<img class="mr-3" src="images/cocktail_3.jpg" class="img-fluid" alt="Truffle Ash">
				                      		<div class="media-body">
				                        		<h5 class="mt-0">Truffle Ash</h5>
				                        		<p>Haraki Tsikoudi<br>Pineapple Juice<br>Truffle Dash</p>
				                        		<h6 class="text-primary menu-price">$14.50</h6>
				                      		</div>
				                 	</div>
                  				</div>
                  
	                  			<div class="col-md-6 site-animate">
	                    			<div class="media menu-item">
	                      				<img class="mr-3" src="images/cocktail_4.jpg" class="img-fluid" alt="Sidecar">
				                      		<div class="media-body">
						                        <h5 class="mt-0">Sidecar</h5>
						                        <p>Metaxa 7 Brandy<br>Lemon Juice<br>Triple sec</p>
						                        <h6 class="text-primary menu-price">$15.00</h6>
				                      		</div>
	                    			</div>

		                    		<div class="media menu-item">
				                      	<img class="mr-3" src="images/cocktail_5.jpg" class="img-fluid" alt="Spiced Orchard">
				                      		<div class="media-body">
				                        		<h5 class="mt-0">Spiced Orchard</h5>
				                        		<p>Royal Sea Vodka<br>Cinnamon<br>Apricot</p>
				                        		<h6 class="text-primary menu-price">$35.50</h6>
				                      		</div>
				                    </div>

		                    		<div class="media menu-item">
		                      			<img class="mr-3" src="images/cocktail_6.jpg" class="img-fluid" alt="New Fashioned">
		                      				<div class="media-body">
						                        <h5 class="mt-0">New Fashioned</h5>
						                        <p>Connemara Single Malt<br>Angostura Bitters<br>House Brown Syrup</p>
						                        <h6 class="text-primary menu-price">$18.50</h6>
		                      				</div>
                    					</div>
                  					</div>
                				</div>
              				</div>
            			</div>
					</div>
				</div>
      		</div>
    	</section>
    	<!-- menu ends -->

		<!-- contact begins -->
    	<section class="site-section bg-light" id="section-contact">
      		<div class="container">
        		<div class="row">

          			<div class="col-md-12 text-center mb-5 site-animate">
            			<h2 class="display-4">Get In Touch</h2>
            				<div class="row justify-content-center">
              					<div class="col-md-7">
                					<p class="lead">Say hello or let us know about any questions on our seasonal menu!</p>
              					</div>
            				</div>
          			</div>
					
					<!-- form -->
		          	<div class="col-md-7 mb-5 site-animate">
		            	<form action="" method="post">
		              		<div class="form-group">
		                		<label for="name" class="sr-only">Name</label>
		                		<input type="text" class="form-control" id="name" placeholder="Name">
		              		</div>
		              		<div class="form-group">
				                <label for="email" class="sr-only">Email</label>
				                <input type="text" class="form-control" id="email" placeholder="Email">
		              		</div>
		              		<div class="form-group">
				                <label for="message" class="sr-only">Message</label>
				                <textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Write your message"></textarea>
		              		</div>
		              		<div class="form-group">
		                		<input type="submit" class="btn btn-primary btn-lg" value="Send Message">
		              		</div>
		            	</form>
		          	</div>
		          	
		          	<!-- contact info -->
          			<div class="col-md-1"></div>
			        	<div class="col-md-4 site-animate">
			            	<p><img src="images/about_img_1.jpg" alt="" class="img-fluid"></p>
			            	<p class="text-black">
				              	Address: <br> 4781 Lee Hwy, Falls Church Virginia <br> 22042 United States <br> <br>
				              	Phone: <br> 703 786 7818 <br> <br>
				              	Email: <br> <a href="mailto:info@faro.com">info@faro.com</a>
			            	</p>
			         	</div>
        			</div>
      			</div>
   			</section>
   			
   		<!-- map -->
    	<div id="map"></div>
    	
    	<!-- footer begins -->
    	<footer class="site-footer site-bg-dark site-section">
	     	<div class="container">
	        	<div class="row mb-6">
	          		<div class="col-md-12">
	            		<div class="row">
	              			<div class="col-md-6 site-animate">
	                			<h2 class="site-heading-2">About Us</h2>
	                			<p>Faro offers an innovative mezze menu inspired by Turkish, Greek and Lebanese cuisines served up in a mediterranean setting.<br>
	                  			<br>Building on three-generations of knowledge of Mediterranean cooking and years of research and travel, the menu features shared small plates of authentic and innovative fare, creative cocktails, and unique Mediterranean wines.</p>
	              			</div>
	              			
		              		<div class="col-md-1"></div>
		                	<div class="col-md-4 site-animate">
		                  		<div class="site-footer-widget mb-6">
		                    		<h2 class="site-heading-2">The Restaurant</h2>
		                    		<ul class="list-unstyled">
					                    <li><a href="#section-about" class="py-2 d-block">About Us</a></li>
					                   	<li><a href="#section-offer" class="py-2 d-block">Summer Menu</a></li>
					                   	<li><a href="#section-menu" class="py-2 d-block">Our Menu</a></li>
					                 	<li><a href="#section-contact" class="py-2 d-block">Contact</a></li>
		                    		</ul>
		                  		</div>
		                	</div> 
	            		</div>
	          		</div>
        		</div>
        		
        		<!-- social media -->
        		<div class="row site-animate">
           			<div class="col-md-12 text-center">
            			<div class="site-footer-widget mb-4">
              				<ul class="site-footer-social list-unstyled ">
				                <li class="site-animate"><a href="#"><span class="icon-twitter"></span></a></li>
				                <li class="site-animate"><a href="#"><span class="icon-facebook"></span></a></li>
				                <li class="site-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              				</ul>
            			</div>
          			</div>
          			
          			<!-- copy -->
	          		<div class="col-md-12 text-center">
	            		<p>&copy; Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Powered by <a href="https://ertorrez.com" target="_blank">E.Ricardo Torrez</a></p>
	          		</div>
        		</div>
      		</div>
    	</footer>

    	<!-- reservstion modal begins-->
    	<div class="modal fade" id="reservationModal" tabindex="-1" role="dialog" aria-labelledby="reservationModalLabel" aria-hidden="true">
      		<div class="modal-dialog modal-lg" role="document">
        		<div class="modal-content">
          			<div class="modal-body">
            			<div class="row">
              				<div class="col-lg-12">
                				<div class="bg-image" style="background-image: url(images/reservation_1.jpg);"></div>
              				</div>
              				<div class="col-lg-12 p-5">
                				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  					<small>CLOSE </small><span aria-hidden="true">&times;</span>
                				</button>
                				<h1 class="mb-4">Reserve A Table</h1>  
                				
                				<!-- form -->
				                <form action="#" method="post">
				                  	<div class="row">
				                    	<div class="col-md-6 form-group">
					                      	<label for="m_fname">First Name</label>
					                      	<input type="text" class="form-control" id="m_fname">
				                    	</div>
				                    	<div class="col-md-6 form-group">
				                      		<label for="m_lname">Last Name</label>
				                      		<input type="text" class="form-control" id="m_lname">
				                    	</div>
				                  	</div>
				                  	
				                  	<div class="row">
				                    	<div class="col-md-12 form-group">
				                      		<label for="m_email">Email</label>
				                      		<input type="email" class="form-control" id="m_email">
				                    	</div>
				                  	</div>
				                  	
				                  	<div class="row">
				                    	<div class="col-md-6 form-group">
				                      		<label for="m_people">How Many People</label>
				                      		<select name="" id="m_people" class="form-control">
						                    	<option value="1">1 People</option>
						                  		<option value="2">2 People</option>
						                        <option value="3">3 People</option>
						                        <option value="4+">4+ People</option>
				                      		</select>
				                    	</div>
				                    	<div class="col-md-6 form-group">
				                      		<label for="m_phone">Phone</label>
				                      		<input type="text" class="form-control" id="m_phone">
				                    	</div>
				                  	</div>
				                  	
				                  	<div class="row">
				                    	<div class="col-md-6 form-group">
				                      		<label for="m_date">Date</label>
				                      		<input type="text" class="form-control" id="m_date">
				                   	 	</div>
				                    	<div class="col-md-6 form-group">
				                      		<label for="m_time">Time</label>
				                      		<input type="text" class="form-control" id="m_time">
				                    	</div>
				                  	</div>
				                  	
				                  	<div class="row">
				                    	<div class="col-md-12 form-group">
				                      		<label for="m_message">Message</label>
				                      		<textarea class="form-control" id="m_message" cols="30" rows="7"></textarea>
				                    	</div>
				                  	</div>
				                  
				                  	<div class="row">
				                    	<div class="col-md-12 form-group">
				                      		<input type="submit" class="btn btn-primary btn-lg btn-block" value="Reserve Now">
				                    	</div>
				                  	</div>
				          		</form>
              				</div>
            			</div>
          			</div>
        		</div>
      		</div>
    	</div>
    	<!-- registration ends -->

    	<!-- loader -->
<%-- 		<div id="site-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
 --%>

   <!--  <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>

    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    
    <script src="js/jquery.animateNumber.min.js"></script>
    

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJ-UwG2QhQze8fgx2B4KPAplCRT670Leo&sensor=false"></script>
    <script src="js/google-map.js"></script>

    <script src="js/main.js"></script>
 -->
    
  </body>
</html>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<body>
		<h3>Welcome to Faro</h3>
		<a href="/restaurant/login"><button>Admin</button></a>	

		<hr>
		<form action="/restaurant/newReservation" method="POST" >
		
			<label>First Name</label>
			<input type="text" name="firstName" /><br>
			<label>Last Name</label>
			<input type="text" name="lastName" /><br>
			<label>Email</label>
			<input type="text" name="email" /><br>
			<label>How Many People</label>
			<input type="number" name="sizeOfParty" /><br>
			<label>Phone</label>
			<input type="number" name="phone" /><br>
			<label>Date</label>		
			<input type="date" name="day" /><br>
			<label>Time</label>
			<select name="time">
				<option value="8:00 p.m.">8:00 p.m.</option>
				<option value="8:15 p.m.">8:15 p.m.</option>
				<option value="8:30 p.m.">8:30 p.m.</option>	
				<option value="8:45 p.m.">8:45 p.m.</option>	
				<option value="9:00 p.m.">9:00 p.m.</option>	
				<option value="9:15 p.m.">9:15 p.m.</option>	
				<option value="9:30 p.m.">9:30 p.m.</option>	
				<option value="9:45 p.m.">9:45 p.m.</option>	
				<option value="10:00 p.m.">10:00 p.m.</option>	
			</select><br>
			<label>Message</label>
			<input type="text" name="message" /><br>
			<input type="submit" value="Create!"/>
		</form>
		
		
			<form action="/message/new" method="POST">
           		<p>
               		<input type="text" placeholder="Name" required name="name">
              	</p>
              	<p>
                	<input type="text" placeholder="Email" required name="email">
               	</p>
               	<p>
              		<input type="text" placeholder="Message" required name="content">
              	</p>
              	<p>
               		<button class="w3-button w3-black" type="submit">
               			<i class="fa fa-paper-plane"></i> SEND MESSAGE
                  	</button>
               	</p>
         	</form>
	</body>
</html>