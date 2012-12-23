<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="pr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<pr:main>
			<form:form commandName="vaeosaModel" method="POST">
			
			<input type="hidden" name="id" value = "${vaeosaModel.id}">
			<table border="1">
			<tr>
				<td>Kood</td>
				<td>Nimetus</td>
			</tr>
			<tr>
				<td><input type="text" name="kood" value = "${vaeosaModel.kood}" /></td>
				<td><input type="text" name="nimetus" value = "${vaeosaModel.nimetus}"/></td>
			</tr>
			<tr>
				<td>Kommentaar</td>
			</tr>
			<tr >
				<td align="left" colspan="3"><input type="text" name="Kommentaar" value = "${vaeosaModel.kommentaar}"/></td>
			</tr>
		
			<tr >
				<td align="center" colspan="3"><input type="submit" value="Salvesta" />
				<button type="submit" formaction="cancelvaeosa">Katkesta</button>
				<button type="submit" formaction="deletevaeosa">Kustuta</button></td>
			</tr>
			</table>
			</form:form>
</pr:main>
