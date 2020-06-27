<%@page import="java.util.ArrayList"%>
<%@page import="user.dog.dto.Dog_Data"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	List<Dog_Data> dog = (List) request.getAttribute("result");
%>

<style type="text/css">
.box {
	background: #EB5A5A;
	text-align: center;
}

.box img {
	width: 300px;
	height: 200px;
}

.box img:hover {
	transform: scale(1.04);
}
</style>

	
<c:forEach items="${result }" var="dog">

	<div class="box">
		<img src="/upload/${dog.dog_stored_file_name }" alt="없음" />
		<div class="inner">
			<div>이름 ${dog.dogname }</div>
			<div>품종 ${dog.dogkind }</div>
			<div>성별 ${dog.doggender }</div>
			<div>중성화여부 ${dog.dogneu }</div>
			<div>공고일 ${dog.dogdate }</div>
			<div>
			</div>
		</div>
	</div>
</c:forEach>





