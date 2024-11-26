<%@page import="com.entity.User"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("img/hos1.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<c:if test="${empty userObj }">
		<c:redirect url="user_login.jsp"></c:redirect>
	</c:if>
	<%@include file="component/navbar.jsp"%>

	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-9">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-success">Appointment
							List</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-4 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<p class=" fs-4 text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<table class="table">
						    <thead>
						        <tr>
						            <th scope="col">Full Name</th>
						            <th scope="col">Gender</th>
						            <th scope="col">Age</th>
						            <th scope="col">Appoint Date</th>
						            <th scope="col">Diseases</th>
						            <th scope="col">Doctor Name</th>
						            <th scope="col">Trạng thái</th>
						            <th scope="col">Thao tác</th>
						        </tr>
						    </thead>
						    <tbody>
						        <%
						        User user = (User) session.getAttribute("userObj");
						        AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
						        DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
						        List<Appointment> list = dao.getAllAppointmentByLoginUser(user.getId());
						
						        if (list.isEmpty()) {
						        %>
						            <tr>
						                <td colspan="8" class="text-center">Không có lịch nào đã đặt</td>
						            </tr>
						        <%
						        } else {
						            for (Appointment ap : list) {
						                Doctor d = dao2.getDoctorById(ap.getDoctorId());
						        %>
						                <tr>
						                    <td><%= ap.getFullName() %></td>
						                    <td><%= ap.getGender() %></td>
						                    <td><%= ap.getAge() %></td>
						                    <td><%= ap.getAppoinDate() %></td>
						                    <td><%= ap.getDiseases() %></td>
						                    <td><%= d.getFullName() %></td>
						                    <td>
						                        <%
												if ("Pending".equals(ap.getStatus())) {
												%> 
												<span class="btn btn-success btn-sm disabled"style="width:100px">Chưa duyệt</span> 
												 <%
												 } else {
												 %> 
												 <span class="btn btn-success btn-sm disabled"style="width:100px">Đã duyệt</span> 
												 <%
												 }
												 %>
						                    </td>
						                    <td>
						                    <a href="view_patient.jsp?id=<%=ap.getId()%>"
										class="btn btn-sm btn-primary">View</a>
						                        <a href="deleteAppointment?id=<%= ap.getId() %>" class="btn btn-sm btn-danger">Delete</a>
						                    </td>
						                </tr>
						        <%
						            }
						        }
						        %>
						    </tbody>
						</table>

						

					</div>
				</div>
			</div>
			<div class="col-md-3 p-3">
				<img alt="" src="img/doc1.jpg">
			</div>
		</div>
	</div>
</body>
</html>