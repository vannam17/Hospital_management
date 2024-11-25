package com.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.MedicalHistory;
import com.entity.Doctor;

public class MedicalHistoryDAO {
	private Connection conn;

	public MedicalHistoryDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean addMedicalHistory(MedicalHistory mh) {
		boolean f = false;
		try {
			String sql = "insert into tblmedicalhistory(patient_id, blood_pressure, blood_surgar, weight, temperature, medical_pres) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, mh.getPatientId());
			ps.setString(2, mh.getBloodPressure());
			ps.setString(3, mh.getBloodSurgar());
			ps.setString(4, mh.getWeight());
			ps.setString(5, mh.getTemperature());
			ps.setString(6, mh.getMedicalPres());
			
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	
}
