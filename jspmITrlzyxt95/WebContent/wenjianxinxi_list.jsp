<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>文件信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有文件信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  文件编号：<input name="wenjianbianhao" type="text" id="wenjianbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  文件名称：<input name="wenjianmingcheng" type="text" id="wenjianmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='wenjianxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>文件编号</td>    <td bgcolor='#CCFFFF'>文件名称</td>    <td bgcolor='#CCFFFF' width='90' align='center'>文件</td>        
	
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"wenjianxinxi"); 
    String url = "wenjianxinxi_list.jsp?1=1"; 
    String sql =  "select * from wenjianxinxi where 1=1";
	if(request.getParameter("wenjianbianhao")=="" ||request.getParameter("wenjianbianhao")==null ){}else{sql=sql+" and wenjianbianhao like '%"+request.getParameter("wenjianbianhao")+"%'";}if(request.getParameter("wenjianmingcheng")=="" ||request.getParameter("wenjianmingcheng")==null ){}else{sql=sql+" and wenjianmingcheng like '%"+request.getParameter("wenjianmingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("wenjianbianhao") %></td>    <td><%=map.get("wenjianmingcheng") %></td>    <td width='90' align='center'><a href='<%=map.get("wenjian") %>' target='_blank'>下载</a></td>        
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="wenjianxinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="wenjianxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="wenjianxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

