<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>员工信息详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yuangongxinxi");
     %>
  员工信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>工号：</td><td width='39%'><%=m.get("gonghao")%></td><td width='11%'>密码：</td><td width='39%'><%=m.get("mima")%></td></tr><tr><td width='11%'>部门：</td><td width='39%'><%=m.get("bumen")%></td><td width='11%'>姓名：</td><td width='39%'><%=m.get("xingming")%></td></tr><tr><td width='11%'>性别：</td><td width='39%'><%=m.get("xingbie")%></td><td width='11%'>出生日期：</td><td width='39%'><%=m.get("chushengriqi")%></td></tr><tr><td width='11%'>学历：</td><td width='39%'><%=m.get("xueli")%></td><td width='11%'>手机：</td><td width='39%'><%=m.get("shouji")%></td></tr><tr><td width='11%'>邮箱：</td><td width='39%'><%=m.get("youxiang")%></td><td width='11%'>地址：</td><td width='39%'><%=m.get("dizhi")%></td></tr><tr><td width='11%'>合同号：</td><td width='39%'><%=m.get("hetonghao")%></td><td width='11%'>状态：</td><td width='39%'><%=m.get("zhuangtai")%></td></tr><tr><td width='11%'>入职时间：</td><td width='39%'><%=m.get("ruzhishijian")%></td><td width='11%'>简介：</td><td width='39%'><%=m.get("jianjie")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


