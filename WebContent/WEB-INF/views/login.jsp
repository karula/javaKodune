<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Logi sisse</h1>

	<form name='f' action='/DynamicWebSpringProject/j_spring_security_check'
		method='POST'>
		<table>
			<tr>
				<td>Kasutaja:</td>
				<td><input type='text' name='j_username' value=''></td>
			</tr>
			<tr>
				<td>Parool:</td>
				<td><input type='password' name='j_password' /></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit"
					value="Sisene" /></td>
			</tr>
		</table>
	</form>


</body>
</html>