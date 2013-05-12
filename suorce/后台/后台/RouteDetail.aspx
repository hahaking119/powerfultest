<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="route.aspx.cs" Inherits="后台.WebForm5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
	<!--
		Charisma v1.0.0

		Copyright 2012 Muhammad Usman
		Licensed under the Apache License v2.0
		http://www.apache.org/licenses/LICENSE-2.0

		http://usman.it
		http://twitter.com/halalit_usman
	-->
	<meta charset="utf-8">
	<title>	路线详细信息-旅游同业B2B交易平台</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
	<meta name="author" content="Muhammad Usman">

	<!-- The styles -->
	<link id="bs-css" href="css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/charisma-app.css" rel="stylesheet">
	<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
	<link href='css/fullcalendar.css' rel='stylesheet'>
	<link href='css/fullcalendar.print.css' rel='stylesheet'  media='print'>
	<link href='css/chosen.css' rel='stylesheet'>
	<link href='css/uniform.default.css' rel='stylesheet'>
	<link href='css/colorbox.css' rel='stylesheet'>
	<link href='css/jquery.cleditor.css' rel='stylesheet'>
	<link href='css/jquery.noty.css' rel='stylesheet'>
	<link href='css/noty_theme_default.css' rel='stylesheet'>
	<link href='css/elfinder.min.css' rel='stylesheet'>
	<link href='css/elfinder.theme.css' rel='stylesheet'>
	<link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
	<link href='css/opa-icons.css' rel='stylesheet'>
	<link href='css/uploadify.css' rel='stylesheet'>

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- The fav icon -->
	<link rel="shortcut icon" href="img/favicon.ico">
		
</head>
<body>

