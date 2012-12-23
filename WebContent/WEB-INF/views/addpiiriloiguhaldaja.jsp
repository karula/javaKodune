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
			<table border="1">
			<tr>
			<td>Piirilõik</td>
			<td>Piiripunkt</td>
			</tr>
			<tr>
			<td>	<select name ="drp_piiriloik">
				<c:forEach var="ploik" items="${ploiklist}">
					List
					<option value="${ploik.id}">${ploik.nimetus}</option>
				</c:forEach>
				</select></td>
			<td><select name ="drp_piiripunkt">
				<c:forEach var="ppunkt" items="${ppunktlist}">
					<option value="${ppunkt.id}">${ppunkt.nimetus}</option>
				</c:forEach>
				</select></td>
			</tr>
			<tr>
			<td>Alates</td>
			<td>Kuni</td>
			</tr>
			<tr>
			<td><input type="text" id="datepicker1" name="alates" value=""/><br/></td>
			<td><input type="text" id="datepicker2" name="kuni" value=""/></td>
			</tr>
			<tr>
			<td align="center" colspan="2"><input type="submit" value="Salvesta" />
			<button type="submit" formaction="cancelpiiriloiguhaldaja">Katkesta</button>
			<button type="submit" formaction="deletepiiriloiguhaldaja">Kustuta</button></td>
			</tr>
			</table>
			<!--  
				Piirilõik:
				<select name ="drp_piiriloik">
				<c:forEach var="ploik" items="${ploiklist}">
					List
					<option value="${ploik.id}">${ploik.nimetus}</option>
				</c:forEach>
				</select> <br />
				Piiripunkt:
				<select name ="drp_piiripunkt">
				<c:forEach var="ppunkt" items="${ppunktlist}">
					<option value="${ppunkt.id}">${ppunkt.nimetus}</option>
				</c:forEach>
				</select><br/>		
				<label>Alates</label>
				  <input type="text" id="datepicker1" name="alates" value=""/><br/>
				 <label>Kuni</label>
				<input type="text" id="datepicker2" name="kuni" value=""/><br/>
				 
				<input type="submit" value="Salvesta" />
				<button type="submit" formaction="cancelpiiriloiguhaldaja">Katkesta</button>
				<button type="submit" formaction="deletepiiriloiguhaldaja">Kustuta</button>
				-->
			</form:form>
</pr:main>
