<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="pr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<pr:main>
			<form:form commandName="piiripunktModel" method="POST">
			<!-- 
				<input type="hidden" name="id" value = "${piiripunktModel.id}">
				<label>Kood</label>
				<input type="text" name="kood" value = "${piiripunktModel.kood}" /><br />
				<label>Nimetus</label>
				<input type="text" name="nimetus" value = "${piiripunktModel.nimetus}"/> <br />
				<label>GPS laius</label>
				<input type="text" name="gpslaiuskraad" value = "${piiripunktModel.gpslaiuskraad}"/> <br />
				<label>GPS pikkus</label>
				<input type="text" name="gpspikkuskraad" value = "${piiripunktModel.gpspikkuskraad}"/> <br />
				<label>Kõrgus merepinnast</label>
				<input type="text" name="korgusmerepinnast" value = "${piiripunktModel.korgusmerepinnast}"/> <br />
				<label>Kommentaar</label>

				  <input type="text" name="Kommentaar" value = "${piiripunktModel.kommentaar}"/>
				<form:errors path="kommentaar"/><br />
				<input type="submit" value="Salvesta" />
				<button type="submit" formaction="cancelpiiripunkt">Katkesta</button>
				<button type="submit" formaction="deletepiiripunkt">Kustuta</button>
			-->
			<input type="hidden" name="id" value = "${piiripunktModel.id}">
			<table border="1">
			<tr>
				<td>Kood</td>
				<td>Nimetus</td>
			</tr>
			<tr>
				<td><input type="text" name="kood" value = "${piiripunktModel.kood}" /></td>
				<td><input type="text" name="nimetus" value = "${piiripunktModel.nimetus}"/></td>
			</tr>
			<tr>
				<td>GPS laius</td>
				<td>GPS pikkus</td>
				<td>Kõrgus merepinnast</td>
			</tr>
			<tr>
				<td><input type="text" name="gpslaiuskraad" value = "${piiripunktModel.gpslaiuskraad}"/></td>
				<td><input type="text" name="gpspikkuskraad" value = "${piiripunktModel.gpspikkuskraad}"/></td>
				<td><input type="text" name="korgusmerepinnast" value = "${piiripunktModel.korgusmerepinnast}"/></td>
			</tr>
				<tr>
				<td>Kommentaar</td>
			</tr>
			<tr >
				<td align="left" colspan="3"><input type="text" name="Kommentaar" value = "${piiripunktModel.kommentaar}"/></td>
			</tr>
		
			<tr >
				<td align="center" colspan="3"><input type="submit" value="Salvesta" />
				<button type="submit" formaction="cancelpiiripunkt">Katkesta</button>
				<button type="submit" formaction="deletepiiripunkt">Kustuta</button></td>
			</tr>
			</table>
			</form:form>
</pr:main>
