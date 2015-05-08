<%@page import="asian.ducdh.ConnectMySQL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String account = request.getParameter("account");
	String password = request.getParameter("password");
	ConnectMySQL connect = new ConnectMySQL();
	if (connect.checkLogin(account, password)){
		response.sendRedirect("welcome.jsp");
	}else {
		response.sendRedirect("index.jsp");
	}
%>