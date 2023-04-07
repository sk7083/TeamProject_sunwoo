package kr.kh.springTest.vo;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


public class MemberVO {
	
	private String me_id;
	private String me_pw;
	private String me_email;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date me_birth;
	private int me_auth;
	private String me_name;
	private String me_phone;
	private String me_address;

	
	public String getMe_id() {
		return me_id;
	}
	public void setMe_id(String me_id) {
		this.me_id = me_id;
	}
	public String getMe_pw() {
		return me_pw;
	}
	public void setMe_pw(String me_pw) {
		this.me_pw = me_pw;
	}
	public String getMe_email() {
		return me_email;
	}
	public void setMe_email(String me_email) {
		this.me_email = me_email;
	}	
	public String getMe_birth() {
		SimpleDateFormat format1 = 
		new SimpleDateFormat("yyyy-MM-dd");
		return format1.format(me_birth);
	}
	public void setMe_birth(Date me_birth) {
		this.me_birth = me_birth;
	}
	public int getMe_auth() {
		return me_auth;
	}
	public void setMe_auth(int me_auth) {
		this.me_auth = me_auth;
	}
	public String getMe_name() {
		return me_name;
	}
	public void setMe_name(String me_name) {
		this.me_name = me_name;
	}
	public String getMe_phone() {
		return me_phone;
	}
	
	public void setMe_phone(String me_phone) {
		this.me_phone = me_phone;
	}
	public String getMe_address() {
		return me_address;
	}
	public void setMe_address(String me_address) {
		this.me_address = me_address;
	}
	
	@Override
	public String toString() {
		return "MemberVO [me_id=" + me_id + ", me_pw=" + me_pw + ", me_email=" + me_email + ", me_birth=" + me_birth
				+ ", me_auth=" + me_auth + ", me_name=" + me_name + ", me_phone=" + me_phone + ", me_address="
				+ me_address + "]";
	}
	



}
