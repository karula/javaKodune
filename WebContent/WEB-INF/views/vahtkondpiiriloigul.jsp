<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="pr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script>
    $(function() {
        $( "#datepicker1" ).datepicker();
    });
    $(function() {
        $( "#datepicker2" ).datepicker();
    });
    </script>
<pr:main>
			<form:form method="POST">
			<!--
				<input type="hidden" name="id" value = "${vkploigul.id}">
				Vahtkond:
				<select name ="drp_vahtkond">
				<c:forEach var="vkond" items="${vkondlist}">
					List
					<option value="${vkond.id}"<c:if test="${vkond.id == vkploigul.vahtkond_id.id}">selected</c:if>>${vkond.nimetus}</option>
				</c:forEach>
				</select></br>			
				Piirilõik:
				<select name ="drp_piiriloik">
				<c:forEach var="ploik" items="${ploiklist}">
					List
					<option value="${ploik.id}"<c:if test="${ploik.id == vkploigul.piiriloik_id.id}">selected</c:if>>${ploik.nimetus}</option>
				</c:forEach>
				</select> <br />
				<label>Alates</label>

				<input type="text" id="datepicker1" name="alates" value="${vkploigul.alates}"/><br/>
				<label>Kuni</label>
			
				 <input type="text" id="datepicker2" name="alates" value="${vkploigul.kuni}"/><br/>
				<form:errors path="kommentaar"/><br />
				<input type="submit" value="Salvesta" />
				<button type="submit" formaction="cancelvahtkondpiiriloigul">Katkesta</button>
				<button type="submit" formaction="deletevahtkondpiiriloigul">Kustuta</button>
				-->
				<input type="hidden" name="id" value = "${vkploigul.id}">
				<table border="1">
				<tr>
					<td>Vahtkond</td>
					<td>Alates</td>
				</tr>
				<tr>
					<td><select name ="drp_vahtkond">
				<c:forEach var="vkond" items="${vkondlist}">
					List
					<option value="${vkond.id}"<c:if test="${vkond.id == vkploigul.vahtkond_id.id}">selected</c:if>>${vkond.nimetus}</option>
				</c:forEach>
				</select></td>
					<td><input type="text" id="datepicker1" name="alates" value="${vkploigul.alates}"/></td>
				</tr>
				<tr>
					<td>Piirilõik</td>
					<td>Kuni</td>
				</tr>
				<tr>
					<td><select name ="drp_piiriloik">
				<c:forEach var="ploik" items="${ploiklist}">
					List
					<option value="${ploik.id}"<c:if test="${ploik.id == vkploigul.piiriloik_id.id}">selected</c:if>>${ploik.nimetus}</option>
				</c:forEach>
				</select></td>
					<td><input type="text" id="datepicker2" name="alates" value="${vkploigul.kuni}"/></td>
				</tr>
				<tr>
					<td align="center" colspan="2">
						<input type="submit" value="Salvesta" />
						<button type="submit" formaction="cancelvahtkondpiiriloigul">Katkesta</button>
						<button type="submit" formaction="deletevahtkondpiiriloigul">Kustuta</button>
					</td>
				</tr>
				</table>
			</form:form>
			
</pr:main>
