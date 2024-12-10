package com.inquiry;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class inqDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	//private static ResultSet rs = null;
	private static ResultSet rs2 = null;
	
	
	
	// Insert data into the 'inquiry' table and retrieve the inserted data.
	
	public static List<Inquiry> insertInquiry(String type,String name,String phone,String email,String nic,String title,String inquiry) {
		
	
		ArrayList<Inquiry> inq = new ArrayList<>();	
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="insert into inquiry values(0,'"+type+"','"+name+"','"+phone+"','"+email+"','"+nic+"','"+title+"','"+inquiry+"')";
			
			//validate inserted data from table
			String sql2 = "select * from inquiry where nic ='"+nic+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				
				 rs2 = stmt.executeQuery(sql2);
				
				if (rs2.next()) {

					String type1 = rs2.getString(2);
					String name1 = rs2.getString(3);
					String phone1 = rs2.getString(4);
					String email1 = rs2.getString(5);
					String nic1 = rs2.getString(6);
					String title1 = rs2.getString(7);
					String inquiry1 = rs2.getString(8);
					
					Inquiry I = new Inquiry (type1,name1,phone1,email1,nic1,title1,inquiry1);
					inq.add(I);												
					
				}
			}
			else 
			{
					
			}	
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		
		return inq;
		
	}
	
	// update data in the 'inquiry' table and retrieve the updated data.
	
	public static List<Inquiry> updateInquiry(String type,String name,String phone,String email,String nic,String title,String inquiry) {
		
		
		ArrayList<Inquiry> inq = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="update inquiry set type='"+type+"', name='"+name+"', phone='"+phone+"', email='"+email+"',nic='"+nic+"', title='"+title+"', inquiry='"+inquiry+"' where nic='"+nic+"'";
			//validate updated data from table
			String sql2 = "select * from inquiry where nic ='"+nic+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				
				 rs2 = stmt.executeQuery(sql2);
				
				if (rs2.next()) {

					String type1 = rs2.getString(2);
					String name1 = rs2.getString(3);
					String phone1 = rs2.getString(4);
					String email1 = rs2.getString(5);
					String nic1 = rs2.getString(6);
					String title1 = rs2.getString(7);
					String inquiry1 = rs2.getString(8);
					
					Inquiry I = new Inquiry (type1,name1,phone1,email1,nic1,title1,inquiry1);
					inq.add(I);												
					
				}
			}
			else 
			{
					
			}	
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		
		return inq;
		
	}
	
	//delete data from 'Inquiry' table
	
	public static boolean deleteInquiry(String nic) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from inquiry where nic='"+nic+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess= false;
			}
			
		}
			
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}

}


