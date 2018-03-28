<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
/**
 * @JSP Name : egovCategoryRegister.jsp
 * @Description : 카테고리 등록,수정 화면
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
<c:set var="registerFlag" value="${empty category.ctgryId ? '등록' : '수정'}"/>
<title>JPA/Hibernate 예제 : 카테고리 <c:out value="${registerFlag}"/> </title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/egov.css'/>">


<script type="text/javaScript" language="javascript" defer="defer">

/* 글 목록 화면 function */
function fn_egov_selectList() {
   	document.detailForm.action = "<c:url value='/cgr/egovCategoryList.do'/>";
   	document.detailForm.submit();		
}

/* 글 삭제 function */
function fn_egov_delete() {
	if(!confirm("삭제하시겠습니까?")){
		return;
	}
   	document.detailForm.action = "<c:url value='/cgr/deleteCategory.do'/>";
   	document.detailForm.submit();		
}

/* 글 등록 function */
function fn_egov_save() {	
	frm = document.detailForm;
	if(frm.ctgryNm.value == ""){
		alert("카테고리명을 입력하세요.");
		frm.ctgryNm.focus;
		return;
	}
	
	if(!confirm("${registerFlag} 하시겠습니까?")){
		return;
	}
	
	frm.action = "<c:url value="${registerFlag == '등록' ? '/cgr/insertCategory.do' : '/cgr/updateCategory.do'}"/>";
    frm.submit();
}

</script>
</head>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">

<form:form commandName="category" name="detailForm">
<div id="content_pop">
	<!-- 타이틀 -->
	<div id="title">
		<ul>
			<li><img src="<c:url value='/images/egovframework/rte/title_dot.gif'/>" alt=""/> <spring:message code="category" /> <c:out value="${registerFlag}"/></li>
		</ul>
	</div>
	<!-- // 타이틀 -->
	<div id="table">
	<table width="100%" border="1" cellpadding="0" cellspacing="0" style="BORDER-TOP:#C2D0DB 2px solid; BORDER-LEFT:#ffffff 1px solid; BORDER-RIGHT:#ffffff 1px solid; BORDER-BOTTOM:#C2D0DB 1px solid; border-collapse: collapse;" summary="카테고리를 등록하거나 수정한다.">
		<caption>카테고리 등록 및 수정</caption>
		<colgroup>
			<col width="150">
			<col width="" >
		</colgroup>
		<tr>
			<td class="tbtd_caption"><spring:message code="cgr.header.nm" /></td>
			<td class="tbtd_content">
				<form:input path="ctgryNm" maxlength="30" cssClass="txt"  style="width:95%;" title="카테고리명"/>&nbsp;&nbsp;&nbsp;<form:errors path="ctgryNm" />
			</td>
		</tr>
		<tr>
			<td class="tbtd_caption"><spring:message code="cgr.header.dc" /></td>
			<td class="tbtd_content">
				<form:textarea path="dc" rows="5" cols="58" />&nbsp;&nbsp;&nbsp;&nbsp;<form:errors path="dc" />
			</td>
		</tr>
	</table>

  </div>
	<div id="sysbtn">
		<ul>
			<li><span class="btn_blue_l" title="<spring:message code="button.list" />"><a href="#link" onClick="fn_egov_selectList(); return false;"><spring:message code="button.list" /></a><img src="<c:url value='/images/egovframework/rte/btn_bg_r.gif'/>" style="margin-left:6px;" alt="<spring:message code="button.list" />"/></span></li>
			<li><span class="btn_blue_l" title="<c:out value='${registerFlag}'/>"><a href="#link" onClick="fn_egov_save(); return false;"><c:out value='${registerFlag}'/></a><img src="<c:url value='/images/egovframework/rte/btn_bg_r.gif'/>" style="margin-left:6px;" alt="<c:out value='${registerFlag}'/>" /></span></li>
			<c:if test="${registerFlag == '수정'}">
			<li><span class="btn_blue_l" title="<spring:message code="button.delete" />"><a href="#link" onClick="fn_egov_delete(); return false;"><spring:message code="button.delete" /></a><img src="<c:url value='/images/egovframework/rte/btn_bg_r.gif'/>" style="margin-left:6px;" alt="<spring:message code="button.delete" />"/></span></li>
			</c:if>
			<li><span class="btn_blue_l" title="<spring:message code="button.reset" />"><a href="#link" onClick="javascript:document.detailForm.reset(); return false;"><spring:message code="button.reset" /></a><img src="<c:url value='/images/egovframework/rte/btn_bg_r.gif'/>" style="margin-left:6px;" alt="<spring:message code="button.reset" />"/></span></li>
			<li><input type="submit" style="display:none" title="submit"/></li>
		</ul>
	</div>
</div>
</form:form>
</body>
</html>

