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
	         <div class="col-lg-5 col-md-12 align-self-center">
	            <div class="sign-user_card ">                    
	               <div class="sign-in-page-data">
	                  <div class="sign-in-from w-100 m-auto">
	                     <h3 class="mb-1 text-center">Sign in</h3>
	                     <form class="mt-4" action="login" method="POST">
	                        <div class="form-group">                                 
	                           <input name="username" type="text" class="form-control mb-0" id="exampleInputEmail1" placeholder="Username" autocomplete="off" required>
	                        </div>
	                        <div class="form-group">                                 
	                           <input name="password" type="password" class="form-control mb-0" id="exampleInputPassword2" placeholder="Password" required>
	                        </div>
	                        
	                           <div class="sign-info">
	                              <button type="submit" class="btn btn-hover">Sign in</button>
	                              <div class="custom-control custom-checkbox d-inline-block">
	                                 <input name="remember" type="checkbox" class="custom-control-input" id="customCheck">
	                                 <label class="custom-control-label" for="customCheck">Remember Me</label>
	                              </div>                                
	                           </div>                                    
	                        
	                     </form>
	                  </div>
	               </div>
	               <div class="mt-3">
	                  <div class="d-flex justify-content-center links">
	                     Don't have an account? <a href="register" class="text-primary ml-2">Sign Up</a>
	                  </div>
	                  <div class="d-flex justify-content-center links">
	                     <a href="forgotPass" class="f-link">Forgot your password?</a>
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