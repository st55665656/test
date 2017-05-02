<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
	body {
		background-color: lightgreen;
		text-align: center;
	}
</style>
</head>
<body>
<div>
<%
	request.setCharacterEncoding("utf-8");
	//文字（text）
	out.print("名字："+ request.getParameter("na"));
	out.print("<br><br>");
	//radio（radio
	out.print("性別："+request.getParameter("sex"));
	out.print("<br><br>");
	//清單方塊（select multiple）
	out.print("喜歡的學科：");
	//讀陣列資料
		String[] cla = request.getParameterValues("class");
		for(int i=0;i<cla.length;i++){
			out.print(cla[i]);
			if(i+1 <cla.length){
				out.print("、");
			}
		}
	out.print("<br><br>");
	//checkbox（checkbox）
	out.print("興趣：");
	//讀陣列資料
	  String[] lang = request.getParameterValues("check");
	  	for(int i=0;i<lang.length;i++){
	  		out.print(lang[i]);
	  		if(i+1<lang.length){
	  			out.print("、");
	  		}
	  	}
	out.print("<br><br>");
	//文字方塊（textarea）
	out.print("自傳："+request.getParameter("per"));
	out.print("<br><br>");
	//下拉清單（select）
	out.print("國家: "+request.getParameter("contry"));
%>
</div>
</body>
</html>
