<%@page import="com.db.DBConnect" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allcss.jsp" %>
	<style type="text/css">
		.paint-card {
			box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	}
	</style>

</head>
<body>
	<!-- Navbar -->
	<%@include file="component/navbar.jsp" %>
	<!-- Navbar -->



	<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="img/hos2.jpg" class="d-block w-100" alt="..." height="600px">
	    </div>
	    <div class="carousel-item">
	      <img src="img/hos1.jpg" class="d-block w-100" alt="..." height="600px">
	    </div>
	    <div class="carousel-item">
	      <img src="img/hos3.jpg" class="d-block w-100" alt="..." height="600px">
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
	
	<div class="container p-3">
		<p class="text-center fs-2 ">Các đặc điểm nổi bật của bệnh viện chúng tôi</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">An toàn 100%</p>
								<p>Chúng tôi cam kết mang đến môi trường điều trị an toàn tuyệt đối, đảm bảo sức khỏe và sự an tâm cho bệnh nhân.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Môi trường sạch sẽ</p>
								<p>Bệnh viện luôn duy trì không gian sạch sẽ và hợp vệ sinh, đáp ứng các tiêu chuẩn nghiêm ngặt về y tế.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Bác sĩ thân thiện</p>
								<p>Đội ngũ bác sĩ giàu kinh nghiệm, luôn tận tâm chăm sóc và mang đến sự thoải mái cho bệnh nhân.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Nghiên cứu y khoa</p>
								<p>Chúng tôi tiên phong trong các nghiên cứu y khoa, không ngừng nâng cao chất lượng khám chữa bệnh.</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<img alt="" src="img/doc1.jpg">
			</div>

		</div>
	</div>
	
	<div class="container p-2">
		<p class="text-center fs-2 ">Đội ngũ của chúng tôi</p>
		
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc11.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Nguyễn Văn A</p>
						<p class="fs-7">(CEO & Founder)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc7.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Nguyễn Văn B</p>
						<p class="fs-7">(Bác sĩ trưởng)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc13.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Trần Văn A</p>
						<p class="fs-7">(Bác sĩ trưởng)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc5.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Trần Thị B</p>
						<p class="fs-7">(Bác sĩ trưởng)</p>
					</div>
				</div>
			</div>

		</div>

	</div>
	<hr>
	
	<%@include file="component/footer.jsp" %>
</body>
</html>