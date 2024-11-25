
package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.MedicalHistoryDAO;
import com.db.DBConnect;
import com.entity.MedicalHistory;

@WebServlet("/updatePatient")
public class UpdatePatient extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		try {
			int patientId = Integer.parseInt(req.getParameter("patientid"));
			String bloodPressure = req.getParameter("bloodPressure");
			String bloodSurgar = req.getParameter("bloodSurgar");
			String weight = req.getParameter("weight");
			String temperature = req.getParameter("temperature");
			String medicalPres = req.getParameter("medicalPres");
			

			MedicalHistory mh = new MedicalHistory(patientId, bloodPressure, bloodSurgar, weight, temperature, medicalPres);
			MedicalHistoryDAO dao= new MedicalHistoryDAO(DBConnect.getConn());
			
		

			HttpSession session = req.getSession();

			if (dao.addMedicalHistory(mh)) {
				session.setAttribute("succMsg", "Add Medical History success");
				resp.sendRedirect("doctor/patient.jsp");
			} else {
				session.setAttribute("errorMsg", "Something wrong on server");
				resp.sendRedirect("doctor/patient.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}