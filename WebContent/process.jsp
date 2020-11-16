<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.Diary"%>

<jsp:useBean id="diaryDAO" class="dao.DiaryDAO" scope="request" />

<%
	request.setCharacterEncoding("utf-8");
	String content = request.getParameter("content");
%>