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

                    <div class ="box span12"id="choose" style="width:98% ;height:40px;background-color:#FFDAC8; margin-left:10px;position:relative">
                    <div id="left" style="float:left;margin-top:10px;margin-left:10px;"><input type="checkbox" name="choose" value=" "  onclick="if(this.checked==true) { checkAll('choose'); } else { clearAll('choose'); }" />全选
                    </div>
                    <div  style="float:left;margin-top:10px;margin-left:10px;"><input type="checkbox" name="check" value=" "  onclick="if(this.checked==true) { Noexamine('choose'); } else { clearNoExamine('choose'); }" />未审核
                    </div>
                    <div  style="float:left;margin-top:10px;margin-left:10px;"><input type="checkbox" name="check" value=" "  onclick="if(this.checked==true) { examine('choose'); } else { clearExamine('choose'); }" />审核未通过
                    </div>                                     
                    <div  style="float:left;margin-top:10px;margin-left:10px;"><input type="checkbox" name="check" value=" "  onclick="if(this.checked==true) { normal('choose'); } else { clearNormal('choose'); }" />正常
                    </div>
                    <div  style="float:left;margin-top:10px;margin-left:10px;"><input type="checkbox" name="check" value=" "  onclick="if(this.checked==true) { freeze('choose'); } else { clearFreeze('choose'); }" />已冻结
                    </div>
                    <div id="right" style="float:right;border:1;"> <button  id = "fuxuan" style="height:40px; width:100px"class=" btn-danger" >
                                    <i class="icon-edit icon-white"></i>
                                    冻结</button>
                    </div>
                    <div id="Div1" style="float:right;border:1;"> <button  id = "examine" style="height:40px; width:100px" class=" btn-inverse " >
                                    <i class="icon-edit icon-blue"></i>
                                    审核</button>
                    </div>
                      <div id="Div2" style="float:right;border:1;"> <button  id = "unfreeze" style="height:40px; width:100px" class="btn-large " >
                                    <i class="icon-edit icon-blue"></i>
                                    解冻</button>
                    </div>
                    </div>
		
					<div class="box-content">
						
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
                                  <th>选择</th>
								  <th>路线名</th>
								  <th>发布时间</th>
								  <th>路线发布公司</th>
								  <th>状态</th>
								  <th>管理</th>
							  </tr>
						  </thead>   
						  <tbody>

                              <%   for (int i = 0; i < ListRoute.Count; i++)
                             {
                                  %>
                             
                                <tr>
                                <td id="quanxuan"><input type="checkbox" name="choose" value="<%=ListRoute[i].RouteName%>"/></td>
								<td><%=ListRoute[i].RouteName%></td>
								<td class="center" ><%=ListRoute[i].Pubdate%></td>
								<td class="center"><%=ListRoute[i].CompanyName%></td>
								<td class="center">
                                <%if (ListRoute[i].RouteState == "正常")
                                  {%>                                
									<span class="label label-success">正常</span> </td>
                                    <%}
                                  else if (ListRoute[i].RouteState == "冻结")
                                  {%>
                                    <span class="label label-warning">冻结</span></td>
                                    
                                  <%}
                                  else if (ListRoute[i].RouteState == "审核未通过")
                                  {%>
                                  <span class="label label-info">审核未通过</span></td>
                                   <%}
                                  else
                                  {%>
                                   <span class="label label-">未审核</span></td>
                                   <%} %>


								
								<td class="center">
                                     <a >
                                    <button  id = "<%= ListRoute[i].RouteId %>" class=" btn btn-primary" name="查看">
                                    <i class="icon-eye-open icon-white"></i>
                                    查看</button>
                                    </a>
                                     <a >
                                    <button  id = "<%= ListRoute[i].RouteId %>" class="btn btn-warning" >
                                    <i class="icon-check icon-white"></i>
                                    审核</button>
                                    </a>
                                    <a >
                                    <button  id ="<%= ListRoute[i].RouteId %>" class="btn btn-success" >
                                    <i class="icon-pencil icon-white"></i>
                                    解冻</button>
                                    </a>									
                                   <%-- <%string Btnid = i.ToString(); string UserName = listUser[i].UserName;%>--%>
                                    <a >
                                    <button  id = "<%= ListRoute[i].RouteId %>" class="btn btn-info" >
                                    <i class="icon-edit icon-white"></i>
                                    冻结</button>
                                    </a>                             									
                                   <%-- <a >
                                    <button  id = "<%= listUser[i].UserName %>" class="btn-inverse" >
                                    <i class="icon-remove icon-white"></i>
                                    删除</button>
                                    </a>--%>
								</td>
							</tr>
                      
                           <%  } %>
                            
                       
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
	

    <%-- **************************************审核响应script*********************************--%>
