<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="后台.WebForm3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
</head>

<body>
			<div  id="look" class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title="">
						<h2><i class="icon-user"></i>管理员列表</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
							<table id="boxman" class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>管理员账户名</th>
								  <th>注册日期</th>
								  <th>类型</th>
								  <th>状态</th>
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
    
                                    <button  id ="<%= listUser[i].UserName %>" class="btn-success" >
                                    <i class="icon-pencil icon-white"></i>
                                    解冻</button>
                                    </a>
                                    </a>									
                                   <%-- <%string Btnid = i.ToString(); string UserName = listUser[i].UserName;%>--%>
                                    <a >
                                    <button  id = "<%= listUser[i].UserName %>"  class="btn-info"   >
                                    <i class="icon-edit icon-white "></i>
                                    
                                    冻结</button>
                                        
                                    </a>                             									
                                    <a >
                                    <button  id ="<%= listUser[i].UserName %>" class="btn-inverse" >
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
    <script src="js/charisma.js"></script>
	<!-- application script for Charisma demo -->
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

                       $("#look").load("admin-refresh.aspx");
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

    <script type="text/javascript" language="javascript">
        $(function () {
            $("#dialog:ui-dialog").dialog("destroy");
            $(".btn-info").click(function () {
                var username = $(this).attr("id");
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
                                    $("#look").load("admin-refresh.aspx");
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
            });
        });
    </script>

    <script type="text/javascript" language="javascript">
        $(function () {
            $("#dialog:ui-dialog").dialog("destroy");
            $(".btn-inverse").click(function () {
                var username = $(this).attr("id");
                $("#msg").show();
                $("#dialog-delete").dialog({
                    resizable: false,
                    height: 140,
                    modal: true,
                    buttons: {
                        "删除": function () {
                            $.ajax({
                                type: "Post",
                                url: "user.aspx/Delete",
                                //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字      
                                data: "{ 'str': '" + username + "' }",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    //返回的数据用data.d获取内容      
                                    $("#look").load("admin-refresh.aspx");

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
            });
        });
    </script>

      <div id="dialog-confirm" title="冻结提示?">
        <p id="msg" style="display: none;">
            <span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;"></span>
            确认要冻结该用户吗？</p>
    </div>

      <div id="dialog-delete" title="删除提示?">
        <p id="P1" style="display: none;">
            <span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;"></span>
            确认要删除该用户吗？</p>
    </div>

    </body>
    </html>