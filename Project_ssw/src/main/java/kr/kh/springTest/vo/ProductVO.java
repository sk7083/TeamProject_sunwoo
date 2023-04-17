package kr.kh.springTest.vo;

import org.springframework.format.annotation.DateTimeFormat;

public class ProductVO {
	//상품 번호
	private String pr_pid;
	//상품 카테고리 번호(모텔, 호텔, 게하 등)
	private String pr_ca_pid;
	//상품 이름
	private String pr_name;
	//상품 내용
	private String pr_content;
	//상품 주소
	private String pr_address;
	//상품 상세 주소
	private String pr_det_address;
	// 상품 내 파일
	private String fi_pid;
	// 해당 상품 리뷰
	private String re_pid;
	//입실
	@DateTimeFormat(pattern = "HH:mm")
	private String pr_in_time;
	//퇴실
	@DateTimeFormat(pattern = "HH:mm")
	private String pr_out_time;
	
	public String getPr_pid() {
		return pr_pid;
	}
	public void setPr_pid(String pr_pid) {
		this.pr_pid = pr_pid;
	}
	public String getPr_ca_pid() {
		return pr_ca_pid;
	}
	public void setPr_ca_pid(String pr_ca_pid) {
		this.pr_ca_pid = pr_ca_pid;
	}
	public String getPr_name() {
		return pr_name;
	}
	public void setPr_name(String pr_name) {
		this.pr_name = pr_name;
	}
	public String getPr_content() {
		return pr_content;
	}
	public void setPr_content(String pr_content) {
		this.pr_content = pr_content;
	}
	public String getPr_address() {
		return pr_address;
	}
	public void setPr_address(String pr_address) {
		this.pr_address = pr_address;
	}
	public String getPr_det_address() {
		return pr_det_address;
	}
	public void setPr_det_address(String pr_det_address) {
		this.pr_det_address = pr_det_address;
	}
	public String getFi_pid() {
		return fi_pid;
	}
	public void setFi_pid(String fi_pid) {
		this.fi_pid = fi_pid;
	}
	public String getRe_pid() {
		return re_pid;
	}
	public void setRe_pid(String re_pid) {
		this.re_pid = re_pid;
	}
	public String getPr_in_time() {
		return pr_in_time;
	}
	public void setPr_in_time(String pr_in_time) {
		this.pr_in_time = pr_in_time;
	}
	public String getPr_out_time() {
		return pr_out_time;
	}
	public void setPr_out_time(String pr_out_time) {
		this.pr_out_time = pr_out_time;
	}
	
	@Override
	public String toString() {
		return "ProductVO [pr_pid=" + pr_pid + ", pr_ca_pid=" + pr_ca_pid + ", pr_name=" + pr_name + ", pr_content="
				+ pr_content + ", pr_address=" + pr_address + ", pr_det_address=" + pr_det_address + ", fi_pid="
				+ fi_pid + ", re_pid=" + re_pid + ", pr_in_time=" + pr_in_time + ", pr_out_time=" + pr_out_time + "]";
	}
}
