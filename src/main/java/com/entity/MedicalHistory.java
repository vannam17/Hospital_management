package com.entity;

public class MedicalHistory {
	private int id;
	private int patientId;
	private String bloodPressure;
	private String bloodSurgar;
	private String weight;
	private String temperature;
	private String medicalPres;
	public MedicalHistory() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MedicalHistory(int patientId, String bloodPressure, String bloodSurgar, String weight, String temperature, String medicalPres) {
		super();
		this.patientId = patientId;
		this.bloodPressure = bloodPressure;
		this.weight = weight;
		this.temperature = temperature;
		this.medicalPres = medicalPres;
	}
	public MedicalHistory(int id, int patientId, String bloodPressure, String bloodSurgar, String weight, String temperature, String medicalPres) {
		super();
		this.patientId = patientId;
		this.bloodPressure = bloodPressure;
		this.weight = weight;
		this.temperature = temperature;
		this.medicalPres = medicalPres;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPatientId() {
		return patientId;
	}
	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}
	public String getBloodPressure() {
		return bloodPressure;
	}
	public void setBloodPressure(String bloodPressure) {
		this.bloodPressure = bloodPressure;
	}
	public String getBloodSurgar() {
		return bloodSurgar;
	}
	public void setBloodSurgar(String bloodSurgar) {
		this.bloodSurgar = bloodSurgar;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getTemperature() {
		return temperature;
	}
	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}
	public String getMedicalPres() {
		return medicalPres;
	}
	public void setMedicalPres(String medicalPres) {
		this.medicalPres = medicalPres;
	}

}
