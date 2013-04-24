<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="route.aspx.cs" Inherits="后台.WebForm5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
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
									  <p><h6>地点标价：<%=PlacePrice[i]%></h6></p>
									  <blockquote >
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
                          <br>
                          <br>
                          <div class="clearfix"></div>
                          <p class="center">						
                          <a href="route.aspx" class="btn btn-large btn-primary"><i class="icon-chevron-left icon-white"></i> 返回</a>
                          </p>
                          <br>
                          <br>
                       
				</div><!--/span-->
				
		
				</div><!--/fluid-row-->
				

	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	
	<script src="js/charisma.js"></script>
</body>
</html>
