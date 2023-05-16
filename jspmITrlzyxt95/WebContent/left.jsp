<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />
<link href="css/left.css" type="text/css" rel="stylesheet" />
<title>左侧菜单</title>
<script src="js/jquery.min.js"></script>
<script language="javascript" type="text/javascript" charset="utf-8" src="js/admin.js"></script>
</head>

<body oncontextmenu="return false" ondragstart="return false" onSelectStart="return false">
	   
	    <div class="div_bigmenu">
 		<div class="div_bigmenu_nav_down" id="nav_1" onclick="javascript:lefttoggle(1);">系统用户管理</div>
		<ul id="ul_1">
			<li><a href="yhzhgl.jsp" target='main'>管理员用户</a></li>
			<li><a href="mod.jsp" target='main'>修改密码</a></li>
				
		</ul>
	    </div>
		
		
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(2);" id="nav_2">部门信息</div>
		<ul id="ul_2">
			<li><a href="bumenxinxi_add.jsp" target='main'>部门添加</a></li>
			<li><a href="bumenxinxi_list.jsp" target='main'>部门查询</a></li>
		</ul>
	    </div> 
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(3);" id="nav_3">员工信息</div>
		<ul id="ul_3">
			<li><a href="yuangongxinxi_add.jsp" target='main'>员工添加</a></li>
			<li><a href="yuangongxinxi_list.jsp" target='main'>员工查询</a></li>
		</ul>
		</div>
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(9);" id="nav_9">员工维护</div>
		<ul id="ul_9">
			<li><a href="yuangongxinxi_list2.jsp" target='main'>员工维护</a></li>
			<li><a href="yuangongweihu_list.jsp" target='main'>员工维护查询</a></li>
		</ul>
		</div>
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(4);" id="nav_4">考勤信息</div>
		<ul id="ul_4">
			<li><a href="kaoqinxinxi_add.jsp" target='main'>考勤信息添加</a></li>
			<li><a href="kaoqinxinxi_list.jsp" target='main'>考勤信息查询</a></li>
		</ul>
		</div>
		
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(5);" id="nav_5">工资信息</div>
		<ul id="ul_5">
			<li><a href="gongzixinxi_add.jsp" target='main'>工资信息添加</a></li>
			<li><a href="gongzixinxi_list.jsp" target='main'>工资信息查询</a></li>
		</ul>
		</div>
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(6);" id="nav_6">公告信息管理</div>
		<ul id="ul_6">
			<li><a href="gonggaoxinxi_add.jsp" target='main'>公告信息添加</a></li>
			<li><a href="gonggaoxinxi_list.jsp" target='main'>公告信息查询</a></li>
		</ul>
		</div>
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(7);" id="nav_7">文件信息管理</div>
		<ul id="ul_7">
			<li><a href="wenjianxinxi_add.jsp" target='main'>文件信息添加</a></li>
			<li><a href="wenjianxinxi_list.jsp" target='main'>文件信息查询</a></li>
		</ul>
		</div>
	
        
  
        
        
        <div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(8);" id="nav_8">请假信息</div>
		<ul id="ul_8">
		
			<li><a href="qingjiaxinxi_list.jsp" target='main'>请假信息查询</a></li>
			
		</ul>
		</div>
        
     
		
	</body>
</html>


