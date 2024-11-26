<%@page import="com.entity.User"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	
							<!-- Chi tiết bệnh nhân -->
        <div class="row mt-4">
            <div class="col-md-12">
                <div class="card paint-card">
                    <div class="card-body">
                        <p class="fs-4 text-center">Chi tiết bệnh nhân</p>
                        <table class="table table-bordered">
                            <tbody>
                            <%
								
                            AppointmentDAO dao2 = new AppointmentDAO(DBConnect.getConn());
							List<Appointment> list2 = dao2.getAllAppointment();
							for (Appointment ap : list2) {
								%>
                                <tr>
                                    <th>Tên bệnh nhân</th>
                                    <td><%=ap.getFullName()%></td>
                                    <th>Email</th>
                                    <td><%=ap.getEmail()%></td>
                                </tr>
                                <tr>
                                    <th>Số điện thoại bệnh nhân</th>
                                    <td><%=ap.getPhNo() %></td>
                                    <th>Địa chỉ bệnh nhân</th>
                                    <td><%=ap.getAddress() %></td>
                                </tr>
                                <tr>
                                    <th>Giới tính</th>
                                    <td><%=ap.getGender() %></td>
                                    <th>Lịch sử bệnh án của bệnh nhân (nếu có)</th>
                                    <td><%=ap.getDiseases() %></td>                                 
                                </tr>
                                <tr>
                               		<th>Tuổi</th>
                                    <td><%=ap.getAge() %></td>
                                  	<th>Chuẩn đoán của bác sĩ</th>
                                  	<td></td>
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

							
				
</body>
</html>