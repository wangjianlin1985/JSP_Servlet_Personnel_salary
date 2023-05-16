<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=employee_information_maintenance.xls");
%>
<html>
  <head>
    <title>员工维护</title>
  </head>

  <body >
  <p>已有员工维护列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>工号</td>
    <td bgcolor='#CCFFFF'>部门</td>
    <td bgcolor='#CCFFFF'>姓名</td>
    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>
    <td bgcolor='#CCFFFF'>出生日期</td>
    <td bgcolor='#CCFFFF'>学历</td>
    <td bgcolor='#CCFFFF'>手机</td>
    <td bgcolor='#CCFFFF'>邮箱</td>
    <td bgcolor='#CCFFFF'>地址</td>
    <td bgcolor='#CCFFFF'>合同号</td>
    <td bgcolor='#CCFFFF'>入职时间</td>
    <td bgcolor='#CCFFFF'>事件</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>离职时间</td>
    <td bgcolor='#CCFFFF'>离职原因</td>
    
    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "yuangongweihu_list.jsp?1=1"; 
    String sql =  "select * from yuangongweihu where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("gonghao") %></td>
    <td><%=map.get("bumen") %></td>
    <td><%=map.get("xingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td><%=map.get("chushengriqi") %></td>
    <td><%=map.get("xueli") %></td>
    <td><%=map.get("shouji") %></td>
    <td><%=map.get("youxiang") %></td>
    <td><%=map.get("dizhi") %></td>
    <td><%=map.get("hetonghao") %></td>
    <td><%=map.get("ruzhishijian") %></td>
    <td><%=map.get("shijian") %></td>
    <td><%=map.get("lizhishijian") %></td>
    <td><%=map.get("lizhiyuanyin") %></td>
    
    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

