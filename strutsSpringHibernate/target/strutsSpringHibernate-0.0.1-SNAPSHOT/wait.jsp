<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="refresh" content="5;url=<s:url includeParams="all" />" />
</head>

<body>

	<h3 style="color: gray; border-bottom: buttonface;">Please wait
		while we process your request...</h3>
	<img src="<s:url value="src/main/webapp/images/wait.gif"/>"  style=" height : 74px;"/>
	<img src="<s:url value="http://oilandgas.rockwellautomation.com/images/loading.gif"/>"/>
	
</body>
</html>