<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=Salary_information.xls");
%>
<html>
  <head>
    <title>工资信息</title>
  </head>

  <body >
  <p>已有工资信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>工号</td>
    <td bgcolor='#CCFFFF'>部门</td>
    <td bgcolor='#CCFFFF'>姓名</td>
    <td bgcolor='#CCFFFF'>月份</td>
    <td bgcolor='#CCFFFF'>基本工资</td>
    <td bgcolor='#CCFFFF'>加班费</td>
    <td bgcolor='#CCFFFF'>奖金</td>
    <td bgcolor='#CCFFFF'>惩金</td>
    <td bgcolor='#CCFFFF'>扣除请假费用</td>
    <td bgcolor='#CCFFFF'>扣除旷工费用</td>
    <td bgcolor='#CCFFFF'>扣除税费</td>
    <td bgcolor='#CCFFFF'>扣除保险费</td>
    <td bgcolor='#CCFFFF'>扣除公积金</td>
    <td bgcolor='#CCFFFF'>实发工资</td>
    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "gongzixinxi_list.jsp?1=1"; 
    String sql =  "select * from gongzixinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("gonghao") %></td>
    <td><%=map.get("bumen") %></td>
    <td><%=map.get("xingming") %></td>
    <td><%=map.get("yuefen") %></td>
    <td><%=map.get("jibengongzi") %></td>
    <td><%=map.get("jiabanfei") %></td>
    <td><%=map.get("jiangjin") %></td>
    <td><%=map.get("chengjin") %></td>
    <td><%=map.get("kouchuqingjiafeiyong") %></td>
    <td><%=map.get("kouchukuanggongfeiyong") %></td>
    <td><%=map.get("kouchushuifei") %></td>
    <td><%=map.get("kouchubaoxianfei") %></td>
    <td><%=map.get("kouchugongjijin") %></td>
    <td><%=map.get("shifagongzi") %></td>
    
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

