<div class="iq-sidebar">
   <div class="iq-sidebar-logo d-flex justify-content-between">
      <a href="admin" class="header-logo">
         <img src="<c:url value='/templates/admin/images/logo.png'/>" class="img-fluid rounded-normal" alt="">
         <div class="logo-title">
            <span class="text-primary text-uppercase">Streamit</span>
         </div>
      </a>
      <div class="iq-menu-bt-sidebar">
         <div class="iq-menu-bt align-self-center">
            <div class="wrapper-menu">
               <div class="main-circle"><i class="las la-bars"></i></div>
            </div>
         </div>
      </div>
   </div>
   <div id="sidebar-scrollbar">
      <nav class="iq-sidebar-menu">
         <ul id="iq-sidebar-toggle" class="iq-menu">
            <li class="active active-menu">
            	<a href="<c:url value='/admin'/>" class="iq-waves-effect">
            		<i class="las la-home iq-arrow-left"></i>
            		<span>Dashboard</span>
            	</a>
            </li>
            <li class="">
	            <a href="#video" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false">
		            <i class="las la-film"></i>
		            <span>Video</span>
		            <i class="ri-arrow-right-s-line iq-arrow-right"></i>
	            </a>
	            <ul id="video" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
		            <li class="">
		            	<a href="<c:url value='/admin/video?action=add'/>">
			            	<i class="las la-pen"></i>
			            	<span>Edit Video</span>
		            	</a>
		            </li>
		            <li class="">
		            	<a href="<c:url value='/admin/video?action=view'/>">
			            	<i class="las la-photo-video"></i>
			            	<span>List Videos</span>	
		            	</a>
		            </li>
	            </ul>
	         </li>
	         <li class="">
	            <a href="#user" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false">
		            <i class="las la-user"></i>
		            <span>User</span>
		            <i class="ri-arrow-right-s-line iq-arrow-right"></i>
	            </a>
	            <ul id="user" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
		            <li class="">
		            	<a href="<c:url value='/admin/user?action=add'/>">
			            	<i class="las la-user-edit"></i>
			            	<span>Edit User</span>
		            	</a>
		            </li>
		            <li class="">
		            	<a href="<c:url value='/admin/user?action=view'/>">
			            	<i class="las la-user-friends"></i>
			            	<span>List Users</span>	
		            	</a>
		            </li>
	            </ul>
	         </li>
         </ul>
      </nav>
   </div>
</div>