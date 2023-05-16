<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>员工维护</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有员工维护列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  工号：<input name="gonghao" type="text" id="gonghao" style='border:solid 1px #000000; color:#666666' size="12" />  部门：<input name="bumen" type="text" id="bumen" style='border:solid 1px #000000; color:#666666' size="12" />  姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  性别：<input name="xingbie" type="text" id="xingbie" style='border:solid 1px #000000; color:#666666' size="12" />  出生日期：<input name="chushengriqi" type="text" id="chushengriqi" style='border:solid 1px #000000; color:#666666' size="12" />  学历：<input name="xueli" type="text" id="xueli" style='border:solid 1px #000000; color:#666666' size="12" />  手机：<input name="shouji" type="text" id="shouji" style='border:solid 1px #000000; color:#666666' size="12" />  邮箱：<input name="youxiang" type="text" id="youxiang" style='border:solid 1px #000000; color:#666666' size="12" />  合同号：<input name="hetonghao" type="text" id="hetonghao" style='border:solid 1px #000000; color:#666666' size="12" /> 事件：<select name='shijian' id='shijian' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="离职">离职</option></select>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='yuangongweihu_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>工号</td>    <td bgcolor='#CCFFFF'>部门</td>    <td bgcolor='#CCFFFF'>姓名</td>    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>    <td bgcolor='#CCFFFF'>出生日期</td>    <td bgcolor='#CCFFFF'>学历</td>    <td bgcolor='#CCFFFF'>手机</td>    <td bgcolor='#CCFFFF'>邮箱</td>    <td bgcolor='#CCFFFF'>地址</td>    <td bgcolor='#CCFFFF'>合同号</td>    <td bgcolor='#CCFFFF'>入职时间</td>    <td bgcolor='#CCFFFF'>事件</td>    <td bgcolor='#CCFFFF' width='65' align='center'>离职时间</td>    <td bgcolor='#CCFFFF'>离职原因</td>        
	
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"yuangongweihu"); 
    String url = "yuangongweihu_list.jsp?1=1"; 
    String sql =  "select * from yuangongweihu where 1=1";
	if(request.getParameter("gonghao")=="" ||request.getParameter("gonghao")==null ){}else{sql=sql+" and gonghao like '%"+request.getParameter("gonghao")+"%'";}if(request.getParameter("bumen")=="" ||request.getParameter("bumen")==null ){}else{sql=sql+" and bumen like '%"+request.getParameter("bumen")+"%'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}if(request.getParameter("chushengriqi")=="" ||request.getParameter("chushengriqi")==null ){}else{sql=sql+" and chushengriqi like '%"+request.getParameter("chushengriqi")+"%'";}if(request.getParameter("xueli")=="" ||request.getParameter("xueli")==null ){}else{sql=sql+" and xueli like '%"+request.getParameter("xueli")+"%'";}if(request.getParameter("shouji")=="" ||request.getParameter("shouji")==null ){}else{sql=sql+" and shouji like '%"+request.getParameter("shouji")+"%'";}if(request.getParameter("youxiang")=="" ||request.getParameter("youxiang")==null ){}else{sql=sql+" and youxiang like '%"+request.getParameter("youxiang")+"%'";}if(request.getParameter("hetonghao")=="" ||request.getParameter("hetonghao")==null ){}else{sql=sql+" and hetonghao like '%"+request.getParameter("hetonghao")+"%'";}if(request.getParameter("shijian")=="" ||request.getParameter("shijian")==null ){}else{sql=sql+" and shijian like '%"+request.getParameter("shijian")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("gonghao") %></td>    <td><%=map.get("bumen") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("chushengriqi") %></td>    <td><%=map.get("xueli") %></td>    <td><%=map.get("shouji") %></td>    <td><%=map.get("youxiang") %></td>    <td><%=map.get("dizhi") %></td>    <td><%=map.get("hetonghao") %></td>    <td><%=map.get("ruzhishijian") %></td>    <td><%=map.get("shijian") %></td>    <td><%=map.get("lizhishijian") %></td>    <td><%=map.get("lizhiyuanyin") %></td>        
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="yuangongweihu_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="yuangongweihu_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="yuangongweihu_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

