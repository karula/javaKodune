<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="pr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<pr:main>
			<form:form method="POST">
			<!-- 
							<label>Kood</label>
				<input type="text" name="kood" value = "" /><br />
				<label>Nimetus</label>
				<input type="text" name="nimetus" value = ""/> <br />
				Piiripunkt:
				<select name ="drp_piiripunkt">
				<c:forEach var="punkt" items="${ppunktlist}">
					<option value="${punkt.id}">${punkt.nimetus}</option>
				</c:forEach>
				</select></br>
				Väeosa:
				<select name ="drp_vaeosa">
				<c:forEach var="vosa" items="${vosalist}">
					List
					<option value="${vosa.id}">${vosa.nimetus}</option>
				</c:forEach>
				</select> <br />
				<label>Kommentaar</label>
				  <input type="text" name="Kommentaar" value = ""/>
				<form:errors path="kommentaar"/><br />
				<input type="submit" value="Salvesta" />
				<button type="submit" formaction="cancelvahtkond">Katkesta</button>
				<button type="submit" formaction="deletevahtkond">Kustuta</button>
				-->
				<table border="1">	
				<tr>
				<td>Kood</td>
				<td>Nimetus</td>
				</tr>
				<tr>
				<td><input type="text" name="kood" value = "" /></td>
				<td><input type="text" name="nimetus" value = ""/></td>
				</tr>
				<tr>
				<td>Piiripunkt</td>
				<td>Väeosa</td>
				</tr>
				<tr>
				<td><select name ="drp_piiripunkt">
				<c:forEach var="punkt" items="${ppunktlist}">
					<option value="${punkt.id}">${punkt.nimetus}</option>
				</c:forEach>
				</select></td>
				<td><select name ="drp_vaeosa">
				<c:forEach var="vosa" items="${vosalist}">
					List
					<option value="${vosa.id}">${vosa.nimetus}</option>
				</c:forEach>
				</select></td>
				</tr>
				<tr>
				<td>Kommentaar</td>
				</tr>
				<tr>
				<td align="left" colspan="2"><input type="text" name="Kommentaar" value = ""/></td>
				</tr>
				<tr>
				<td align="center" colspan="2">
					<input type="submit" value="Salvesta" />
					<button type="submit" formaction="cancelvahtkond">Katkesta</button>
					<button type="submit" formaction="deletevahtkond">Kustuta</button>
				</td>
				</tr>
				</table>
			</form:form>
</pr:main>
