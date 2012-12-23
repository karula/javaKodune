<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="pr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<pr:main>
	<h2>Väeosad:</h2>
	<c:forEach items="${vlist}" var="vaeosa">
			Piiripunkt: <c:out value="${vaeosa.nimetus}"></c:out><a href="vaeosa?id=<c:out value="${vaeosa.id}"></c:out>">VAATA</a><br/>
    </c:forEach>
	Sisesta uus: <a href="addvaeosa">LISA</a>
</pr:main>
