<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "/common/taglib.jsp" %>

<!doctype html>
<html lang="en-US">

<head>
   <!-- Required meta tags -->
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>Streamit</title>
   <%@ include file = "/common/user/head.jsp" %>
</head>
<body>
   <!-- MainContent -->
	<section class="sign-in-page">
	   <div class="container">
	      <div class="row justify-content-center align-items-center height-self-center">
	         <div class="col-lg-7 col-md-12 align-self-center">
	            <div class="sign-user_card ">                    
	               <div class="sign-in-page-data">
	                  <div class="sign-in-from w-100 m-auto">
	                  	<h3 class="mb-1 text-center">Register</h3>
	                    <p class="mb-3 text-center">${message}</p>
	                     <form class="" action="register" method="POST">
	                        <div class="row">
	                           <div class="col-md-6">
	                              <div class="form-group">
	                                 <label>Username</label>
	                                 <input name="username" type="text" class="form-control mb-0" id="exampleInputEmail2" placeholder="Enter username" autocomplete="off" required>
	                              </div>
	                           </div>
	                           <div class="col-md-6">
	                              <div class="form-group">  
	                                 <label>E-mail</label>                               
	                                 <input name="email" type="email" class="form-control mb-0" id="exampleInputEmail3" placeholder="Enter email" autocomplete="off" required>
	                              </div>
	                           </div>
	                           <div class="col-md-12">
	                              <div class="form-group">
	                                 <label>Fullname</label>
	                                 <input name="fullname" type="text" class="form-control mb-0" id="exampleInputEmail2" placeholder="Fullname" autocomplete="off" required>
	                              </div>
	                           </div>
	                           <div class="col-md-6">
	                              <div class="form-group">   
	                                 <label>Password</label>                              
	                                 <input name="password" type="password" class="form-control mb-0" id="exampleInputPassword2" placeholder="Password" required>
	                              </div>
	                           </div>
	                           <div class="col-md-6">
	                              <div class="form-group"> 
	                                 <label>Repeat Password</label>                                
	                                 <input name="cfmPass" type="password" class="form-control mb-0" id="exampleInputPassword2" placeholder="Password" required>
	                              </div>
	                           </div>
	                           
	                        </div>
	                      
	                        <button type="submit" class="btn btn-hover my-2">Sign Up</button>
	                                                            
	                     </form>
	                  </div>
	               </div>    
	               <div class="mt-3">
	                  <div class="d-flex justify-content-center links">
	                     Already have an account? <a href="login" class="text-primary ml-2">Sign In</a>
	                  </div>                        
	               </div>
	            </div>
	         </div>
	      </div>
	   </div>
	</section>
	<!-- MainContent End-->
   
   <%@ include file = "/common/user/script.jsp" %>
</body>

</html>