<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>工资信息</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="gongzixinxi_add.jsp?id=<%=id%>&gonghao="+document.form1.gonghao.value;
}
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

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){

double shifagongzij=0;shifagongzij=Float.valueOf(request.getParameter("jibengongzi")).floatValue()+Float.valueOf(request.getParameter("jiabanfei")).floatValue()+Float.valueOf(request.getParameter("jiangjin")).floatValue()-Float.valueOf(request.getParameter("chengjin")).floatValue()-Float.valueOf(request.getParameter("kouchuqingjiafeiyong")).floatValue()-Float.valueOf(request.getParameter("kouchukuanggongfeiyong")).floatValue()-Float.valueOf(request.getParameter("kouchushuifei")).floatValue()-Float.valueOf(request.getParameter("kouchubaoxianfei")).floatValue()-Float.valueOf(request.getParameter("kouchugongjijin")).floatValue();



ext.put("shifagongzi",shifagongzij);

}
new CommDAO().insert(request,response,"gongzixinxi",ext,true,false,""); 
%>

  <body >
 <form  action="gongzixinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加工资信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td>工号：</td><td><%=Info.getselectsl("gonghao","yuangongxinxi","gonghao")%>&nbsp;*<label id='clabelgonghao' /></td></tr>
		<tr><td  width="200">部门：</td><td><input name='bumen' type='text' id='bumen' style='border:solid 1px #000000; color:#666666' >&nbsp;*<label id='clabelbumen' /></td></tr>
		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' style='border:solid 1px #000000; color:#666666' >&nbsp;*<label id='clabelxingming' /></td></tr>
		<tr><td>月份：</td><td><select name='yuefen' id='yuefen'><option value="1月">1月</option><option value="2月">2月</option><option value="3月">3月</option><option value="4月">4月</option><option value="5月">5月</option><option value="6月">6月</option><option value="7月">7月</option><option value="8月">8月</option><option value="9月">9月</option><option value="10月">10月</option><option value="11月">11月</option><option value="12月">12月</option></select></td></tr>
		<tr><td  width="200">基本工资：</td><td><input name='jibengongzi' type='text' id='jibengongzi' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabeljibengongzi' />必需数字型</td></tr>
		<tr><td  width="200">加班费：</td><td><input name='jiabanfei' type='text' id='jiabanfei' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabeljiabanfei' />必需数字型</td></tr>
		<tr><td  width="200">奖金：</td><td><input name='jiangjin' type='text' id='jiangjin' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabeljiangjin' />必需数字型</td></tr>
		<tr><td  width="200">惩金：</td><td><input name='chengjin' type='text' id='chengjin' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelchengjin' />必需数字型</td></tr>
		<tr><td  width="200">扣除请假费用：</td><td><input name='kouchuqingjiafeiyong' type='text' id='kouchuqingjiafeiyong' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelkouchuqingjiafeiyong' />必需数字型</td></tr>
		<tr><td  width="200">扣除旷工费用：</td><td><input name='kouchukuanggongfeiyong' type='text' id='kouchukuanggongfeiyong' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelkouchukuanggongfeiyong' />必需数字型</td></tr>
		<tr><td  width="200">扣除税费：</td><td><input name='kouchushuifei' type='text' id='kouchushuifei' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelkouchushuifei' />必需数字型</td></tr>
		<tr><td  width="200">扣除保险费：</td><td><input name='kouchubaoxianfei' type='text' id='kouchubaoxianfei' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelkouchubaoxianfei' />必需数字型</td></tr>
		<tr><td  width="200">扣除公积金：</td><td><input name='kouchugongjijin' type='text' id='kouchugongjijin' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelkouchugongjijin' />必需数字型</td></tr>
		<tr><td  width="200">实发工资：</td><td> 此项不必填写，系统自动计算</td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<%
if(request.getParameter("gonghao")==null || request.getParameter("gonghao").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("gonghao",request.getParameter("gonghao"),"yuangongxinxi"); 
%>
<script language="javascript">
document.form1.gonghao.value="<%=mmm.get("gonghao")%>";
document.form1.bumen.value="<%=mmm.get("bumen")%>";
document.form1.xingming.value="<%=mmm.get("xingming")%>";
//suilafuzhi

</script>
<%
}
%>



<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var gonghaoobj = document.getElementById("gonghao"); if(gonghaoobj.value==""){document.getElementById("clabelgonghao").innerHTML="&nbsp;&nbsp;<font color=red>请输入工号</font>";return false;}else{document.getElementById("clabelgonghao").innerHTML="  "; } 
	var bumenobj = document.getElementById("bumen"); if(bumenobj.value==""){document.getElementById("clabelbumen").innerHTML="&nbsp;&nbsp;<font color=red>请输入部门</font>";return false;}else{document.getElementById("clabelbumen").innerHTML="  "; } 
	var xingmingobj = document.getElementById("xingming"); if(xingmingobj.value==""){document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";return false;}else{document.getElementById("clabelxingming").innerHTML="  "; } 
	var jibengongziobj = document.getElementById("jibengongzi"); if(jibengongziobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(jibengongziobj.value)){document.getElementById("clabeljibengongzi").innerHTML=""; }else{document.getElementById("clabeljibengongzi").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var jiabanfeiobj = document.getElementById("jiabanfei"); if(jiabanfeiobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(jiabanfeiobj.value)){document.getElementById("clabeljiabanfei").innerHTML=""; }else{document.getElementById("clabeljiabanfei").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var jiangjinobj = document.getElementById("jiangjin"); if(jiangjinobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(jiangjinobj.value)){document.getElementById("clabeljiangjin").innerHTML=""; }else{document.getElementById("clabeljiangjin").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var chengjinobj = document.getElementById("chengjin"); if(chengjinobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(chengjinobj.value)){document.getElementById("clabelchengjin").innerHTML=""; }else{document.getElementById("clabelchengjin").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var kouchuqingjiafeiyongobj = document.getElementById("kouchuqingjiafeiyong"); if(kouchuqingjiafeiyongobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(kouchuqingjiafeiyongobj.value)){document.getElementById("clabelkouchuqingjiafeiyong").innerHTML=""; }else{document.getElementById("clabelkouchuqingjiafeiyong").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var kouchukuanggongfeiyongobj = document.getElementById("kouchukuanggongfeiyong"); if(kouchukuanggongfeiyongobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(kouchukuanggongfeiyongobj.value)){document.getElementById("clabelkouchukuanggongfeiyong").innerHTML=""; }else{document.getElementById("clabelkouchukuanggongfeiyong").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var kouchushuifeiobj = document.getElementById("kouchushuifei"); if(kouchushuifeiobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(kouchushuifeiobj.value)){document.getElementById("clabelkouchushuifei").innerHTML=""; }else{document.getElementById("clabelkouchushuifei").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var kouchubaoxianfeiobj = document.getElementById("kouchubaoxianfei"); if(kouchubaoxianfeiobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(kouchubaoxianfeiobj.value)){document.getElementById("clabelkouchubaoxianfei").innerHTML=""; }else{document.getElementById("clabelkouchubaoxianfei").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var kouchugongjijinobj = document.getElementById("kouchugongjijin"); if(kouchugongjijinobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(kouchugongjijinobj.value)){document.getElementById("clabelkouchugongjijin").innerHTML=""; }else{document.getElementById("clabelkouchugongjijin").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


