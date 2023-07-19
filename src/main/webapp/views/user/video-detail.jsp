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
   <!-- loader Start -->
   <%@ include file = "/common/user/loading.jsp" %>
   <!-- loader END -->
   
   <!-- Header -->
   <%@ include file = "/common/user/header.jsp" %>
   <!-- Header End -->
   
   <!-- Banner Start -->
   <div class="video-container iq-main-slider">
	   <div class="video d-block">
	   	<iframe id="tm-video" src="http://www.youtube.com/embed/${video.href}"></iframe>
	   </div>
   </div>
   <!-- Banner End -->
   
   <!-- MainContent -->
   <div class="main-content">
	<section class="movie-detail container-fluid">
	   <div class="row">
	      <div class="col-lg-12">
	         <div class="trending-info season-info g-border">
	            <h4 class="trending-text big-title text-uppercase mt-0">${video.title}</h4>
	            <div class="d-flex align-items-center text-white text-detail episode-name mb-0">
	               <span>${video.views} views</span>
	               <span class="trending-year">${video.shares} shares</span>
	            </div>
	            <p class="trending-dec w-100 mb-0">${video.description}</p>
	            <ul class="list-inline p-0 mt-4 share-icons music-play-lists">
	               <li><span><i class="ri-add-line"></i></span></li>
	               <li><span><i class="ri-heart-fill"></i></span></li>
	            </ul>
	         </div>
	      </div>
	   </div>
	</section>
   </div>
   <%@ include file = "/common/user/footer.jsp" %>
   <!-- MainContent End-->
   
   <!-- back-to-top -->
   <%@ include file = "/common/user/back-to-top.jsp" %>
   <!-- back-to-top End -->
   
   
   <%@ include file = "/common/user/script.jsp" %>
</body>

</html>