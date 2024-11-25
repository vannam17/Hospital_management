<%@page import="com.entity.Appointment"%>
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
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("../img/hos1.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
<%@include file="../component/allcss.jsp"%>
</head>
<body>
	<c:if test="${empty doctObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>


	<%@include file="navbar.jsp"%>
	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">

			<div class="col-md-6 offset-md-3">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-4">Patient Comment</p>

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());

						Appointment ap = dao.getAppointmentById(id);
						%>
						<form class="row" action="../updatePatient" method="post">
						    <div class="col-md-6">
						        <br> 
						        <label>Huyết áp (mmHg)</label> 
						        <input type="text" name="bloodPressure" class="form-control" placeholder="120/80" required>
						    </div>
						
						    <div class="col-md-6">
						        <br> 
						        <label>Cân nặng (kg)</label> 
						        <input type="number" name="weight" class="form-control" placeholder="70" required>
						    </div>
						
						    
						    <div class="col-md-6">
						        <br> 
						        <label>Đường huyết (mmol/L)</label> 
						        <input type="text" name="bloodSugar" class="form-control" placeholder="5.5" required>
						    </div>
						
						   
						    <div class="col-md-6">
						        <br> 
						        <label>Nhiệt độ cơ thể (°C)</label> 
						        <input type="number" step="0.1" name="bodyTemperature" class="form-control" placeholder="36.5" required>
						    </div>
						
						    
						    <div class="col-md-12">
						        <br> 
						        <label>Đơn thuốc ý tế</label>
						        <textarea name="prescription" class="form-control" rows="3" placeholder="Nhập mô tả đơn thuốc..." required></textarea>
						    </div>
						
						    <button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>