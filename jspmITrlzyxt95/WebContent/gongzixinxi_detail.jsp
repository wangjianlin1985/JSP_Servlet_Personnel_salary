<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>工资信息详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"gongzixinxi");
     %>
  工资信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>工号：</td><td width='39%'><%=m.get("gonghao")%></td><td width='11%'>部门：</td><td width='39%'><%=m.get("bumen")%></td></tr><tr><td width='11%'>姓名：</td><td width='39%'><%=m.get("xingming")%></td><td width='11%'>月份：</td><td width='39%'><%=m.get("yuefen")%></td></tr><tr><td width='11%'>基本工资：</td><td width='39%'><%=m.get("jibengongzi")%></td><td width='11%'>加班费：</td><td width='39%'><%=m.get("jiabanfei")%></td></tr><tr><td width='11%'>奖金：</td><td width='39%'><%=m.get("jiangjin")%></td><td width='11%'>惩金：</td><td width='39%'><%=m.get("chengjin")%></td></tr><tr><td width='11%'>扣除请假费用：</td><td width='39%'><%=m.get("kouchuqingjiafeiyong")%></td><td width='11%'>扣除旷工费用：</td><td width='39%'><%=m.get("kouchukuanggongfeiyong")%></td></tr><tr><td width='11%'>扣除税费：</td><td width='39%'><%=m.get("kouchushuifei")%></td><td width='11%'>扣除保险费：</td><td width='39%'><%=m.get("kouchubaoxianfei")%></td></tr><tr><td width='11%'>扣除公积金：</td><td width='39%'><%=m.get("kouchugongjijin")%></td><td width='11%'>实发工资：</td><td width='39%'><%=m.get("shifagongzi")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


