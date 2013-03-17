<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<style type="text/css">
.errors {
	background-color:#FFCCCC;
	border:1px solid #CC0000;
	width:400px;
	margin-bottom:8px;
}
.errors li{ 
	list-style: none; 
}
</style>
</head>
<body>

	<s:if test="hasActionErrors()">
		<div class="errors">
			<s:actionerror />
		</div>
	</s:if>
	<!-- 	login form begins here -->
	<s:form action="welcome">
		<s:textfield key="username"/>
		<s:password key="password"/>
		<%-- 		<s:textfield label="Password" name="password" /> --%>
		<s:submit />
	</s:form>
	<!-- 	end of login form -->
</body>
</html>