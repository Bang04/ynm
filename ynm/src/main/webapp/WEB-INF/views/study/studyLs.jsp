<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>first</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/ui.css'/>" />
</head>
<body>
	<h2>스터디 관리 게시판 목록</h2>	
	<div class="row" style="margin-top: 3%">
		<div class="col-sm-4">
			<div id='calendar'></div>
		</div>
		<div class="col-sm-8">		
			<button id="btnWrite" type="button" class="btn btn_left" length="${totalCount}">글쓰기</button>
			<h5>* 읽지않은 글이 개 있습니다.</h5>
			<table class="board_list">
				<colgroup>
					<col width="10%"/>
					<col width="*"/>
					<col width="15%"/>
					<col width="20%"/>
				</colgroup>
				<thead>
					<tr>
						<th scope="col">글번호</th>
						<th scope="col">제목</th>
						<th scope="col">조회수</th>
						<th scope="col">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${fn:length(list) > 0}">
							<c:forEach items="${list}" var="row" varStatus="status">
								<input type="hidden" id="idx_${status.count}" name="idx" value="${row.IDX}"></input>
								<tr>
									<td>${row.IDX}</td>
									<td class="title">
										<a href="#this" name="title" idx="${row.IDX}" cnt="${(fn:length(list)+1) - status.count}" >${row.TITLE}</a>
									</td>
									<td>${row.HITCNT }</td>
									<td>${row.CREATE_DATETIME }</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4">조회된 결과가 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
			<form id="searchForm" style="margin-left: 10%; margin-top: 30px;">
				Search : 
				<select id="searchCondition">
					<option value="T" ${param.searchCondition eq 'T' or param.searchCondition eq '' ? 'selected' : ''}>제목</option>
					<option value="C" ${param.searchCondition eq 'C' ? 'selected'  : ''}>내용</option>
					<option value="A" ${param.searchCondition eq 'A' ? 'selected'  : ''}>전체</option>
				</select>
				<input type="text" id="searchText" name="searchText" style="margin-right: 10px;" value="${param.searchText}"></input><button id="btnSearch" type="button" class="btn">검색</button>
			</form>
			<c:set var="listIndex" value="${totalCount / page.pageSize}" />
			<c:forEach var="i" begin="1" end="${(listIndex mod 2) eq 1 ? listIndex : listIndex+1}">
				<p style="float: left; margin-left: 5px; margin-bottom: 20px;"><a href="#this" id="index_${i}" pageidx="${param.pageIndex}" name="index">${i}</a></p>
			</c:forEach>
		</div>
	</div>	
</body>
<div class="modal fade" id="planModal" tabindex="-1" role="dialog" aria-labelledby="planModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
				<h4 class="modal-title" id="planModalLabel">일정 추가</h4>
			</div>
			<div class="modal-body">
				<div class="col-xs-12">
					<div class="col-xs-6">
						
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary">확인</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>
<script src="<c:url value='/resources/js/common/common.js'/>" charset="utf-8"></script>
<script src="<c:url value='/resources/js/study/studyLs.js'/>" charset="utf-8"></script>
</html>