<%@page import="com.entity.Specalist"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">

			
			
			<div class="col-md-8 offset-md-2">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Danh sách chuyên khoa</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Chuyên Khoa</th>
									
								</tr>
							</thead>
							<tbody>
							<%
							SpecialistDao dao2 = new SpecialistDao(DBConnect.getConn());
								List<Specalist> list2 = dao2.getAllSpecialist();
								for (Specalist d : list2) {
								%>
								<tr>
									
								</tr>
								<%
								}
								%>

							</tbody>
						</table>

					</div>
				</div>
			</div>

			
		</div>
	</div>
</body>
</html>