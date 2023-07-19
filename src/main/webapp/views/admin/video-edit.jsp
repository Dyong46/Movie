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
                  <div class="iq-edit-list-data">
                     <div class="tab-content">
                        <div class="tab-pane fade active show" id="personal-information" role="tabpanel">
                           <div class="iq-card">
                              <div class="iq-card-header d-flex justify-content-between">
                                 <div class="iq-header-title">
                                    <h4 class="card-title">
                                    	Video Information
                                    	<span id="message" class="text-center">Hi</span>
                                    </h4>
                                 </div>
                              </div>
                              <div class="iq-card-body">
                                 <form>
                                    <div class="row align-items-center">
	                                    <div class="form-group col-md-12 row">
                                          <div class="col-md-5">
                                          	 <label for="inputProjectLeader">Preview</label>
                                             <img id="imgPreview" class="img img-fluid" src="${video != null ? video.poster:'' }" alt="profile-pic">
                                          </div>
                                          <div class="col-md-7 row">
                                          	<div class="form-group col-sm-12">
	                                          <label for="title">Title:</label>
	                                          <input type="text" class="form-control" id="title" value="${video != null ? video.title:'' }">
	                                       </div>
	                                       <div class="form-group col-sm-12">
	                                          <label for="href">Href:</label>
	                                          <input type="text" class="form-control" id="href" value="${video != null ? video.href:'' }">
	                                       </div>
                                          </div>
	                                    </div>
                                       
                                       <div class="form-group col-sm-12">
                                          <label for="poster">Poster:</label>
                                          <input type="text" class="form-control" id="poster" value="${video != null ? video.poster:'' }">
                                          <input type="hidden" id="isEdit" value="${isEdit}" class="form-control">
                                       </div>
                                       <div class="form-group col-sm-12">
                                          <label>Description:</label>
                                          <textarea id="description" class="form-control text-start" name="address" rows="5" style="line-height: 22px;">
											${video != null ? video.description:'' }
                                          </textarea>
                                       </div>
                                    </div>
                                    <button type="button" id="submitBtn" class="btn btn-primary mr-2">Submit</button>
                                    <button type="button" id="resetBtn" class="btn btn-info mr-2">Reset</button>
                                    <button type="button" id="resetBtn" class="btn iq-bg-danger">Cancel</button>
                                 </form>
                              </div>
                           </div>
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
   var titleOrigin, hrefOrigin, descriptionOrigin, posterOrigin;
	$(document).ready(function() {
		titleOrigin = $('#title').val();
		hrefOrigin = $('#href').val();
		descriptionOrigin = $('#description').val();
		posterOrigin = $('#poster').val();
	});
	
	$('#resetBtn').click(function(){
		 $('#title').val(titleOrigin);
		 $('#href').val(hrefOrigin);
		 $('#description').val(descriptionOrigin);
		 $('#poster').val(posterOrigin);
		 if(posterOrigin.lenth > 0) {
			 $('#imgPreview').attr('src', posterOrigin);
		 }
	});
   
   $('#submitBtn').click(function() {
		$('#message').text('');
		
		var url;
		var isEdit = $('#isEdit').val();
		if(isEdit == 'true') {
			url = '/ASM_SOF301/admin/video?action=edit&href=' + hrefOrigin;
		} else {
			url = '/ASM_SOF301/admin/video?action=add';
		}
		var formData = {
				'hrefOrigin': hrefOrigin,
				'title': $('#title').val(),
				'description': $('#description').val(),
				'newHref': $('#href').val(),
				'poster': $('#poster').val()
			};
		
		$.ajax({
			url: url,
			type: 'POST',
			data: formData
		}).then(function(data) {
			window.location.href = "http://localhost:8082/ASM_SOF301/admin/video?action=view";
		}).fail(function(error) {
			$('#message').text('Oop! Please try again!');
		});
	});
	
	$('#poster').change(function() {
		var newSrc = $('#poster').val();
		$('#imgPreview').attr('src', newSrc);
	});
   </script>
</body>
</html>