<%@page import="bustago.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<%
	boolean data = MemberDao.overlapCheck(request.getParameter("M_ID"));
	String overlap = String.valueOf(data);
%>
{
	"overlap" : "<%=overlap%>"
}