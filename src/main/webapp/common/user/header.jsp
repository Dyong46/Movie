<header id="main-header">
   <div class="main-header">
      <div class="container-fluid">
         <div class="row">
            <div class="col-sm-12">
               <nav class="navbar navbar-expand-lg navbar-light p-0">
                  <a href="#" class="navbar-toggler c-toggler" data-toggle="collapse"
                     data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                     aria-expanded="false" aria-label="Toggle navigation">
                     <div class="navbar-toggler-icon" data-toggle="collapse">
                        <span class="navbar-menu-icon navbar-menu-icon--top"></span>
                        <span class="navbar-menu-icon navbar-menu-icon--middle"></span>
                        <span class="navbar-menu-icon navbar-menu-icon--bottom"></span>
                     </div>
                  </a>
                  <a class="navbar-brand" href="index"> <img class="img-fluid logo" src="images/logo.png"
                        alt="streamit" /> </a>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <div class="menu-main-menu-container">
                        <ul id="top-menu" class="navbar-nav ml-auto">
                           <li class="menu-item">
                              <a href="index">Home</a>
                           </li>
                           <c:if test="${not empty sessionScope.currentUser}">
								<li class="menu-item">
	                              <a href="favorite">Favorite</a>
	                           </li>
	                           <li class="menu-item">
	                              <a href="history">History</a>
	                           </li>
							</c:if>
                        </ul>
                     </div>
                  </div>
                  <div class="mobile-more-menu">
                     <a href="javascript:void(0);" class="more-toggle" id="dropdownMenuButton"
                        data-toggle="more-toggle" aria-haspopup="true" aria-expanded="false">
                        <i class="ri-more-line"></i>
                     </a>
                     <div class="more-menu" aria-labelledby="dropdownMenuButton">
                        <div class="navbar-right position-relative">
                           <ul class="d-flex align-items-center justify-content-end list-inline m-0">
                              <li>
                                 <a href="#" class="search-toggle">
                                    <i class="ri-search-line"></i>
                                 </a>
                                 <div class="search-box iq-search-bar">
                                    <form action="#" class="searchbox">
                                       <div class="form-group position-relative">
                                          <input type="text" class="text search-input font-size-12"
                                             placeholder="type here to search...">
                                          <i class="search-link ri-search-line"></i>
                                       </div>
                                    </form>
                                 </div>
                              </li>
                              <li>
                                 <a href="#" class="iq-user-dropdown search-toggle d-flex align-items-center">
                                    <img src="<c:url value='images/user/user.jpg' />" class="img-fluid avatar-40 rounded-circle"
                                       alt="user">
                                 </a>
                                 <div class="iq-sub-dropdown iq-user-dropdown">
                                    <div class="iq-card shadow-none m-0">
                                       <div class="iq-card-body p-0 pl-3 pr-3">
                                          <c:choose>
							            	<c:when test="${not empty sessionScope.currentUser}">
							            		<a href="edit-profile" class="iq-sub-card setting-dropdown">
			                                       <div class="media align-items-center">
			                                          <div class="right-icon">
			                                             <i class="ri-file-user-line text-primary"></i>
			                                          </div>
			                                          <div class="media-body ml-3">
			                                             <h6 class="my-0 ">Manage Profile</h6>
			                                          </div>
			                                       </div>
			                                    </a>
			                                    <a href="changPass" class="iq-sub-card setting-dropdown">
			                                       <div class="media align-items-center">
			                                          <div class="right-icon">
			                                             <i class="ri-settings-4-line text-primary"></i>
			                                          </div>
			                                          <div class="media-body ml-3">
			                                             <h6 class="my-0 ">Change Password</h6>
			                                          </div>
			                                       </div>
			                                    </a>
			                                     <c:if test="${sessionScope.currentUser.isAdmin}">
													<a href="admin" class="iq-sub-card setting-dropdown">
				                                       <div class="media align-items-center">
				                                          <div class="right-icon">
				                                             <i class="ri-settings-4-line text-primary"></i>
				                                          </div>
				                                          <div class="media-body ml-3">
				                                             <h6 class="my-0 ">Admin</h6>
				                                          </div>
				                                       </div>
				                                    </a>
												</c:if>
			                                    <a href="logout" class="iq-sub-card setting-dropdown">
			                                       <div class="media align-items-center">
			                                          <div class="right-icon">
			                                             <i class="ri-logout-circle-line text-primary"></i>
			                                          </div>
			                                          <div class="media-body ml-3">
			                                             <h6 class="my-0 ">Logout</h6>
			                                          </div>
			                                       </div>
			                                    </a>
							            	</c:when>
							            	<c:otherwise>
								                <a href="login" class="iq-sub-card setting-dropdown">
			                                       <div class="media align-items-center">
			                                          <div class="right-icon">
			                                             <i class="ri-logout-circle-line text-primary"></i>
			                                          </div>
			                                          <div class="media-body ml-3">
			                                             <h6 class="my-0 ">Login</h6>
			                                          </div>
			                                       </div>
			                                    </a>
			                                    <a href="register" class="iq-sub-card setting-dropdown">
			                                       <div class="media align-items-center">
			                                          <div class="right-icon">
			                                             <i class="ri-logout-circle-line text-primary"></i>
			                                          </div>
			                                          <div class="media-body ml-3">
			                                             <h6 class="my-0 ">Register</h6>
			                                          </div>
			                                       </div>
			                                    </a>
							            	</c:otherwise>
							            </c:choose>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="navbar-right menu-right">
                     <ul class="d-flex align-items-center list-inline m-0">
                        <li class="nav-item nav-icon">
                           <a href="#" class="search-toggle device-search">
                              <i class="ri-search-line"></i>
                           </a>
                           <div class="search-box iq-search-bar d-search">
                              <form action="#" class="searchbox">
                                 <div class="form-group position-relative">
                                    <input type="text" class="text search-input font-size-12"
                                       placeholder="type here to search...">
                                    <i class="search-link ri-search-line"></i>
                                 </div>
                              </form>
                           </div>
                        </li>
                        <li class="nav-item nav-icon">
                           <a href="#" class="iq-user-dropdown search-toggle p-0 d-flex align-items-center"
                              data-toggle="search-toggle">
                              <img src="<c:url value='images/user/user.jpg' />" class="img-fluid avatar-40 rounded-circle" alt="user">
                           </a>
                           <div class="iq-sub-dropdown iq-user-dropdown">
                              <div class="iq-card shadow-none m-0">
                                 <div class="iq-card-body p-0 pl-3 pr-3">
	                                 <c:choose>
						            	<c:when test="${not empty sessionScope.currentUser}">
						            		<a href="edit-profile" class="iq-sub-card setting-dropdown">
		                                       <div class="media align-items-center">
		                                          <div class="right-icon">
		                                             <i class="ri-file-user-line text-primary"></i>
		                                          </div>
		                                          <div class="media-body ml-3">
		                                             <h6 class="my-0 ">Manage Profile</h6>
		                                          </div>
		                                       </div>
		                                    </a>
		                                    <a href="changPass" class="iq-sub-card setting-dropdown">
		                                       <div class="media align-items-center">
		                                          <div class="right-icon">
		                                             <i class="ri-settings-4-line text-primary"></i>
		                                          </div>
		                                          <div class="media-body ml-3">
		                                             <h6 class="my-0 ">Change Password</h6>
		                                          </div>
		                                       </div>
		                                    </a>
		                                    <c:if test="${sessionScope.currentUser.isAdmin}">
												<a href="admin" class="iq-sub-card setting-dropdown">
			                                       <div class="media align-items-center">
			                                          <div class="right-icon">
			                                             <i class="ri-settings-4-line text-primary"></i>
			                                          </div>
			                                          <div class="media-body ml-3">
			                                             <h6 class="my-0 ">Admin</h6>
			                                          </div>
			                                       </div>
			                                    </a>
											</c:if>
		                                    <a href="logout" class="iq-sub-card setting-dropdown">
		                                       <div class="media align-items-center">
		                                          <div class="right-icon">
		                                             <i class="ri-logout-circle-line text-primary"></i>
		                                          </div>
		                                          <div class="media-body ml-3">
		                                             <h6 class="my-0 ">Logout</h6>
		                                          </div>
		                                       </div>
		                                    </a>
						            	</c:when>
						            	<c:otherwise>
							                <a href="login" class="iq-sub-card setting-dropdown">
		                                       <div class="media align-items-center">
		                                          <div class="right-icon">
		                                             <i class="ri-logout-circle-line text-primary"></i>
		                                          </div>
		                                          <div class="media-body ml-3">
		                                             <h6 class="my-0 ">Login</h6>
		                                          </div>
		                                       </div>
		                                    </a>
		                                    <a href="register" class="iq-sub-card setting-dropdown">
		                                       <div class="media align-items-center">
		                                          <div class="right-icon">
		                                             <i class="ri-logout-circle-line text-primary"></i>
		                                          </div>
		                                          <div class="media-body ml-3">
		                                             <h6 class="my-0 ">Register</h6>
		                                          </div>
		                                       </div>
		                                    </a>
						            	</c:otherwise>
						            </c:choose>
                                 </div>
                              </div>
                           </div>
                        </li>
                     </ul>
                  </div>
               </nav>
               <div class="nav-overlay"></div>
            </div>
         </div>
      </div>
   </div>
</header>