<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="main.aspx"> <img alt="Charisma Logo" src="img/logo20.png" /> <span>炮否</span></a>
				
				<!-- theme selector starts -->
				<div class="btn-group pull-right theme-container" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-tint"></i><span class="hidden-phone"> 修改主题 / 皮肤</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" id="themes">
						<li><a data-value="classic" href="#"><i class="icon-blank"></i> Classic</a></li>
						<li><a data-value="cerulean" href="#"><i class="icon-blank"></i> Cerulean</a></li>
						<li><a data-value="cyborg" href="#"><i class="icon-blank"></i> Cyborg</a></li>
						<li><a data-value="redy" href="#"><i class="icon-blank"></i> Redy</a></li>
						<li><a data-value="journal" href="#"><i class="icon-blank"></i> Journal</a></li>
						<li><a data-value="simplex" href="#"><i class="icon-blank"></i> Simplex</a></li>
						<li><a data-value="slate" href="#"><i class="icon-blank"></i> Slate</a></li>
						<li><a data-value="spacelab" href="#"><i class="icon-blank"></i> Spacelab</a></li>
						<li><a data-value="united" href="#"><i class="icon-blank"></i> United</a></li>
					</ul>
				</div>
				<!-- theme selector ends -->
				
				<!-- user dropdown starts -->
				<div class="btn-group pull-right" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-user"></i><span class="hidden-phone"> <%=SuperUserName %></span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#">Profile</a></li>
						<li class="divider"></li>
						<li><a href="login.aspx">注销</a></li>
					</ul>
				</div>
				<!-- user dropdown ends -->
				
				<div class="top-nav nav-collapse">
					<ul class="nav">
						<li><a href="#">Visit Site</a></li>
						<li>
							<form class="navbar-search pull-left">
								<input placeholder="Search" class="search-query span2" name="query" type="text">
							</form>
						</li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<!-- topbar ends -->

		<div class="container-fluid">
		<div class="row-fluid">
				
			<!-- left menu starts -->
			<div class="span2 main-menu-span">
				<div class="well nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li class="nav-header hidden-tablet">Main</li>
						<li><a class="ajax-link" href="main.aspx"><i class="icon-home"></i><span class="hidden-tablet"> 首页</span></a></li>
						<%if (UserRank == "4")
        { %>
                        <li><a class="ajax-link" href="admin.aspx"><i class="icon-eye-open"></i><span class="hidden-tablet"> 管理员管理</span></a></li>
						<%} %>
                        <li><a class="ajax-link" href="user.aspx"><i class="icon-edit"></i><span class="hidden-tablet"> 用户管理</span></a></li>
						<li><a class="ajax-link" href="route.aspx"><i class="icon-list-alt"></i><span class="hidden-tablet"> 路线管理</span></a></li>
						<li><a class="ajax-link" href="contract.aspx"><i class="icon-folder-open"></i><span class="hidden-tablet"> 合同管理</span></a></li>
						<%--<li><a class="ajax-link" href="gallery.html"><i class="icon-picture"></i><span class="hidden-tablet"> Gallery</span></a></li>
						<li class="nav-header hidden-tablet">Sample Section</li>
						<li><a class="ajax-link" href="table.html"><i class="icon-align-justify"></i><span class="hidden-tablet"> Tables</span></a></li>
						<li><a class="ajax-link" href="calendar.html"><i class="icon-calendar"></i><span class="hidden-tablet"> Calendar</span></a></li>
						<li><a class="ajax-link" href="grid.html"><i class="icon-th"></i><span class="hidden-tablet"> Grid</span></a></li>
						<li><a class="ajax-link" href="file-manager.html"><i class="icon-folder-open"></i><span class="hidden-tablet"> File Manager</span></a></li>
						<li><a href="tour.html"><i class="icon-globe"></i><span class="hidden-tablet"> Tour</span></a></li>
						<li><a class="ajax-link" href="icon.html"><i class="icon-star"></i><span class="hidden-tablet"> Icons</span></a></li>
						<li><a href="error.html"><i class="icon-ban-circle"></i><span class="hidden-tablet"> Error Page</span></a></li>
						<li><a href="login.aspx"><i class="icon-lock"></i><span class="hidden-tablet"> Login Page</span></a></li>--%>
					</ul>
					<label id="for-is-ajax" class="hidden-tablet" for="is-ajax"><input id="is-ajax" type="checkbox"> Ajax on menu</label>
				</div><!--/.well -->
			</div><!--/span-->
			<!-- left menu ends -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<div id="content" class="span10">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">首页</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">线路管理</a>
					</li>
				</ul>
			</div>
  <div class="row-fluid sortable">
				<div class="box span">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-font"></i> 路线详细信息</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>

                 <div class="row-fluid">
							  <div class="span12">
                               <br>
								<div class="tooltip-demo well">
								  <p class="muted" style="margin-bottom: 0;"><h1><center><% = RouteName%></center></h1>
								  </p>
                                  <p><h5><center>旅行社：青年旅社</center></h5></p>
                                   <p><h6><center>发布日期：<% =Pubdate %></center></h6></p>
								</div>                                  
							  </div>
						  </div>



					<div class="box-content">  
						  <div class="row-fluid ">            
							  <div class="span4">
								<h3>类型：<%=RouteType %></h3>
                                <br>
                                <h3>路线状态：<% = RouteState %></h3>
								<%--<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at. Nulla tellus elit, varius non commodo eget, mattis vel eros. In sed ornare nulla. Donec consectetur, velit a pharetra ultricies, diam lorem lacinia risus, ac commodo orci erat eu massa. Sed sit amet nulla ipsum. Donec felis mauris, vulputate sed tempor at, aliquam a ligula. Pellentesque non pulvinar nisi.
								</p>
								<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at. Nulla tellus elit, varius non commodo eget, mattis vel eros. In sed ornare nulla. Donec consectetur, velit a pharetra ultricies, diam lorem lacinia risus, ac commodo orci erat eu massa. Sed sit amet nulla ipsum. Donec felis mauris, vulputate sed tempor at, aliquam a ligula. Pellentesque non pulvinar nisi.
								</p>--%>
							  </div>
							  <div class="span4">
								<h3>旅游天数：<% = RouteDays %></h3>
                                <br>
                                <h3>返回时间：</h3>
								<%--<p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec sed odio dui.</p>--%>
							  </div>
							  <div class="span4 ">
								<%--<div class="well">
								  <h1>h1. Heading 1</h1>
								  <h2>h2. Heading 2</h2>
								  <h3>h3. Heading 3</h3>
								  <h4>h4. Heading 4</h4>
								  <h5>h5. Heading 5</h5>
								  <h6>h6. Heading 6</h6>
								</div>--%>
                                <h3>最小成团人数：16人</h3>
                                <br>
                                <h3>路线开始时间：<%= RouteStartTime %></h3>
							  </div>
						  </div><!--/row -->                           
						 <hr style="FILTER: alpha(opacity=100,finishopacity=0,style=1)" color=#E0E0E0 SIZE=3/>
						                <div class="row-fluid">
							  <div class="span12" style="margin-left:1%;">
								<h3>路线简介</h3>
								<p>一下介绍路线的相关信息</p>
								<div class="tooltip-demo well">
								  <p class="muted" style="margin-bottom: 0;">
                                  <% = RouteDetails %>
								  </p>

					  </div>  
                      </div> 
                      </div>
                      </div>
                                             
                         
	 <hr style="FILTER: alpha(opacity=100,finishopacity=0,style=1)" color=#E0E0E0 SIZE=3/>
                    <% for (int i = 0; i < length; i++)
                       { %>
                     <div class="row-fluid">
							  <div class="span12" style="margin-left:2%;">
								  <h3>途径地点：<%= PlaceName[i]%></h3>
								  <div class="row-fluid">
									<div class="span6">
									  <p><h6>景点：黄鹤楼，华中科技大学</h6></p>
									  <blockquote>
                                        <p><h6>开始时间：<%=PlaceStartTime[i]%></h6></p>
										<p><h6>游玩时间：<%=PlaceDays[i]%></h6></p>
                                        
									  </blockquote>
									</div>
									<div class="span6">
									  <p><h6>合同状态：<%--<%=ContractState[i]%>--%>
                                      <%if (ContractState[i] == "已签署")
                                        {%>  
                                    <a href="contract.aspx?id=<%=PlaceId[i] %>" target="_blank"  data-content="合同已签署，点击查看合同内容" title="请点击！" 
                                        data-rel="popover" class="label label-success">
                                     <i class="icon-eye-open icon-white"></i>
                                     已签署
                                    </a> 
                                  
                                    
                                    <%}                               
                                  else if (ListRoute[i].RouteState == "未签署")
                                  {%>
                                  <a href="contract.aspx?id=<%=PlaceId[i] %>" target="_blank" data-content="合同已订立，但是尚未签署，点击查看合同内容" title="请点击！"data-rel="popover" class="label label-info">
                                  <i class="icon-eye-open icon-white"></i>
                                  未签署
                                  </a>
                                 
                                  
                                   <%}
                                  else
                                  {%>
                                   <a href="#" target="_blank" title="尚未起草或签订合同，点击无效" data-rel="tooltip" class="label label-warning">
                                   <i class="icon-remove icon-white"></i>
                                   未订立</a> 
                                   <%} %>

                                 </h6></p>
									  <blockquote >
                                      <p><h6>地点标价：<%=PlacePrice[i]%></h6></p>
										<p><h6>游玩人数：<%=PlacePnum[i]%></h6></p>
									  </blockquote>
									</div>
								  </div>
							  </div>
						  </div>
						  <div class="row-fluid">
								<div class="span6" style="margin-left:4%;">
								<h4>地点简介：</h4>
								<p>
								<% =PlaceDetail[i]%>
								</p>
								</div>
                                <br>
								<div class="span6"style="margin-left:4%;">
								<h4>行程安排：</h4>
								<p>
								早上七点出发............
								</p>
							  </div>
						  </div>
                          <br>
                           <hr style="FILTER: alpha(opacity=100,finishopacity=0,style=1)" color=#E0E0E0 SIZE=3/>
                          <% } %>
                       
				</div><!--/span-->
				
		
				</div><!--/fluid-row-->
				
	
	<hr>
