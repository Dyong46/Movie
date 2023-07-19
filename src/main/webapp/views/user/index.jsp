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
   
   <!-- Slider Start -->
   <%@ include file = "/common/user/slider.jsp" %>
   <!-- Slider End -->
   
   <!-- MainContent -->
   <div class="main-content">
   	<section id="iq-favorites">
         <div class="container-fluid">
            <div class="block-space">
               <div class="row">
                  <div class="col-sm-12 overflow-hidden">
                     <div class="iq-main-header d-flex align-items-center justify-content-between">
                        <h4 class="main-title">List Video</h4>
                     </div>
                  </div>
               </div>
               <div class="favorites-contens row">
               <c:forEach items="${videos}" var="video">
	        	<div class="col-1-3 col-md-4 iq-mb-30">
                     <div class="block-images position-relative">
                       <div class="img-box">
                          <img src="${video.poster}" class="img-fluid" alt="">
                       </div>
                       <div class="block-description">
                          <h6 class="iq-title"><a href="<c:url value='/video?action=watch&id=${video.href}' />">${video.title}</a></h6>
                          <div class="movie-time d-flex align-items-center my-2">
                             <div class="badge badge-secondary p-1 mr-2">${video.views} views</div>
                             <div class="badge badge-secondary p-1 mr-2">${video.shares} shares</div>
                          </div>
                       </div>
                    </div>
                  </div>
        		</c:forEach>
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