<script type="text/javascript" language="javascript">
    $(function () {
        $("#dialog:ui-dialog").dialog("destroy");
        $(".btn-warning").click(function () {
            var username = $(this).attr("id");
            var obj = $(this);
            var obk = $(obj.parents("tr").children("td")[4]);
            if ($(obk.children("span")).text() == "未审核" || $(obk.children("span")).text() == "审核未通过") {
                $("#EX").show();
                $("#dialog-pass").dialog({
                    resizable: false,
                    height: 140,
                    modal: true,
                    buttons: {
                        "通过": function () {
                            $.ajax({
                                type: "Post",
                                url: "user.aspx/UnFreeze",
                                //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字      
                                data: "{ 'str': '" + username + "' }",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    //返回的数据用data.d获取内容      
                                    //$("#look").load("shuaxin.aspx");
                                    $(obj.parents("tr").children("td")[4]).html("<span class=\"label label-success\">正常</span>");
                                },
                                error: function (err) {
                                    alert(err);
                                }
                            });
                            $(this).dialog("close");
                        },
                        "不通过": function () {
                            $.ajax({
                                type: "Post",
                                url: "user.aspx/UNPass",
                                //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字      
                                data: "{ 'str': '" + username + "' }",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    //返回的数据用data.d获取内容      
                                    //$("#look").load("shuaxin.aspx");
                                    $(obj.parents("tr").children("td")[4]).html("<span class=\"label label-info\">审核未通过</span>");

                                },
                                error: function (err) {
                                    alert(err);
                                }
                            });
                            $(this).dialog("close");
                        }
                    }
                });
            }
            else {
                alert("该用户已通过审核，无须再进行审核！")

            }
        });
    });
    </script>

  
   <%--************************************************************解冻响应script--%>
   <script type = "text/javascript">
       $(function () {

           $(".btn-success").click(function () {

               var username = $(this).attr("id");
               var obj = $(this);
               var obk = $(obj.parents("tr").children("td")[4]);
               if (obk.children("span").text() == "冻结") {
                   $.ajax({
                       type: "Post",
                       url: "user.aspx/UnFreeze",
                       //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字      
                       data: "{ 'str': '" + username + "' }",
                       contentType: "application/json; charset=utf-8",
                       dataType: "json",
                       success: function (data) {
                           //返回的数据用data.d获取内容      
                           $(obj.parents("tr").children("td")[4]).html("<span class=\"label label-success\">正常</span>");
                           //$("#look").load("shuaxin.aspx");
                       },
                       error: function (err) {
                           alert(err);
                       }
                   });
               }
               else {
                   alert("该用户不是冻结状态，无法解冻");
               }
               //禁用按钮的提交      
               return false;
           });
       });
    </script> 

 
 
   <%-- *********************************************************冻结响应script****************--%>
<script type="text/javascript" language="javascript">
    $(function () {
        $("#dialog:ui-dialog").dialog("destroy");
        $(".btn-info").click(function () {
            var username = $(this).attr("id");
            var obj = $(this);
            var obk = $(obj.parents("tr").children("td")[4]);
            if ($(obk.children("span")).text() == "正常") {
                $("#msg").show();
                $("#dialog-confirm").dialog({
                    resizable: false,
                    height: 140,
                    modal: true,
                    buttons: {
                        "冻结": function () {
                            $.ajax({
                                type: "Post",
                                url: "user.aspx/Freeze",
                                //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字      
                                data: "{ 'str': '" + username + "' }",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    //返回的数据用data.d获取内容      
                                    //$("#look").load("shuaxin.aspx");
                                    $(obj.parents("tr").children("td")[4]).html("<span class=\"label label-warning\">冻结</span>");
                                },
                                error: function (err) {
                                    alert(err);
                                }
                            });
                            $(this).dialog("close");
                        },
                        "取消": function () {
                            $(this).dialog("close");
                        }
                    }
                });
            }
            else {
                alert("该用户状态异常，无法被冻结！");
            }
        });
    });
    </script>





	<%--
