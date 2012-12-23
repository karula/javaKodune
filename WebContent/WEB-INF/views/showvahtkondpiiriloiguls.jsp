<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="pr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<pr:main>
	<h2>Vahtkond piirilõigul:</h2>
	<c:forEach items="${vploigullist}" var="vploigul">
			Vahtkond: <c:out value="${vploigul.vahtkond.nimetus}"></c:out><a href="vahtkondpiiriloigul?id=<c:out value="${vploigul.id}"></c:out>">VAATA</a><br/>
    </c:forEach>
	Sisesta uus: <a href="addvahtkondpiiriloigul">LISA</a>
</pr:main>
