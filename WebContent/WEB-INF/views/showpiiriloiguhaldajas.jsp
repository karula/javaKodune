<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="pr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<pr:main>
	<h2>Piirilõikude haldajad:</h2>
	<c:forEach items="${plhaldajalist}" var="plhaldaja">
			Piirilõik: <c:out value="${plhaldaja.piiriloik_id.nimetus}"></c:out>
			Piiripunkt: <c:out value="${plhaldaja.piiripunkt_id.nimetus}"></c:out>
			<a href="piiriloiguhaldaja?id=<c:out value="${plhaldaja.id}"></c:out>">VAATA</a><br/>
    </c:forEach>
	Sisesta uus: <a href="addpiiriloiguhaldaja">LISA</a>
</pr:main>
