<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title><spring:message code="form.register.label.title" /></title>
</head>
<body>
	<h2>
		<spring:message code="form.register.label.title" />
	</h2>
	<form:form method="post" action="/register">

		<div>
			<form:label path="login">
				<spring:message code="form.register.label.login" />
			</form:label>
			<form:input path="login" />

			<form:label path="password">
				<spring:message code="form.register.label.password" />
			</form:label>
			<form:password path="password" />

			<form:label path="email">
				<spring:message code="form.register.label.email" />
			</form:label>
			<form:input path="email" />

			<spring:message code="form.register.label.birthdate" />
			<form:label path="birthdateDD">
				<spring:message code="form.register.label.birthdate.day" />
			</form:label>
			<form:select path="birthdateDD">
			<c:forEach var="i" begin="1" end="31">
				<form:option value="${i}">${i}</form:option>
			</c:forEach>
			</form:select>


			<form:label path="birthdateMM">
				<spring:message code="form.register.label.birthdate.month" />
			</form:label>
			<form:select path="birthdateMM">
				<form:option value="01"><spring:message code="static.month.jan" /></form:option>
				<form:option value="02"><spring:message code="static.month.feb" /></form:option>
				<form:option value="03"><spring:message code="static.month.mar" /></form:option>
				<form:option value="04"><spring:message code="static.month.apr" /></form:option>
				<form:option value="05"><spring:message code="static.month.may" /></form:option>
				<form:option value="06"><spring:message code="static.month.jun" /></form:option>
				<form:option value="07"><spring:message code="static.month.jul" /></form:option>
				<form:option value="08"><spring:message code="static.month.aug" /></form:option>
				<form:option value="09"><spring:message code="static.month.sep" /></form:option>
				<form:option value="10"><spring:message code="static.month.oct" /></form:option>
				<form:option value="11"><spring:message code="static.month.nov" /></form:option>
				<form:option value="12"><spring:message code="static.month.dec" /></form:option>
			</form:select>


			<form:label path="birthdateYYYY">
				<spring:message code="form.register.label.birthdate.year" />
			</form:label>
			<form:select path="birthdateYYYY">
			<jsp:useBean id="now" class="java.util.Date" />
			<fmt:formatDate var="year" value="${now}" pattern="yyyy" />
			<c:forEach var="i" begin="0" end="99">
				<form:option value="${year-i}" />
			</c:forEach>
			</form:select>

			<form:button type="submit" name="submit">
				<spring:message code="form.register.label.submit" />
			</form:button>
		</div>

	</form:form>
</body>
</html>
