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
	                     <h3 class="mb-3 text-center">Reset Password</h3>
	                     <p class="text-body">Enter your email address and we'll send you an email with instructions to reset your password.</p>
	                     <form class="mt-4" action="index.html">
	                        <div class="form-group">                                 
	                           <input type="email" class="form-control mb-0" id="exampleInputEmail2" placeholder="Enter email" autocomplete="off" required>
	                        </div>                           
	                        <div class="sign-info">
	                           <button type="submit" class="btn btn-hover">Reset</button>                                                            
	                        </div>                                       
	                     </form>
	                  </div>
	               </div>                    
	            </div>
	         </div>
	      </div>
	      <!-- Sign in END -->
	      <!-- color-customizer -->
	   </div>
	</section>
	<!-- MainContent End-->
   
   <%@ include file = "/common/user/script.jsp" %>
</body>

</html>