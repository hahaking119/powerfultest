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
	<title>	旅游同业B2B交易平台</title>
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
		<!-- topbar starts -->
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
						<i class="icon-user"></i><span class="hidden-phone"> admin</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#">Profile</a></li>
						<li class="divider"></li>
						<li><a href="login.html">Logout</a></li>
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
						<li><a class="ajax-link" href="admin.aspx"><i class="icon-eye-open"></i><span class="hidden-tablet"> 管理员管理</span></a></li>
						<li><a class="ajax-link" href="user.aspx"><i class="icon-edit"></i><span class="hidden-tablet"> 用户管理</span></a></li>
						<li><a class="ajax-link" href="route.aspx"><i class="icon-list-alt"></i><span class="hidden-tablet"> 路线管理</span></a></li>
						<li><a class="ajax-link" href="contract.aspx"><i class="icon-folder-open"></i><span class="hidden-tablet"> 合同管理</span></a></li>
						<li><a class="ajax-link" href="gallery.html"><i class="icon-picture"></i><span class="hidden-tablet"> Gallery</span></a></li>
						<li class="nav-header hidden-tablet">Sample Section</li>
						<li><a class="ajax-link" href="table.html"><i class="icon-align-justify"></i><span class="hidden-tablet"> Tables</span></a></li>
						<li><a class="ajax-link" href="calendar.html"><i class="icon-calendar"></i><span class="hidden-tablet"> Calendar</span></a></li>
						<li><a class="ajax-link" href="grid.html"><i class="icon-th"></i><span class="hidden-tablet"> Grid</span></a></li>
						<li><a class="ajax-link" href="file-manager.html"><i class="icon-folder-open"></i><span class="hidden-tablet"> File Manager</span></a></li>
						<li><a href="tour.html"><i class="icon-globe"></i><span class="hidden-tablet"> Tour</span></a></li>
						<li><a class="ajax-link" href="icon.html"><i class="icon-star"></i><span class="hidden-tablet"> Icons</span></a></li>
						<li><a href="error.html"><i class="icon-ban-circle"></i><span class="hidden-tablet"> Error Page</span></a></li>
						<li><a href="login.aspx"><i class="icon-lock"></i><span class="hidden-tablet"> Login Page</span></a></li>
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
				
							<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-user"></i> 路线信息</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
		
					<div class="box-content">
						
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>路线名</th>
								  <th>发布时间</th>
								  <th>路线发布公司</th>
								  <th>状态</th>
								  <th>管理</th>
							  </tr>
						  </thead>   
						  <tbody>
							<tr>
								<td>David R</td>
								<td class="center">2012/01/01</td>
								<td class="center">Member</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
		
								</td>
							</tr>
							<tr>
								<td>Chris Jack</td>
								<td class="center">2012/01/01</td>
								<td class="center">Member</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Jack Chris</td>
								<td class="center">2012/01/01</td>
								<td class="center">Member</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Muhammad Usman</td>
								<td class="center">2012/01/01</td>
								<td class="center">Member</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Sheikh Heera</td>
								<td class="center">2012/02/01</td>
								<td class="center">Staff</td>
								<td class="center">
										<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Helen Garner</td>
								<td class="center">2012/02/01</td>
								<td class="center">Staff</td>
								<td class="center">
										<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Saruar Ahmed</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Ahemd Saruar</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
										<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Habib Rizwan</td>
								<td class="center">2012/01/21</td>
								<td class="center">Staff</td>
								<td class="center">
										<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Rizwan Habib</td>
								<td class="center">2012/01/21</td>
								<td class="center">Staff</td>
								<td class="center">
										<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Amrin Sana</td>
								<td class="center">2012/08/23</td>
								<td class="center">Staff</td>
								<td class="center">
										<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Sana Amrin</td>
								<td class="center">2012/08/23</td>
								<td class="center">Staff</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Ifrah Jannat</td>
								<td class="center">2012/06/01</td>
								<td class="center">Admin</td>
								<td class="center">
								<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Jannat Ifrah</td>
								<td class="center">2012/06/01</td>
								<td class="center">Admin</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Robert</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
								<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Dave Robert</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Brown Robert</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Usman Muhammad</td>
								<td class="center">2012/01/01</td>
								<td class="center">Member</td>
								<td class="center">
								<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Abdullah</td>
								<td class="center">2012/02/01</td>
								<td class="center">Staff</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Dow John</td>
								<td class="center">2012/02/01</td>
								<td class="center">Admin</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>John R</td>
								<td class="center">2012/02/01</td>
								<td class="center">Admin</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Paul Wilson</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Wilson Paul</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Heera Sheikh</td>
								<td class="center">2012/01/21</td>
								<td class="center">Staff</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Sheikh Heera</td>
								<td class="center">2012/01/21</td>
								<td class="center">Staff</td>
								<td class="center">
									<span class="label label-success">正常</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Christopher</td>
								<td class="center">2012/08/23</td>
								<td class="center">Staff</td>
								<td class="center">
									<span class="label label-important">待审核</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Andro Christopher</td>
								<td class="center">2012/08/23</td>
								<td class="center">Staff</td>
								<td class="center">
									<span class="label label-important">待审核</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Jhon Doe</td>
								<td class="center">2012/06/01</td>
								<td class="center">Admin</td>
								<td class="center">
									<span class="label label-important">待审核</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Lorem Ipsum</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<span class="label label-important">待审核</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Abraham</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<span class="label label-important">待审核</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Brown Blue</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<span class="label label-important">待审核</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Worth Name</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<span class="label label-important">待审核</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
									<a class="btn btn-warning" href="#">
										<i class="icon-pencil icon-white"></i>  
										审核                                            
									</a>
									<a class="btn btn-info" href="#">
										<i class="icon-edit icon-white"></i>  
										冻结                                            
									</a>
									<a class="btn btn-success" href="#">
										<i class="icon-edit icon-white"></i>  
										解冻                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
		
	<hr>
		<footer>
			<p class="pull-left">&copy; <a href="#" target="_blank">Powerful Tech</a> 2013</p>
			<p class="pull-right">Powered by: <a href="#">炮否科技</a></p>
		</footer>

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
	
		
</body>
</html>
