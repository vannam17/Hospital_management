package com.dao;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import com.entity.Appointment;
import com.db.DBConnect;

import java.sql.Connection;
import java.util.List;

class AppointmentDAOTest {
    private AppointmentDAO appointmentDAO;
    private Connection conn;

    @BeforeEach
    void setUp() {
        // Thiết lập kết nối tới cơ sở dữ liệu
        conn = DBConnect.getConn();
        appointmentDAO = new AppointmentDAO(conn);
    }

    @Test
    void testAddAppointment() {
        Appointment ap = new Appointment(1, "John Doe", "Male", "30", "2024-11-10", "john@example.com", "1234567890", "Fever", 1, "123 Main St", "Pending");
        boolean result = appointmentDAO.addAppointment(ap);
        System.out.println("Test Add Appointment: " + result);
        assertTrue(result);
    }

    @Test
    void testGetAllAppointmentByLoginUser() {
        List<Appointment> appointments = appointmentDAO.getAllAppointmentByLoginUser(1);
        System.out.println("Test Get All Appointments by User: " + (appointments != null && !appointments.isEmpty()));
        assertNotNull(appointments);
        assertFalse(appointments.isEmpty());
    }

    @Test
    void testGetAppointmentById() {
        Appointment ap = appointmentDAO.getAppointmentById(1);
        System.out.println("Test Get Appointment By ID: " + (ap != null ? ap.getId() : "No appointment found"));
        assertNotNull(ap);
        assertEquals(1, ap.getId());
    }

    @Test
    void testUpdateCommentStatus() {
        boolean result = appointmentDAO.updateCommentStatus(1, 1, "Completed");
        System.out.println("Test Update Comment Status: " + result);
        assertTrue(result);
    }

    @Test
    void testGetAllAppointment() {
        List<Appointment> appointments = appointmentDAO.getAllAppointment();
        System.out.println("Test Get All Appointments: " + (appointments != null && !appointments.isEmpty()));
        assertNotNull(appointments);
        assertFalse(appointments.isEmpty());
    }
}
