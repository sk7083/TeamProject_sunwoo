package kr.kh.springTest.vo; 
 

import org.springframework.format.annotation.DateTimeFormat;

public class BoardVO { 
	 
	private int bo_pid; 
	private String bo_writer; 
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm") 
	private String bo_created; 
	private String bo_content; 
	private String bo_title; 
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm") 
	private String bo_modified; 
	private String fi_pid;
	private String bo_uploadFile;
	//=========== 게시판 카테고리 VO =========
	private String bo_ca_pid;
	
	public int getBo_pid() {
		return bo_pid;
	}
	public void setBo_pid(int bo_pid) {
		this.bo_pid = bo_pid;
	}
	public String getBo_writer() {
		return bo_writer;
	}
	public void setBo_writer(String bo_writer) {
		this.bo_writer = bo_writer;
	}
	public String getBo_created() {
		return bo_created;
	}
	public void setBo_created(String bo_created) {
		this.bo_created = bo_created;
	}
	public String getBo_content() {
		return bo_content;
	}
	public void setBo_content(String bo_content) {
		this.bo_content = bo_content;
	}
	public String getBo_title() {
		return bo_title;
	}
	public void setBo_title(String bo_title) {
		this.bo_title = bo_title;
	}
	public String getBo_modified() {
		return bo_modified;
	}
	public void setBo_modified(String bo_modified) {
		this.bo_modified = bo_modified;
	}
	public String getFi_pid() {
		return fi_pid;
	}
	public void setFi_pid(String fi_pid) {
		this.fi_pid = fi_pid;
	}
	public String getBo_uploadFile() {
		return bo_uploadFile;
	}
	public void setBo_uploadFile(String bo_uploadFile) {
		this.bo_uploadFile = bo_uploadFile;
	}
	public String getBo_ca_pid() {
		return bo_ca_pid;
	}
	public void setBo_ca_pid(String bo_ca_pid) {
		this.bo_ca_pid = bo_ca_pid;
	}
	@Override
	public String toString() {
		return "BoardVO [bo_pid=" + bo_pid + ", bo_writer=" + bo_writer + ", bo_created=" + bo_created + ", bo_content="
				+ bo_content + ", bo_title=" + bo_title + ", bo_modified=" + bo_modified + ", fi_pid=" + fi_pid
				+ ", bo_uploadFile=" + bo_uploadFile + ", bo_ca_pid=" + bo_ca_pid + "]";
	}
	
} 
