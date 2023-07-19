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
   <title>Streamit | Edit Profile</title>
   <%@ include file = "/common/user/head.jsp" %>
</head>
<body>
<!-- Header -->
<%@ include file = "/common/user/header.jsp" %>
<!-- Header End -->

<!-- MainContent -->
<div class="main-content">
	<section class="m-profile manage-p">
	    <div class="container h-100">
	        <div class="row align-items-center justify-content-center h-100">
	            <div class="col-lg-10">
	                <div class="sign-user_card">
	                    <div class="row">
	                        <div class="col-lg-2">
	                            <div class="upload_profile d-inline-block">
	                            <img src="images/user/user.jpg" class="profile-pic rounded-circle img-fluid" alt="user">
	                            <div class="p-image">
	                                <i class="ri-pencil-line upload-button"></i>
	                                <input class="file-upload" type="file" accept="image/*">
	                            </div>
	                            </div>
	                        </div>
	                        <div class="col-lg-10 device-margin">
	                            <div class="profile-from">
	                                <h4 class="mb-3">
	                                	Manage Profile
	                                	<c:if test="${user.isAdmin}">
	                                		<span class="text-dangerous">Admin</span>
	                                	</c:if>
	                                </h4>
	                                <p>${message}</p>
	                                <form class="mt-4" action="edit-profile" method="POST">
	                                	<div class="form-group">
	                                        <label>Username</label>
	                                        <input name="id" type="text" value="${user.id}" class="form-control mb-0" id="username"
	                                            placeholder="Enter Your Username" autocomplete="off" required>
	                                    </div>
	                                    <div class="form-group">
	                                        <label>Fullname</label>
	                                        <input name="fullname" type="text" value="${user.fullname}" class="form-control mb-0" id="fullname"
	                                            placeholder="Fullname" autocomplete="off" required>
	                                    </div>
	                                    <div class="form-group">
	                                        <label>Email</label>
	                                        <input name="email" type="email" value="${user.email}" class="form-control mb-0" id="email"
	                                            placeholder="Email" autocomplete="off" required>
	                                    </div>
	                                    <div class="form-group d-flex flex-md-row flex-column">
	                                        <div class="iq-custom-select d-inline-block manage-gen">
	                                            <select name="cars" class="form-control pro-dropdown">
	                                                <option value="female">Female</option>
	                                                <option value="male">Male</option>
	                                            </select>
	                                        </div>
	                                        <div class="iq-custom-select d-inline-block lang-dropdown manage-dd">
	                                            <select name="cars" class="form-control pro-dropdown" id="lang"
	                                                multiple="multiple">
	                                                <option value="english">English</option>
	                                                <option value="hindi">Hindi</option>
	                                                <option value="gujarati">Gujarati</option>
	                                                <option value="bengali">Bengali</option>
	                                                <option value="marathi">Marathi</option>
	                                                <option value="tamil">Tamil</option>
	                                                <option value="kannada">Kannada</option>
	                                            </select>
	                                        </div>
	                                    </div>
	                                    <div class="d-flex">
	                                        <button class="btn btn-hover">Save</button>
	                                        <a href="index" class="btn btn-link">Cancel</a>
	                                    </div>
	                                </form>
	                            </div>
	                        </div>
	                    </div>
	                </div>
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