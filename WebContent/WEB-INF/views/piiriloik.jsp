<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="pr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<pr:main>
			<form:form method="POST">
			<!-- 
				<input type="hidden" name="id" value = "${piiriloik.id}">
				<label>Kood</label>
				<input type="text" name="kood" value = "${piiriloik.kood}" /><br />
				<label>Nimetus</label>
				<input type="text" name="nimetus" value = "${piiriloik.nimetus}"/> <br />
				<label>GPS Koordinaadid</label>
				<input type="text" name="gpskoordinaadid" value = "${piiriloik.gpskoordinaadid}"/> <br />
				<label>Kõrgus merepinnast</label>
				<input type="text" name="korgusmerepinnast" value = "${piiriloik.korgusmerepinnast}"/> <br />
				<label>Kommentaar</label>
				 <input type="text" name="kommentaar" value = "${piiriloik.kommentaar}"/>
				<form:errors path="kommentaar"/><br />
				<input type="submit" value="Salvesta" />
				<button type="submit" formaction="cancelpiiriloik">Katkesta</button>
				<button type="submit" formaction="deletepiiriloik">Kustuta</button>
			 -->
			 <input type="hidden" name="id" value = "${piiriloik.id}">
			 <table border="1">
			 <tr>
			 <td>Kood</td>
			 <td>Nimetus</td>
			 </tr>
			 <tr>
			 <td><input type="text" name="kood" value = "${piiriloik.kood}" /></td>
			 <td><input type="text" name="nimetus" value = "${piiriloik.nimetus}"/></td>
			 </tr>
			 <tr>
			 <td align="left" colspan="2">GPS Koordinaadid</td>
			 <td>Kõrgus merepinnast</td>
			 </tr>
			  <tr>
			 <td align="left" colspan="2"><input type="text" name="gpskoordinaadid" value = "${piiriloik.gpskoordinaadid}"/></td>
			 <td><input type="text" name="korgusmerepinnast" value = "${piiriloik.korgusmerepinnast}"/></td>
			 </tr>
			 <tr>
			 <td>Kommentaar</td>
			 </tr>
			 <tr>
			 <td align="left" colspan="3"><input type="text" name="kommentaar" value = "${piiriloik.kommentaar}"/></td>
			 </tr>
			  <tr>
				 <td align="center" colspan="3">
					<input type="submit" value="Salvesta" />
					<button type="submit" formaction="cancelpiiriloik">Katkesta</button>
					<button type="submit" formaction="deletepiiriloik">Kustuta</button>
				</td>
			 </tr>
			</table>
			</form:form>
</pr:main>
