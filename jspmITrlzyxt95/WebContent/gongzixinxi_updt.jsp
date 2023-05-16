<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>工资信息</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"gongzixinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"gongzixinxi"); 

%>
  <form  action="gongzixinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改工资信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>工号：</td><td><input name='gonghao' type='text' id='gonghao' value='<%= mmm.get("gonghao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>部门：</td><td><input name='bumen' type='text' id='bumen' value='<%= mmm.get("bumen")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>月份：</td><td><select name='yuefen' id='yuefen'><option value="1月">1月</option><option value="2月">2月</option><option value="3月">3月</option><option value="4月">4月</option><option value="5月">5月</option><option value="6月">6月</option><option value="7月">7月</option><option value="8月">8月</option><option value="9月">9月</option><option value="10月">10月</option><option value="11月">11月</option><option value="12月">12月</option></select></td></tr><script language="javascript">document.form1.yuefen.value='<%=mmm.get("yuefen")%>';</script>     <tr><td>基本工资：</td><td><input name='jibengongzi' type='text' id='jibengongzi' value='<%= mmm.get("jibengongzi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>加班费：</td><td><input name='jiabanfei' type='text' id='jiabanfei' value='<%= mmm.get("jiabanfei")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>奖金：</td><td><input name='jiangjin' type='text' id='jiangjin' value='<%= mmm.get("jiangjin")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>惩金：</td><td><input name='chengjin' type='text' id='chengjin' value='<%= mmm.get("chengjin")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>扣除请假费用：</td><td><input name='kouchuqingjiafeiyong' type='text' id='kouchuqingjiafeiyong' value='<%= mmm.get("kouchuqingjiafeiyong")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>扣除旷工费用：</td><td><input name='kouchukuanggongfeiyong' type='text' id='kouchukuanggongfeiyong' value='<%= mmm.get("kouchukuanggongfeiyong")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>扣除税费：</td><td><input name='kouchushuifei' type='text' id='kouchushuifei' value='<%= mmm.get("kouchushuifei")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>扣除保险费：</td><td><input name='kouchubaoxianfei' type='text' id='kouchubaoxianfei' value='<%= mmm.get("kouchubaoxianfei")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>扣除公积金：</td><td><input name='kouchugongjijin' type='text' id='kouchugongjijin' value='<%= mmm.get("kouchugongjijin")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>实发工资：</td><td><input name='shifagongzi' type='text' id='shifagongzi' value='<%= mmm.get("shifagongzi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


