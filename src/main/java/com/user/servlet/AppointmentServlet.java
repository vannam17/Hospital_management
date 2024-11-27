package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDAO;
import com.db.DBConnect;
import com.entity.Appointment;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet("/appAppointment")
public class AppointmentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int userId = Integer.parseInt(req.getParameter("userid"));
        String fullname = req.getParameter("fullname");
        String gender = req.getParameter("gender");
        String age = req.getParameter("age");
        String appoint_date = req.getParameter("appoint_date"); // Date from input
        String email = req.getParameter("email");
        String phno = req.getParameter("phno");
        String diseases = req.getParameter("diseases");
        int doctor_id = Integer.parseInt(req.getParameter("doct"));
        String address = req.getParameter("address");

        Appointment ap = new Appointment(userId, fullname, gender, age, appoint_date, email, phno, diseases, doctor_id,
                address, "Chưa khám");

        AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
        HttpSession session = req.getSession();

        if (!isValidPhoneNumber(phno)) {
            session.setAttribute("errorMsg", "Số điện thoại không hợp lệ.");
            resp.sendRedirect("user_appointment.jsp");
            return;
        }
        
        LocalDate today = LocalDate.now();
        LocalDate inputDate = LocalDate.parse(appoint_date, DateTimeFormatter.ofPattern("yyyy-MM-dd"));

        
        if (inputDate.isBefore(today)) {
            session.setAttribute("errorMsg", "Ngày hẹn khám không hợp lệ.");
            resp.sendRedirect("user_appointment.jsp");
        } 
       
        if (dao.checkDate(appoint_date)) {
            session.setAttribute("errorMsg", "Ngày hẹn trùng.");
            resp.sendRedirect("user_appointment.jsp");
        } 
    
        else {
            if (dao.addAppointment(ap)) {
                session.setAttribute("succMsg", "Đặt lịch thành công");
                resp.sendRedirect("user_appointment.jsp");
            } else {
                session.setAttribute("errorMsg", "Đặt lịch không thành công");
                resp.sendRedirect("user_appointment.jsp");
            }
        }
    }

    private boolean isValidPhoneNumber(String phno) {
        
        return phno != null && phno.matches("\\d{10}");
    }
}
