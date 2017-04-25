<%@page contentType="text/html;charset=UTF-8"%>

<HTML>
<HEAD><TITLE>presentation</TITLE></HEAD>
<BODY>
<% request.setCharacterEncoding("utf-8");
String[] name = request.getParameterValues("lbxBook");
for(int i=0; i<name.length;i++)
{
  out.print(name[i]);
  %><br><%
}


%>



</BODY>
</HTML>
