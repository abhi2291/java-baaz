<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome page</title>
<style type="text/css">
.welcome {
	background-color: #DDFFDD;
	border: 1px solid #009900;
	width: 200px;
}

.welcome li {
	list-style: none;
}
<
sx




















:head
/
>
</style>
</head>

<body>
	<s:if test="hasActionMessages()">
		<div class="welcome">
			<s:actionmessage />
		</div>
	</s:if>
	<s:text name="welcomeMessage" />
	<s:property value="username" />

	</br>
	<h2>
		<s:textarea key="message" cols="40" rows="10" />
	</h2>

	<!-- 	checkbox -->
	<s:checkbox name="checkMe" fieldValue="true"
		label="Check Me for testing" />

	<s:action name="loadautoCompleteAction" executeResult="false" />
	<!-- AutoComplete -->
	<s:form action="autocomplete" method="POST">
		<sx:autocompleter key="yourLuckyNumber" autoComplete="false"
			list="{'1','12','13','14'}" />
		<sx:autocompleter list="webframeworks" key="yourFavWebFramework" />
		<s:submit value="submit" name="submit" />
	</s:form>

	<sx:datetimepicker name="date1" label="Format (dd-MMM-yyyy)"
 		displayFormat="dd-MMM-yyyy" value="todayDate" /> 

	<sx:datetimepicker name="date2" label="Format (dd-MMM-yyyy)" 
		displayFormat="dd-MMM-yyyy" value="%{'2010-01-01'}" /> 
 	<sx:datetimepicker name="date3" label="Format (dd-MMM-yyyy)" 
 		displayFormat="dd-MMM-yyyy" value="%{'today'}" /> 

 	<s:set name="webFramework" value="framework" /> 

		<s:if test="%{#webFramework=='Struts 2'}">
	This is Struts 2
</s:if>

	<s:elseif test="%{#webFramework=='Struts 1'}">
    This is Struts 1
</s:elseif>
	<s:else>
    Other framework
</s:else>
<s:bean name="com.asheks.action.HelloBean" var="hello">
  <s:param name="msg">Hello Bean Tag</s:param>
</s:bean>
 
The HelloBean's msg property value : <s:property value="#hello.msg"/>
	
</body>
</html>