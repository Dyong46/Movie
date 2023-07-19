<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "/common/taglib.jsp" %>

<!doctype html>
<html lang="en">
<head>
   <!-- Required meta tags -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>Streamit</title>
   <%@ include file = "/common/admin/head.jsp" %>
</head>
<body>
   <!-- loader Start -->
   <%@ include file = "/common/admin/loading.jsp" %>
   <!-- loader END -->
   <!-- Wrapper Start -->
   <div class="wrapper">
      <!-- Sidebar-->
      <%@ include file = "/common/admin/slidebar.jsp" %>
      <!-- TOP Nav Bar -->
      <%@ include file = "/common/admin/top-nav-bar.jsp" %>
      <!-- TOP Nav Bar END -->
      <!-- Page Content  -->
      <div id="content-page" class="content-page">
         <div class="container-fluid">
            <div class="row">
               <div class="col-sm-12">
                  <div class="iq-card">
                     <div class="iq-card-header d-flex justify-content-between">
                        <div class="iq-header-title">
                           <h4 class="card-title">Favorites Statistic</h4>
                        </div>
                     </div>
                     <div class="iq-card-body">
                        <div class="table-responsive">
                           <table class="data-tables table movie_table" style="width:100%">
                              <thead>
                                 <tr>
                                 	<th style="width:20%;">Poster</th>
                                    <th style="width:20%;">Title</th>
                                    <th style="width:20%;">Link</th>
                                    <th style="width:10%;">Views</th>
                                    <th style="width:10%;">Likes</th>
                                    <th style="width:10%;">Shares</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <tr>
                                    <td>
                                       <img src="${item.poster}" class="img-fluid" alt="video">
                                    </td>
                                    <td>${item.title}</td>
                                    <td>
                                    	<a href="video?action=watch&id=${video.href}">${video.href}</a>
                                    </td>
                                    <td>${item.views}</td>
                                    <td>${item.totalLike}</td>
                                    <td>${item.shares}</td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- Wrapper END -->
    
   <!-- Footer -->
   <%@ include file = "/common/admin/footer.jsp" %>
   <!-- Footer END -->
   <!-- Optional JavaScript -->
   <%@ include file = "/common/admin/script.jsp" %>
 
</body>
</html>