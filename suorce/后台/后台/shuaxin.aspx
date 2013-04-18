<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="后台.WebForm4" %>

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
<%--	<meta charset="utf-8">
	<title>旅游同业B2B交易平台</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
	<meta name="author" content="Muhammad Usman">--%>


<%--    <script src="js/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>
    <script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>--%>
<%--	 <script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>--%>
<%--
    <script type="text/javascript" src="/fancybox/jquery.fancybox-1.3.4.pack.js"></script>  
    <script type="text/javascript" src="/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
    <link rel="stylesheet" href="/fancybox/jquery.fancybox-1.3.4.css" type="text/css" media="screen" />
    <!-- The styles -->--%>
<%--	<link id="bs-css" href="css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	  .window{ 
     width:600px; 
     background-color:white; 
     position:absolute; 
     padding:3px; 
     margin:5px; 
     display:none; 
     } 
     .content{ 
     height:400px; 
     background-color:#FFF; 
     font-size:14px; 
     overflow:auto; 
     } 
     .title{ 
         padding:2px; 
         color:#0CF; 
         font-size:14px; 
         } 
     .title img{ 
         float:right; 
         } 
	</style>


	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- The fav icon -->
	<link rel="shortcut icon" href="img/favicon.ico">
		
</head>--%>

<body>
		<!-- topbar starts -->
	
	<!-- topbar ends -->
		
			
			<div id="look" class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title="">
						<h2><i class="icon-user"></i>用户列表</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content"><table  id="boxman" class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>用户账户名</th>
								  <th>注册日期</th>
								  <th>类型</th>
								  <th id="state">状态</th>
								  <th>操作</th>
							  </tr>
						  </thead>   
						  <tbody>

                           <%   for (int i = 0; i < listUser.Count; i++)
                             {
                                  %>
                                 <%-- <%int i = 1;
                                    { %>--%>
                                <tr>
								<td><%=listUser[i].UserName%></td>
								<td class="center" ><%=listUser[i].Date%></td>
								<td class="center"><%=listUser[i].Rank%></td>
								<td class="center">
                                <%if (listUser[i].UserState == "正常")
                                  {%>                                
									<span class="label label-success">正常</span> </td>
                                    <%}
                                  else
                                  {%>
                                    <span class="label label-warning">冻结</span></td><%} %>
								
								<td class="center">
                                     <a >
                                    <button  id = "<%= listUser[i].UserName %>" class="btn-primary" name="查看">
                                    <i class="icon-eye-open icon-white"></i>
                                    查看</button>
                                    </a>
                                     <a >
                                    <button  id = "<%= listUser[i].UserName %>" class="btn-warning" >
                                    <i class="icon-check icon-white"></i>
                                    审核</button>
                                    </a>
                                    <a >
                                    <button  id ="<%= listUser[i].UserName %>" class="btn-success" >
                                    <i class="icon-pencil icon-white"></i>
                                    解冻</button>
                                    </a>									
                                   <%-- <%string Btnid = i.ToString(); string UserName = listUser[i].UserName;%>--%>
                                    <a >
                                    <button  id = "<%= listUser[i].UserName %>" class="btn-info" >
                                    <i class="icon-edit icon-white"></i>
                                    冻结</button>
                                    </a>                             									
                                    <a >
                                    <button  id = "<%= listUser[i].UserName %>" class="btn-inverse" >
                                    <i class="icon-remove icon-white"></i>
                                    删除</button>
                                    </a>
								</td>
							</tr>
                           <%  } %>

						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
    

	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	


    <script type = "text/javascript">
        $(function () {

            $(".btn-info").click(function () {

                var username = $(this).attr("id");
                $.ajax({
                    type: "Post",
                    url: "user.aspx/Freeze",
                    //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字      
                    data: "{ 'str': '" + username + "' }",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {

                        //返回的数据用data.d获取内容      
                        $("#look").load("shuaxin.aspx");
                        //                        ({
                        //                            //要用post方式      
                        //                            type: "post",
                        //                            //方法所在页面和方法名      
                        //                            url: "user.aspx/load",
                        //                            contentType: "application/json; charset=utf-8",
                        //                            dataType: "json"

                        //                        });


                        //                        window.parent.location.reload();
                        //                        $("#look").location.reload();
                        //                        $("#divid").html(d)
                        //                        $("#look").html($("#look").html());
                        //                        parent.location.reload();

                    },
                    error: function (err) {
                        alert(err);
                    }
                });

                //禁用按钮的提交      
                return false;
            });
        });
     
      </script>

   <script type = "text/javascript">
       $(function () {

           $(".btn-success").click(function () {

               var username = $(this).attr("id");
               $.ajax({
                   type: "Post",
                   url: "user.aspx/UnFreeze",
                   //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字      
                   data: "{ 'str': '" + username + "' }",
                   contentType: "application/json; charset=utf-8",
                   dataType: "json",
                   success: function (data) {
                       //返回的数据用data.d获取内容      
                       alert(data.d);
                   },
                   error: function (err) {
                       alert(err);
                   }
               });

               //禁用按钮的提交      
               return false;
           });
       });
    </script> 
     
  <script type = "text/javascript">
      $(function () {

          $(".btn-inverse").click(function () {

              var username = $(this).attr("id");
              $.ajax({
                  type: "Post",
                  url: "user.aspx/Delete",
                  //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字      
                  data: "{ 'str': '" + username + "' }",
                  contentType: "application/json; charset=utf-8",
                  dataType: "json",
                  success: function (data) {
                      //返回的数据用data.d获取内容      
                      alert(data.d);


                  },
                  error: function (err) {
                      alert(err);
                  }
              });

              //禁用按钮的提交      
              return false;
          });
      });
   </script>


 <script type = "text/javascript">
     $(function () {

         $(".btn-primary").click(function () {

             var username = $(this).attr("id");
             $.ajax({
                 type: "Post",
                 url: "user.aspx/Check",
                 //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字      
                 data: "{ 'str': '" + username + "' }",
                 contentType: "application/json; charset=utf-8",
                 dataType: "json",
                 success: function (data) {
                     //返回的数据用data.d获取内容      


                     //                     $("#ruanko").text(data.d);
                     popCenterWindow();

                 },
                 error: function (err) {
                     alert(err);
                 }
             });

             //禁用按钮的提交      
             return false;
         });
     });
   </script>
 <%--<script type="text/javascript">
     $ ( function () {
         $(".btn-primary").click(function () {
             popCenterWindow();
         });
        });
  </script>--%>

<%--<script type="text/javascript">
    //获取窗口的高度 
    var windowHeight;
    //获取窗口的宽度 
    var windowWidth;
    //获取弹窗的宽度 
    var popWidth;
    //获取弹窗高度 
    var popHeight;
    function init() {
        windowHeight = $(window).height();
        windowWidth = $(window).width();
        popHeight = $(".window").height();
        popWidth = $(".window").width();
    }
    //关闭窗口的方法 
    function closeWindow() {
        $(".title img").click(function () {
            $(this).parent().parent().hide("slow");
        });
    }
    //定义弹出居中窗口的方法 
    function popCenterWindow() {
        init();
        //计算弹出窗口的左上角Y的偏移量 
        var popY = (windowHeight - popHeight) / 2;
        var popX = (windowWidth - popWidth) / 2;
        //alert('jihua.cnblogs.com'); 
        //设定窗口的位置 
        $("#center").css("top", popY).css("left", popX).slideToggle("slow");
        closeWindow();
    } 
</script>
 --%>
 <%--<div class="window" id="center"> 
 <div id="title" class="title">
                            <img src="" alt="关闭" />用户详情</div>
 <div class="box-content"><h1 class="center" id="ruanko">公司名称：<%= CompanyName%><small>用户名：莫雄剑</small></h1>
                         <br>
						<h2>公司邮箱：<% = Email %></h2>
                        <h2>公司电话：<% = CompanyTel %></h2>
                        <h2>公司地址：<% = CompanyAddress %></h2>
                        <h2>负责人: <% = Principal %></h2>
                        <h2>负责人联系电话：<% =Phone %>></h2>
                        <h2>公司简介：<small><% = Description %>ll pages in the menu are functional, take a look at all, please share this with your followers.</small></h2>


						<p><b>All pages in the menu are functional, take a look at all, please share this with your followers.</b></p>
						
						<p class="center">
							<a href="user.aspx" class="btn btn-large btn-primary"><i class="icon-chevron-left icon-white"></i> 返回</a> 
							<a href="http://usman.it/free-responsive-admin-template" class="btn btn-large"><i class="icon-download-alt"></i> 审核通过</a>
						</p>
						<div class="clearfix"></div></div> 
    </div> 
  --%>
</body>
</html>
