<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.Diary"%>

<jsp:useBean id="diaryDAO" class="dao.DiaryDAO" scope="request" />

<%
	request.setCharacterEncoding("utf-8");
	String content = request.getParameter("content");
	
	Diary diary = new Diary();
	diary.setContent(content);
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	diary.setDate(sdf.format(new Date()));
	
	diaryDAO.insertDiary(diary);
	response.sendRedirect("diary.jsp");
%>