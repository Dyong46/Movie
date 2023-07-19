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
                           <h4 class="card-title">Video Lists</h4>
                        </div>
                     </div>
                     <div class="iq-card-body">
                        <div class="table-view">
                           <table class="data-tables table movie_table" style="width:100%">
                              <thead>
                                 <tr>
                                    <th style="width: 20%;">Poster</th>
                                    <th style="width: 20%;">Title</th>
                                    <th style="width: 35%;">Description</th>
                                    <th style="width: 10%;">Link</th>
                                    <th style="width: 10%;">Action</th>
                                 </tr>
                              </thead>
                              <tbody>
                              	<c:forEach var="item" items="${videos}">
									<tr>
										<td>
	                                       <img src="${item.poster}" class="img-fluid"
	                                          alt="author-profile">
	                                    </td>
										<td>${item.title}</td>
										<td>
											<div class="text-start">
												${item.description}
											</div>
										</td>
										<td>
											<a href="<c:url value='/video?action=watch&id=${item.href}'/>">${item.href}</a>
										</td>
										<td>
											<div class="flex align-items-center list-user-action">
	                                          <a class="iq-bg-success" data-toggle="tooltip" data-placement="top" title=""
	                                             data-original-title="Edit" href="<c:url value='/admin/video?action=edit&href=${item.href}'/>">
	                                             <i class="ri-pencil-line"></i>
	                                          </a>
	                                          <button type="button" class="btn" onClick="deleteVideo('${item.href}')" 
	                                          		class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title=""
	                                            	data-original-title="Delete">
	                                             <i class="ri-delete-bin-line"></i>
	                                          </button>
                                      		</div>
										</td>
									 </tr>
								</c:forEach>
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
   <script>
	   function deleteVideo(href) {
			$.ajax({
				url: '/ASM_SOF301/admin/video?action=delete&href=' + href
			}).then(function(data) {
				window.location.href = "http://localhost:8082/ASM_SOF301/admin/video?action=view"
			}).fail(function(error) {
				alert("Oop! Please try againt")
			});
		}
   </script>
</body>
</html>