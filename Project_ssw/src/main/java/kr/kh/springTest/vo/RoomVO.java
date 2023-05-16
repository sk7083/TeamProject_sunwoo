package kr.kh.springTest.vo; 
 
import org.springframework.format.annotation.DateTimeFormat;
 
public class RoomVO { 
	 
	private int ro_pid; 
	private String ro_num;
	private String ro_name;
	private String ro_explanation;
	private String ro_min_people;
	private String ro_max_people;
	private String ro_select_s_or_t;
	@DateTimeFormat(pattern = "HH:mm")
	private String ro_s_in_time;
	@DateTimeFormat(pattern = "HH:mm")
	private String ro_s_out_time;
	private String ro_s_price;
	@DateTimeFormat(pattern = "HH:mm")
	private String ro_t_in_time;
	@DateTimeFormat(pattern = "HH:mm")
	private String ro_t_out_time;
	private String ro_t_price;
	
	public int getRo_pid() {
		return ro_pid;
	}
	public void setRo_pid(int ro_pid) {
		this.ro_pid = ro_pid;
	}
	public String getRo_num() {
		return ro_num;
	}
	public void setRo_num(String ro_num) {
		this.ro_num = ro_num;
	}
	public String getRo_name() {
		return ro_name;
	}
	public void setRo_name(String ro_name) {
		this.ro_name = ro_name;
	}
	public String getRo_explanation() {
		return ro_explanation;
	}
	public void setRo_explanation(String ro_explanation) {
		this.ro_explanation = ro_explanation;
	}
	public String getRo_min_people() {
		return ro_min_people;
	}
	public void setRo_min_people(String ro_min_people) {
		this.ro_min_people = ro_min_people;
	}
	public String getRo_max_people() {
		return ro_max_people;
	}
	public void setRo_max_people(String ro_max_people) {
		this.ro_max_people = ro_max_people;
	}
	public String getRo_select_s_or_t() {
		return ro_select_s_or_t;
	}
	public void setRo_select_s_or_t(String ro_select_s_or_t) {
		this.ro_select_s_or_t = ro_select_s_or_t;
	}
	public String getRo_s_in_time() {
		return ro_s_in_time;
	}
	public void setRo_s_in_time(String ro_s_in_time) {
		this.ro_s_in_time = ro_s_in_time;
	}
	public String getRo_s_out_time() {
		return ro_s_out_time;
	}
	public void setRo_s_out_time(String ro_s_out_time) {
		this.ro_s_out_time = ro_s_out_time;
	}
	public String getRo_s_price() {
		return ro_s_price;
	}
	public void setRo_s_price(String ro_s_price) {
		this.ro_s_price = ro_s_price;
	}
	public String getRo_t_in_time() {
		return ro_t_in_time;
	}
	public void setRo_t_in_time(String ro_t_in_time) {
		this.ro_t_in_time = ro_t_in_time;
	}
	public String getRo_t_out_time() {
		return ro_t_out_time;
	}
	public void setRo_t_out_time(String ro_t_out_time) {
		this.ro_t_out_time = ro_t_out_time;
	}
	public String getRo_t_price() {
		return ro_t_price;
	}
	public void setRo_t_price(String ro_t_price) {
		this.ro_t_price = ro_t_price;
	}
	
	@Override
	public String toString() {
		return "RoomVO [ro_pid=" + ro_pid + ", ro_num=" + ro_num + ", ro_name=" + ro_name + ", ro_explanation="
				+ ro_explanation + ", ro_min_people=" + ro_min_people + ", ro_max_people=" + ro_max_people
				+ ", ro_select_s_or_t=" + ro_select_s_or_t + ", ro_s_in_time=" + ro_s_in_time + ", ro_s_out_time="
				+ ro_s_out_time + ", ro_s_price=" + ro_s_price + ", ro_t_in_time=" + ro_t_in_time + ", ro_t_out_time="
				+ ro_t_out_time + ", ro_t_price=" + ro_t_price + "]";
	}
} 
