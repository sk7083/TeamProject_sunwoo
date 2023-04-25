package kr.kh.springTest.vo; 
 
import java.text.SimpleDateFormat; 
import java.util.Date; 
 
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile; 
 
 
public class BoardVO { 
	 
	private String bo_pid; 
	private String bo_writer; 
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm") 
	private String bo_created; 
	private String bo_content; 
	private String bo_title; 
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm") 
	private String bo_modified; 
	private MultipartFile fi_pid; 

 
	 
	public String getBo_pid() { 
		return bo_pid; 
	} 
	public void setBo_pid(String bo_pid) { 
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
	public MultipartFile getFi_pid() { 
		return fi_pid; 
	} 
	public void setFi_pid(MultipartFile fi_pid) { 
		this.fi_pid = fi_pid; 
	}
	@Override
	public String toString() {
		return "BoardVO [bo_pid=" + bo_pid + ", bo_writer=" + bo_writer + ", bo_created=" + bo_created + ", bo_content="
				+ bo_content + ", bo_title=" + bo_title + ", bo_modified=" + bo_modified + ", fi_pid=" + fi_pid
				+ ", bo_uploadFile="+ "]";
	} 
	 
	
} 
