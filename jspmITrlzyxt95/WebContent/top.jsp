<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>javascript:alert('对不起，您已超时或未登陆,请在IE中重新打开登陆！');window.close();</script>");
	out.close();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>头部</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />
<link rel="stylesheet" type="text/css" href="css/top.css" />
<script src="js/topmenu.js"></script>
<script src="js/jquery.min.js"></script>

<script language="javascript" type="text/javascript">

var displayBar=true;
function switchBar(obj)
{
	if (document.all) //IE
	{
		if (displayBar)
		{
			parent.frame.cols="0,*";
			displayBar=false;
			obj.value="打开左边菜单";
		}
		else{
			parent.frame.cols="210,*";
			displayBar=true;
			obj.value="关闭左边菜单";
		}
	}
	else //Firefox 
	{  
		if (displayBar)
		{
			self.top.document.getElementById('frame').cols="0,*";
			displayBar=false;
			obj.value="打开左边菜单";
		}
		else{
			self.top.document.getElementById('frame').cols="210,*";
			displayBar=true;
			obj.value="关闭左边菜单";
		}
	}
}
</script>
</head>

<body oncontextmenu="return false" ondragstart="return false" onSelectStart="return false">
<div class="top_box">
    <div class="top_logo"><div align="center" style="color: #CCFFCC;font-size: 15pt;font-weight: bold;">人力资源系统</div></div>
    <div class="top_nav">
      <div class="top_nav_sm">
		 		 <span style="float:right; padding-right:12px"> [<a href="index.jsp" target='_parent' ><strong>首页</strong></a>]  </span>
		 		你好！<%=request.getSession().getAttribute("username")%> [<%=request.getSession().getAttribute("cx")%>]  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;		</div>
         <div class="top_nav_xm">
             <div class="navtit" id="navtit">
                <span onclick="changeMenu(this);"  class="hover"><a href="sy.jsp" target='main'><i>首页</i></a></span>
				<span onclick="changeMenu(this);" ><a href="yhzhgl.jsp" target='main'><i>用户管理</i></a></span>				
				<span onclick="changeMenu(this);"><a href="mod.jsp" target='main'><i>修改密码</i></a></span>
				<span onclick="changeMenu(this);"><a href="jisuanqi/index.html" target='main'><i>计算器</i></a></span>	
				<!--<span onclick="changeMenu(this);"><a href="wnl2.jsp" target="main"><i>万年历</i></a></span>-->
				<!--<span onclick="changeMenu(this);"><a href="dayucms.jsp?file=left&menu=module&path=adv" target="leftFrame"><i>广告管理</i></a></span>-->	
				<!--<span onclick="changeMenu(this);"><a href="dayucms.jsp?file=left&menu=other" target='leftFrame'><i>拓展功能</i></a></span>-->
           </div>
         </div>
    </div>
    <div class="top_bar"><input onClick="switchBar(this)" type="button" value="关闭左边菜单" name="SubmitBtn" class="bntof"/> 
    <div class="top_she">  
		<a href="javascript:void(0);" onClick="self.top.location.href='logout.jsp'">安全注销</a> <a onClick="javascript:window.parent.main.history.go(-1);" style="cursor:pointer;">前进一页</a>
		 <a onclick="javascript:window.parent.main.location.reload();" style="cursor:pointer;">刷新页面</a>    </div>
    </div>
</div>
</body>
</html>


