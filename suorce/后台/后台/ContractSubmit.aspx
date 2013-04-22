<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContractSubmit.aspx.cs" Inherits="后台.ContractMgr" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<style type="text/css">

 p.MsoNormal
	{margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:14.0pt;
	font-family:仿宋_GB2312;
			margin-left: 0cm;
			margin-right: 0cm;
			margin-top: 0cm;
		}
p.MsoBodyTextIndent
	{margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:1.0cm;
	line-height:130%;
	layout-grid-mode:char;
	font-size:14.0pt;
	font-family:仿宋_GB2312;
			margin-left: 0cm;
			margin-right: 0cm;
			margin-top: 0cm;
		}
 table.MsoNormalTable
	{font-size:10.0pt;
	font-family:"Times New Roman";
	}
		.style1
		{
			width: 408.75pt;
		}
	</style>
</head>
<body>
	<form id="form1" runat="server">
	<asp:TextBox ID="tboxNo" class="Noprn" runat="server">Contract No.</asp:TextBox>
	<asp:Button ID="btnRead" class="Noprn" runat="server" onclick="btnRead_Click" Text="Read" />
	<br />
	<p class="MsoNormal" style="layout-grid-mode:char;mso-layout-grid-align:none;
word-break:break-all">
		<span style="font-family:楷体_GB2312">合同编号：<span lang="EN-US" 
			style="color:red"><span style="mso-spacerun:yes">
		<asp:Label ID="lbContractNo" runat="server" Text="ContractNo"></asp:Label>
&nbsp;&nbsp;&nbsp; </span></span></span><span lang="EN-US">
		<o:p>&nbsp;</o:p></span></p>
	<p align="center" class="MsoNormal" style="text-align:center;layout-grid-mode:char;
mso-layout-grid-align:none">
		<b style="mso-bidi-font-weight:normal">
		<span style="font-size:18.0pt;mso-bidi-font-size:10.0pt;font-family:宋体">旅游合同<span 
			lang="EN-US"><o:p></o:p></span></span></b></p>
	<p class="MsoNormal" style="margin-right:56.15pt;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="mso-hansi-font-family:
宋体"><o:p>&nbsp;</o:p></span></p>
	<p class="MsoNormal" style="line-height:130%;layout-grid-mode:char;mso-layout-grid-align:
none">
		<span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;
font-family:宋体">甲方（旅游者）：<span lang="EN-US"><span style="mso-spacerun:yes"><asp:TextBox 
			ID="tboxVisitor" runat="server"></asp:TextBox>
		</span></span></span>
	</p>
	<p class="MsoNormal" style="line-height:130%;layout-grid-mode:char;mso-layout-grid-align:
none">
		<span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;
font-family:宋体">乙方（旅行社）：<span lang="EN-US"><span style="mso-spacerun:yes"><asp:TextBox 
			ID="tboxAgency" runat="server"></asp:TextBox>
		</span></span></span>
	</p>
	<p class="MsoNormal" style="line-height:130%;layout-grid-mode:char;mso-layout-grid-align:
none">
		&nbsp;</p>
	<p class="MsoBodyTextIndent">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">
		为保证旅游服务质量，明确合同当事人的权利义务，根据《中华人民共和国合同法》及《中华人民共和国消费者权益保护法》等有关法律法规的规定，双方经过协商一致，达成如下协议：<span 
			lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="margin-left:84.6pt;text-indent:-56.25pt;line-height:
130%;mso-list:l0 level1 lfo1;tab-stops:list 84.6pt;layout-grid-mode:char;
mso-layout-grid-align:none">
		<![if !supportLists]>
		<span lang="EN-US" style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体;mso-bidi-font-family:宋体"><span style="mso-list:Ignore">第一条<span 
			style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></span></span><![endif]>
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">合同标的<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">路线名称<span lang="EN-US"><span 
			style="mso-spacerun:yes"><asp:TextBox ID="tboxTourName" runat="server"></asp:TextBox>
		</span></span></span>
	</p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">行程共计<span lang="EN-US"><span 
			style="mso-spacerun:yes"><asp:TextBox ID="tboxDays" runat="server"></asp:TextBox>
		天</span></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">出发日期<span lang="EN-US"><span 
			style="mso-spacerun:yes"><asp:TextBox ID="tboxSetOffDate" runat="server"></asp:TextBox>
		&nbsp;&nbsp;
		</span></span>出发地点<span lang="EN-US"><span style="mso-spacerun:yes"><asp:TextBox 
			ID="tboxSetOffPlace" runat="server"></asp:TextBox>
		</span></span></span>
	</p>
	<p align="left" class="MsoNormal" style="text-align:left;text-indent:1.0cm;
line-height:130%;layout-grid-mode:char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">目的地点<span lang="EN-US"><span style="mso-spacerun:yes"><asp:TextBox 
			ID="tboxDestination" runat="server"></asp:TextBox>
		</span></span></span>
	</p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">结束日期<span lang="EN-US"><span 
			style="mso-spacerun:yes"><asp:TextBox ID="tboxEndDate" runat="server"></asp:TextBox>
		&nbsp;&nbsp;
		</span></span>返回地点<span lang="EN-US"><span style="mso-spacerun:yes"><asp:TextBox 
			ID="tboxEndPlace" runat="server"></asp:TextBox>
		</span></span></span>
	</p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		&nbsp;</p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">第二条<span lang="EN-US"><span 
			style="mso-spacerun:yes">&nbsp; </span></span>游程与标准（请附上行程单）<span 
			lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		&nbsp;</p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">第三条<span lang="EN-US"><span 
			style="mso-spacerun:yes">&nbsp; </span></span>旅游者保险<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">乙方应提示甲方购买旅游意外险。经乙方推荐，甲方<span lang="EN-US"><span 
			style="mso-spacerun:yes"><asp:TextBox ID="tboxAgree" runat="server" 
			Width="82px"></asp:TextBox>
		</span></span>（应填同意或不同意）委托乙方办理个人投保的旅游意外保险。</span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">保险公司及产品名称：<span lang="EN-US"><span 
			style="mso-spacerun:yes"><asp:TextBox ID="tboxInsuranceName" runat="server"></asp:TextBox>
		</span></span></span>
	</p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">保险金额：<span lang="EN-US"><span 
			style="mso-spacerun:yes"><asp:TextBox ID="tboxInsuranceStd" runat="server"></asp:TextBox>
		人民币&nbsp;&nbsp;&nbsp;
		</span></span>保险费<span lang="EN-US"><span style="mso-spacerun:yes"><asp:TextBox 
			ID="tboxInsuranceFee" runat="server"></asp:TextBox>
		人民币</span></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体"><o:p>&nbsp;</o:p></span></p>
	<span lang="EN-US" style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:
130%;font-family:宋体;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-font-kerning:
1.0pt;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">
	<br clear="all" style="page-break-before:always" />
	</span>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">第四条<span lang="EN-US"><span 
			style="mso-spacerun:yes">&nbsp; </span></span>旅游费用及其支付<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">甲方应交纳旅游费用总额<span lang="EN-US"><span 
			style="mso-spacerun:yes"><asp:TextBox ID="tboxTotalCost" runat="server"></asp:TextBox>
		人民币</span></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体"><o:p>&nbsp;</o:p></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">第五条<span lang="EN-US"><span 
			style="mso-spacerun:yes">&nbsp; </span></span>双方的权利义务<span lang="EN-US"> <o:p></o:p>
		</span></span>
	</p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">（一）甲方的权利与义务<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">1</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．甲方在旅游活动中应遵守团队纪律，配合导游完成合同约定的旅游行程；甲方应遵守国家法律、法规，尊重旅游目的地的宗教信仰、民族习惯和风土人情。<span 
			lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">2</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．甲方在履行本合同过程中有权拒绝参加合同未约定的其他旅游消费项目。<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">3</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．甲方在本合同安排的购物点所购物品系假冒伪劣商品时，有权要求乙方协助进行索赔。自购物之日起<span lang="EN-US">90</span>日内，甲方无法从购物点获得赔偿的，可凭有效凭证要求乙方先行赔付。<span 
			lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">4</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．在旅游过程中，甲方应保管好随身携带的财物。<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">5</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．在自由活动期间，甲方应在自己能够控制风险的范围内活动，选择自己能够控制风险的活动项目，并对自己的安全负责。<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">6</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．行程中发生纠纷，甲方应与乙方平等协商解决，采取适当措施防止损失扩大，不得以拒绝登机（车、船）等行为拖延行程或者脱团。<span lang="EN-US" 
			style="background: #E5E5E5; mso-shading: white; mso-pattern: gray-10 auto"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">7</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．甲方签订合同或者填写各种报名材料时，应当使用有效身份证件，并对填写信息的真实性负责。甲方不能成行的，可以让具备参加本次旅游条件的第三人代为履行合同，并及时通知旅行社。因代为履行合同增加或减少的费用，双方应按实结算。<span 
			lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">（二）乙方的权利与义务<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">1</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．乙方应如实介绍相关旅游服务项目和标准，向甲方推荐购买个人旅游意外保险，并在合同中予以注明。<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">2</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．乙方应按本合同约定的标准提供服务。对在旅游过程中可能危及甲方人身、财产安全的情况，乙方应事先说明或者明确警示，并采取防止危害发生的措施。<span 
			lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">3</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．甲方属老年人等特殊群体凭有效证件可享受旅游景点门票优惠的，双方对该旅游景点门票价格可在补充条款中另行约定。<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">4</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．因航空、轮船、铁路运输费用遇国家政策性调价导致合同总价发生变更的，双方应按实结算。<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">5</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．在行程中，遇到不可抗力或者意外事件无法继续履行合同的，旅行社在征得旅游团队多数成员同意后可以对相应内容予以变更，变更后增加或减少的费用，双方按实结算。<span 
			lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">第六条<span lang="EN-US"><span 
			style="mso-spacerun:yes">&nbsp; </span></span>违约责任<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">（一）旅游出行前，一方当事人因违约不能成行的，按照下列标准承担违约责任。<span 
			lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">1</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．违约方在出发前<span lang="EN-US">72</span>小时通知对方的，应当支付旅游合同总价<span lang="EN-US">5%</span>的违约金。<span 
			lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">2</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．违约方在出发前<span lang="EN-US">72</span>小时内通知对方的，应当支付旅游合同总价<span lang="EN-US">10%</span>的违约金。<span 
			lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">3</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．以上违约责任如涉及航空、陆运、水运票务等损失，可参照相关部门有关条款另行赔偿，违约金或赔偿金总额不超过旅游费用总额。<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">（二）旅游途中甲方或乙方承担的违约责任。<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">1</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．甲方违反合同约定造成自身或他人损失的，责任由甲方承担。<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">2</span><span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:
宋体">．乙方未按合同标准提供交通、住宿、餐饮等相关服务，或者未经甲方同意调整旅游行程，给甲方造成损失的，责任由乙方承担。<span lang="EN-US"><o:p></o:p></span></span></p>
	<span lang="EN-US" style="font-size:10.5pt;mso-bidi-font-size:10.0pt;font-family:
宋体;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-font-kerning:1.0pt;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">
	<br clear="all" style="page-break-before:always" />
	</span>
	<p class="MsoNormal" style="text-indent:1.0cm;layout-grid-mode:char;mso-layout-grid-align:
none">
		<span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;font-family:宋体">第七条<span 
			lang="EN-US"><span style="mso-spacerun:yes">&nbsp; </span></span>争议解决方式<span 
			lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="margin-bottom:9.0pt;text-indent:1.0cm;line-height:
24.0pt;mso-line-height-rule:exactly;layout-grid-mode:char;mso-layout-grid-align:
none">
		<span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;font-family:宋体">
		双方发生争议的，可协商解决，或向有关部门申请调解；也可提请甲方所在地仲裁委员会仲裁。<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体"><o:p>&nbsp;</o:p></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span style="font-size:10.5pt;mso-bidi-font-size:
10.0pt;line-height:130%;font-family:宋体">第八条<span lang="EN-US"><span 
			style="mso-spacerun:yes">&nbsp; </span></span>合同生效<span lang="EN-US"><o:p></o:p></span></span></p>
	<p class="MsoBodyTextIndent" style="margin-bottom:6.0pt">
		<span style="font-size:
10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体">
		本合同自双方签字或盖章之日起生效，行程单和补充条款均为合同的附件，与本合同具有同等的法律效力。<span lang="EN-US"><o:p></o:p></span></span></p>
	<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" 
			style="border-style: none; border-color: inherit; border-width: medium; border-collapse: collapse; mso-table-layout-alt: fixed; mso-border-alt: solid windowtext .5pt; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; height: 318px;">
			<tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes;">
				<td class="style1" 
					style="border: solid windowtext 1.0pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;" 
					valign="top" width="545">
					<p align="center" class="MsoNormal" style="margin-top:3.0pt;text-align:center;
  line-height:130%;layout-grid-mode:char;mso-layout-grid-align:none">
						<span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;
  font-family:宋体">补 充 条 款<span lang="EN-US"><o:p>（如无请填“无”）</o:p></span></span></p>
					<p class="MsoNormal" style="line-height:130%;layout-grid-mode:char;mso-layout-grid-align:
  none">
						<span lang="EN-US" style="font-size:10.5pt;mso-bidi-font-size:10.0pt;
  line-height:130%;font-family:宋体"><o:p>&nbsp;<asp:TextBox ID="tboxAddtionalSections" runat="server" 
							Height="232px" Width="529px" TextMode="MultiLine"></asp:TextBox>
						</o:p>
						</span>
					</p>
					<p class="MsoNormal" 
						style="line-height: 130%; layout-grid-mode: char; mso-layout-grid-align: none; height: 32px;">
						<o:p></o:p>
					</p>
				</td>
			</tr>
		</table>
	</div>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体"><o:p>&nbsp;</o:p></span></p>
	<p class="MsoNormal" style="text-indent:1.0cm;line-height:130%;layout-grid-mode:
char;mso-layout-grid-align:none">
		<span lang="EN-US" style="font-size:10.5pt;
mso-bidi-font-size:10.0pt;line-height:130%;font-family:宋体"><o:p>&nbsp;</o:p></span></p>
	<p class="MsoNormal" style="line-height:130%;layout-grid-mode:char;mso-layout-grid-align:
none">
		<span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;
font-family:宋体">甲方签字（盖章）：<span lang="EN-US"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></span><span lang="EN-US"><span style="mso-spacerun:yes">&nbsp;&nbsp;日&nbsp;&nbsp;&nbsp; 
		期：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></span></span>
	</p>
	<p class="MsoNormal" style="line-height:130%;layout-grid-mode:char;mso-layout-grid-align:
none">
		&nbsp;</p>
	<p class="MsoNormal" style="line-height:130%;layout-grid-mode:char;mso-layout-grid-align:
none">
		<span style="font-size:10.5pt;mso-bidi-font-size:10.0pt;line-height:130%;
font-family:宋体">乙方签字（盖章）：<span lang="EN-US"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></span><span lang="EN-US"><o:p>&nbsp;<span 
			style="font-size: 10.5pt; mso-bidi-font-size: 10.0pt; line-height: 130%; font-family: 宋体"> 
		日<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp; </span>期：<span 
			style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></span></o:p>
		</span></span>
	</p>
	<p class="MsoNormal" 
		style="line-height: 130%; layout-grid-mode: char; mso-layout-grid-align: none">
	<asp:Button ID="btnCommit" class="Noprn" runat="server" onclick="btnCommit_Click" 
		Text="Submit" />
		<style> @media Print { .Noprn { DISPLAY: none }}</style>
		<input id="btnPrint" class="Noprn" type="button" value="Print" onclick="window.print();"/>
		<%--<asp:Button ID="Button1" runat="server" Text="AspPrint" onclick="this.style.display='none';window.print();"/>--%>
	</p>
	</form>
</body>
</html>