*********************************************复选框的操作****************************************--%>
   <script type="text/javascript">
       function checkAll(name) {
           var el = document.getElementsByTagName('input');
           var len = el.length;
           for (var i = 0; i < len; i++) {
               if ((el[i].type == "checkbox") && (el[i].name == name)) {
                   el[i].checked = true;

               }
           }
           $("#quanxuan span").addClass("checked");
       }
       function clearAll(name) {
           var el = document.getElementsByTagName('input');
           var len = el.length;
           for (var i = 0; i < len; i++) {
               if ((el[i].type == "checkbox") && (el[i].name == name)) {
                   el[i].checked = false;
               }
           }
           $("#quanxuan span").removeClass("checked");
       }

       function examine(name) {
           var el = document.getElementsByTagName('input');
           var len = el.length;
           for (var i = 0; i < len; i++) {
               var obj = $(el[i]);

               if ($(obj.parents("tr").children("td")[4]).children('span').text() == "审核未通过") {
                   el[i].checked = true;
                   $(el[i]).parent().addClass("checked");
               }
           }

       }
       function clearExamine(name) {
           var el = document.getElementsByTagName('input');
           var len = el.length;
           for (var i = 0; i < len; i++) {
               var obj = $(el[i]);
               if ($(obj.parents("tr").children("td")[4]).children('span').text() == "审核未通过") {
                   el[i].checked = false;
                   $(el[i]).parent().removeClass("checked");
               }
           }

       }

       function freeze(name) {
           var el = document.getElementsByTagName('input');
           var len = el.length;
           for (var i = 0; i < len; i++) {
               var obj = $(el[i]);

               if ($(obj.parents("tr").children("td")[4]).children('span').text() == "冻结") {
                   el[i].checked = true;
                   $(el[i]).parent().addClass("checked");
               }
           }

       }

       function clearFreeze(name) {
           var el = document.getElementsByTagName('input');
           var len = el.length;
           for (var i = 0; i < len; i++) {
               var obj = $(el[i]);
               if ($(obj.parents("tr").children("td")[4]).children('span').text() == "冻结") {
                   el[i].checked = false;
                   $(el[i]).parent().removeClass("checked");
               }
           }

       }
       function NoExamine(name) {
           var el = document.getElementsByTagName('input');
           var len = el.length;
           for (var i = 0; i < len; i++) {
               var obj = $(el[i]);

               if ($(obj.parents("tr").children("td")[4]).children('span').text() == "未审核") {
                   el[i].checked = true;
                   $(el[i]).parent().addClass("checked");
               }
           }

       }

       function clearNoExamine(name) {
           var el = document.getElementsByTagName('input');
           var len = el.length;
           for (var i = 0; i < len; i++) {
               var obj = $(el[i]);
               if ($(obj.parents("tr").children("td")[4]).children('span').text() == "未审核") {
                   el[i].checked = false;
                   $(el[i]).parent().removeClass("checked");
               }
           }

       }
       function normal(name) {
           var el = document.getElementsByTagName('input');
           var len = el.length;
           for (var i = 0; i < len; i++) {
               var obj = $(el[i]);

               if ($(obj.parents("tr").children("td")[4]).children('span').text() == "正常") {
                   el[i].checked = true;
                   $(el[i]).parent().addClass("checked");
               }
           }

       }

       function clearNormal(name) {
           var el = document.getElementsByTagName('input');
           var len = el.length;
           for (var i = 0; i < len; i++) {
               var obj = $(el[i]);
               if ($(obj.parents("tr").children("td")[4]).children('span').text() == "正常") {
                   el[i].checked = false;
                   $(el[i]).parent().removeClass("checked");
               }
           }

       }
   </script>
  
   <%--*********************************全选后冻结操作*****************************--%>

