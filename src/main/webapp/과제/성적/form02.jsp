<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- content type : 결과값 -->
    <!--  pageEncoding :  -->

<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("ireom");
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String math = request.getParameter("math");
		int sum = Integer.parseInt(math)+Integer.parseInt(eng)+Integer.parseInt(kor);
		float avg = ((Float.parseFloat(math)+Float.parseFloat(eng)+Float.parseFloat(kor))/3);
		out.println(name);
		out.println(kor);
		out.println(eng);
		out.println(math);
		out.println(sum);
		out.println(String.format("%.2f", avg));
		
%>