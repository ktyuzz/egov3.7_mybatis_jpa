<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
/**
 * @JSP Name : egovCategoryList.jsp
 * @Description : CategoryList 화면
 * @Modification Information
 * 
 *   수정일         수정자                   수정내용
 *  -------    --------    ---------------------------
 *  2011.07.11  신혜연          최초 생성
 *
 * author 실행환경팀 
 * Copyright (C) 2011 by MOPAS  All right reserved.
 */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="content-language" content="ko">
<title>JPA/Hibernate 예제</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/egov.css'/>">

<script type="text/javaScript" language="javascript" defer="defer">

/* 글 수정 화면 function */
function fn_egov_select(id) {
	document.listForm.selectedId.value = id;
   	document.listForm.action = "<c:url value='/cgr/updateCategoryView.do'/>";
   	document.listForm.submit();		
}

/* 글 등록 화면 function */
function fn_egov_addView() {
   	document.listForm.action = "<c:url value='/cgr/insertCategoryView.do'/>";
   	document.listForm.submit();		
}

</script>
</head>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
<form:form commandName="searchVO" name="listForm" method="post">
<input type="hidden" name="selectedId" />
<div id="content_pop">
	<!-- 타이틀 -->
	<div id="title">
		<ul>
			<li><img src="<c:url value='/images/egovframework/rte/title_dot.gif'/>" alt=""/> <spring:message code="category.title" /></li>
		</ul>
	</div>
	<!-- // 타이틀 -->
	<!-- List -->
	<div id="table">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="카테고리 목록을 확인한다.">
		<caption>카테고리 목록</caption>
			<colgroup>
				<col width="10" >				
				<col width="100" >				
				<col width="50" >
				<col width="100" >
			</colgroup>		  
			<thead>
			<tr>
				<th align="center"><spring:message code="header.no" /></th>
				<th align="center"><spring:message code="cgr.header.no" /></th>
				<th align="center"><spring:message code="cgr.header.nm" /></th>
				<th align="center"><spring:message code="cgr.header.dc" /></th>
			</tr>
			</thead>
			<c:forEach var="result" items="${resultList}" varStatus="status">
			<tr>
				<td align="center" class="listtd"><c:out value="${status.count}"/></td>
				<td align="center" class="listtd"><a href="#link" onClick="fn_egov_select('<c:out value="${result.ctgryId}"/>'); return false;"><c:out value="${result.ctgryId}"/>&nbsp;</a></td>
				<td align="left" class="listtd"><c:out value="${result.ctgryNm}"/></td>
				<td align="center" class="listtd"><c:out value="${result.dc}"/>&nbsp;</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<!-- /List -->
		<div id="sysbtn">
			<ul>
				<li><span class="btn_blue_l" title="<spring:message code="button.add" />"><a href="#link" onClick="fn_egov_addView(); return false;"><spring:message code="button.add" /></a><img src="<c:url value='/images/egovframework/rte/btn_bg_r.gif'/>" style="margin-left:6px;" alt="등록"/></span></li>
				<li><input type="submit" style="display:none" title="submit"/></li>
			</ul>
		</div>
</div>
</form:form>
</body>
</html>