<div class="modal hide fade" id="myModal">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>Settings</h3>
			</div>
			<div class="modal-body">
				<p>Here settings can be configured...</p>
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">Close</a>
				<a href="#" class="btn btn-primary">Save changes</a>
			</div>
		</div>
        <hr>
        <hr>
			<hr>
		<footer>
			<p class="pull-left">&copy; <a href="#" target="_blank">Powerful Tech</a> 2013</p>
			<p class="pull-right">Powered by: <a href="#">炮否科技</a></p>
		</footer>
		
	</div>

	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<!-- jQuery -->
	<script src="js/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->
	<script src="js/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- transition / effect library -->
	<script src="js/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="js/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="js/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="js/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="js/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="js/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="js/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="js/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="js/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="js/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="js/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="js/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="js/bootstrap-tour.js"></script>
	<!-- library for cookie management -->
	<script src="js/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src='js/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='js/jquery.dataTables.min.js'></script>

	<!-- chart libraries start -->
	<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.min.js"></script>
	<script src="js/jquery.flot.pie.min.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="js/jquery.chosen.min.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="js/jquery.uniform.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="js/jquery.colorbox.min.js"></script>
	<!-- rich text editor library -->
	<script src="js/jquery.cleditor.min.js"></script>
	<!-- notification plugin -->
	<script src="js/jquery.noty.js"></script>
	<!-- file manager library -->
	<script src="js/jquery.elfinder.min.js"></script>
	<!-- star rating plugin -->
	<script src="js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="js/charisma.js"></script>
	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	
	<script src="js/charisma.js"></script>
</body>
</html>