<script type="text/javascript" language="javascript">
    $(function () {
        $("#dialog:ui-dialog").dialog("destroy");
        $("#fuxuan").click(function () {
            //            var username = $(this).attr("id");
            //            var obj = $(this);
            $("#msg").show();
            $("#dialog-confirm").dialog({
                resizable: false,
                height: 140,
                modal: true,
                buttons: {
                    "冻结": function () {

                        //                        var ch = $(".quanxuan").children("div").children("span");
                        var el = document.getElementsByTagName('input');
                        var len = el.length;
                        for (var i = 0; i < len; i++) {

                            var obj = $(el[i]);
                            if ($(el[i]).parent().hasClass('checked')) {
                                var username = el[i].value;
                                var obj = $(el[i]);
                                $(obj.parents("tr").children("td")[4]).html("<span class=\"label label-warning\">冻结</span>");
                                $.ajax(
                            {
                                type: "Post",
                                url: "user.aspx/Freeze",
                                //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字      
                                data: "{ 'str': '" + username + "' }",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    //返回的数据用data.d获取内容      
                                    //$("#look").load("shuaxin.aspx");
                                    return;

                                },
                                error: function (err) {
                                    alert(err);
                                }
                            });
                            }
                        }
                        $(this).dialog("close");
                    },


                    "取消": function () {
                        $(this).dialog("close");
                    }

                }
            });
        });
    });
   
   
    </script>


<%--*********************************全选后解冻操作*****************************--%>

<script type="text/javascript" language="javascript">
    $(function () {
        $("#unfreeze").click(function () {
            var el = document.getElementsByTagName('input');
            var len = el.length;
            for (var i = 0; i < len; i++) {

                var obj = $(el[i]);
                if ($(el[i]).parent().hasClass('checked')) {
                    var username = el[i].value;
                    var obj = $(el[i]);
                    $(obj.parents("tr").children("td")[4]).html("<span class=\"label label-success\">正常</span>");
                    $.ajax(
                            {
                                type: "Post",
                                url: "user.aspx/unFreeze",
                                //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字      
                                data: "{ 'str': '" + username + "' }",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    //返回的数据用data.d获取内容      
                                    //$("#look").load("shuaxin.aspx");
                                    return;

                                },
                                error: function (err) {
                                    alert(err);
                                }
                            });
                }
            }
        });
    });
   
   
    </script>

<%--*********************************全选后审核操作*****************************--%>

<script type="text/javascript" language="javascript">
    $(function () {
        $("#dialog:ui-dialog").dialog("destroy");
        $("#examine").click(function () {
            //            var username = $(this).attr("id");
            //            var obj = $(this);
            $("#EX").show();
            $("#dialog-pass").dialog({
                resizable: false,
                height: 140,
                modal: true,
                buttons: {
                    "通过": function () {

                        //                        var ch = $(".quanxuan").children("div").children("span");
                        var el = document.getElementsByTagName('input');
                        var len = el.length;
                        for (var i = 0; i < len; i++) {

                            var obj = $(el[i]);
                            if ($(el[i]).parent().hasClass('checked')) {
                                var username = el[i].value;
                                var obj = $(el[i]);
                                $(obj.parents("tr").children("td")[4]).html("<span class=\"label label-success\">正常</span>");
                                $.ajax(
                            {
                                type: "Post",
                                url: "user.aspx/UnFreeze",
                                //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字      
                                data: "{ 'str': '" + username + "' }",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    //返回的数据用data.d获取内容      
                                    //$("#look").load("shuaxin.aspx");
                                    return;

                                },
                                error: function (err) {
                                    alert(err);
                                }
                            });
                            }
                        }
                        $(this).dialog("close");
                    },


                    "不通过": function () {
                        var el = document.getElementsByTagName('input');
                        var len = el.length;
                        for (var i = 0; i < len; i++) {

                            var obj = $(el[i]);
                            if ($(el[i]).parent().hasClass('checked')) {
                                var username = el[i].value;
                                var obj = $(el[i]);
                                $(obj.parents("tr").children("td")[4]).html("<span class=\"label label-info\">审核未通过</span>");
                                $.ajax(
                            {
                                type: "Post",
                                url: "user.aspx/UnPass",
                                //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字      
                                data: "{ 'str': '" + username + "' }",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    //返回的数据用data.d获取内容      
                                    //$("#look").load("shuaxin.aspx");
                                    return;

                                },
                                error: function (err) {
                                    alert(err);
                                }
                            });
                            }
                        }
                        $(this).dialog("close");
                    }

                }
            });
        });
    });
   
   
    </script> 

 <div id="dialog-confirm" title="冻结提示?">
        <p id="msg" style="display: none;">
            <span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;"></span>
            确认要冻结该用户吗？</p>
    </div>

      <div id="dialog-pass" title="审核提示?">
        <p id="EX" style="display: none;">
            <span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;"></span>
            是否通过该用户的注册申请？</p>
    </div>   
    	

</body>
</html>
