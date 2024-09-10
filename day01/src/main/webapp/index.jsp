<%@page import="org.comstudy.myweb.model.TodoVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	// service 함수 외부에 들어가는 내용
	// 선언문 : 멤버 필드, 멤버 메서드 등
	private String name = "홍길동";
	public String sayHello() {
		return name + "님 안녕하세요!";
	}
%>

<%
// service 함수 내부의 내용
// 스크립트릿 : 이 부분에서 자바 소스코드 사용 가능
// JSP 파일을 Tomcat에서 실행 하면 Servlet JAVA소스코드로 변경 되고
// 변경된 소스코드를 컴파일 해서 .class 파일로 만들어진다.
// Tomcat이 .class 파일을 브라우저에 실행 하도록 만들어 줌(HTML로 바뀜)

// src 영역에 선성된 JAVA 객체 바로 사용 가능. (사용 할 클래스 import 필수)
TodoVo todo = new TodoVo(100, "집안 정리하기", true);
%>

<p> 결과 : <%= todo %> </p>
<h1>Hello JSP world</h1>
<a href="app">app 실행</a>

</body>
</html>