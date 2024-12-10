package com.inquiry;

public class Inquiry {

	private String type;
	private String name;
	private String phone;
	private String email;
	private String nic;
	private String title;
	private String inquiry;
	
	//constructor
	public Inquiry( String type, String name, String phone, String email, String nic, String title, String inquiry) {
		this.type = type;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.nic = nic;
		this.title = title;
		this.inquiry = inquiry;
	}
	
	// Getter methods 
	public String getType() {
		return type;
	}

	public String getName() {
		return name;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}
	
	public String getNic() {
		return nic;
	}

	public String getTitle() {
		return title;
	}
	
	public String getInquiry() {
		return inquiry;
	}

}