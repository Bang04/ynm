<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title></title>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script>
	<script src="<c:url value='/resources/js/common/jquery.serializeObject.min.js'/>"charset="utf-8"></script>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<!-- bootstrap-datatimepicker -->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/bootstrap-datepicker.min.css'/>" />

	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>

	<script src="<c:url value='/resources/js/common/bootstrap-datepicker.min.js'/>" charset="utf-8"></script>

	<!-- 공통js -->
	<script src="<c:url value='/resources/js/common/common.js'/>" charset="utf-8"></script>

	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/ui.css'/>" />

</head>
<body>
    <div id="container">
       <tiles:insertAttribute name="content" />
    </div>
    <tiles:insertAttribute name="footer" />
</body>
</html>