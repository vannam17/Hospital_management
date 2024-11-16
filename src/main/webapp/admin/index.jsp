<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp" %>
<style type="text/css">
	.paint-card {
		box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp" %>
	<div class="container p-5 mt-5 card paint-card" >
	  	<div class="row">    
	   		<div class="col-md-4">
	      		<img src="../img/card.png" alt="" class="img-fluid">
	    	</div>
	
	    
	    	<div class="col-md-8 mt-3 ">
	      		
	      		<h2 class="text-success">Xin chào Admin</h2>
			     <p class="mt-3">Hệ thống Quản lý Bệnh viện giúp bạn theo dõi và quản lý các hoạt động chính của bệnh viện một cách nhanh chóng, chính xác và tiện lợi. Dưới đây là những tính năng chính mà bạn có thể thực hiện trong hệ thống</p>
	    	</div>
	  </div>
	</div>

	
	
	<c:if test="${ empty adminObj }">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>
	
	<div class="container p-5">
		<p class="text-center fs-3 text-success">Thống kê</p>
		<c:if test="${not empty errorMsg}">
			<p class="fs-3 text-center text-danger">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<c:if test="${not empty succMsg}">
			<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
			<c:remove var="succMsg" scope="session" />
		</c:if>
		<%DoctorDao dao= new DoctorDao(DBConnect.getConn());
		%>
		<div class="row">
			<div class="col-md-4 mt-4">
				<div class="card paint-card">
					<div class="card-body text-right text-white d-flex align-items-center justify-content-center" style="background: linear-gradient(to left, #fba2f6 49%, #75cee8 80%);">
						<i class="fas fa-user-md fa-3x"></i>
						<p class="fs-4 text-center ms-auto  mb-0 fw-bold">
							Tổng bác sĩ <br><%=dao.countDoctor()%>
						</p>
					</div>
				</div>
			</div>
		
			<div class="col-md-4 mt-4">
				<div class="card paint-card">
					<div class="card-body text-rightr text-white d-flex align-items-center justify-content-center" style="background: linear-gradient(to left, #f5b3c7 27%, #95eb95 94%);">
						<i class="fas fa-user-circle fa-3x"></i>
						<p class="fs-4 text-center ms-auto  mb-0 fw-bold">
							Tổng Bệnh nhân <br><%=dao.countUSer() %>
						</p>
					</div>
				</div>
			</div>
		
			<div class="col-md-4 mt-4">
				<div class="card paint-card">
					<div class="card-body text-right text-white d-flex align-items-center justify-content-center" style="background: linear-gradient(to left, #9cb8ed 49%, #cd7cdb 80%);">
						<i class="far fa-calendar-check fa-3x"></i>
						<p class="fs-4 text-center ms-auto  mb-0 fw-bold">
							Tổng lịch hẹn <br><%=dao.countAppointment() %>
						</p>
					</div>
				</div>
			</div>
		
			<div class="col-md-4 mt-4">
				 <div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
				    <div class="card-body text-white d-flex align-items-center justify-content-center" style="background: linear-gradient(to left, #97ddc5 49%, #ffe176 94%);">
				      <i class="far fa-calendar-check fa-3x "></i>
				      <p class="fs-4 text-center ms-auto  mb-0 fw-bold">
				        Chuyên khoa <br><%=dao.countSpecialist() %>
				      </p>
				    </div>
				 </div>
			</div>


		</div>
	</div>



	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="../addSpecialist" method="post">

						<div class="form-group">
							<label>Enter Specialist Name</label> <input type="text"
								name="specName" class="form-control">
						</div>
						<div class="text-center mt-3">
							<button type="submit" class="btn btn-primary">Add</button>
						</div>

					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>

				</div>
    </div>
  </div>
</div>
</body>
</html>