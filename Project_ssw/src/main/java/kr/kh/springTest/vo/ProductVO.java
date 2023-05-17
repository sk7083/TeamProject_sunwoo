package kr.kh.springTest.vo;

public class ProductVO {
	//상품 번호
	private int pr_pid;
	//상품 카테고리 번호(모텔, 호텔, 게하 등)
	private String pr_ca_pid;
	//상품 이름
	private String pr_name;
	//상품 내용
	private String pr_content;
	//상품 주소
	private String pr_address1;
	private String pr_address2;
	private String pr_address3;

	// 해당 상품 리뷰
	private String re_pid;
	
	//=========== 카테고리 VO =========
	private String ca_pid;

	public int getPr_pid() {
		return pr_pid;
	}

	public void setPr_pid(int pr_pid) {
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

	public String getPr_address1() {
		return pr_address1;
	}

	public void setPr_address1(String pr_address1) {
		this.pr_address1 = pr_address1;
	}

	public String getPr_address2() {
		return pr_address2;
	}

	public void setPr_address2(String pr_address2) {
		this.pr_address2 = pr_address2;
	}

	public String getPr_address3() {
		return pr_address3;
	}

	public void setPr_address3(String pr_address3) {
		this.pr_address3 = pr_address3;
	}

	public String getRe_pid() {
		return re_pid;
	}

	public void setRe_pid(String re_pid) {
		this.re_pid = re_pid;
	}

	public String getCa_pid() {
		return ca_pid;
	}

	public void setCa_pid(String ca_pid) {
		this.ca_pid = ca_pid;
	}

	@Override
	public String toString() {
		return "ProductVO [pr_pid=" + pr_pid + ", pr_ca_pid=" + pr_ca_pid + ", pr_name=" + pr_name + ", pr_content="
				+ pr_content + ", pr_address1=" + pr_address1 + ", pr_address2=" + pr_address2 + ", pr_address3="
				+ pr_address3 + ", re_pid=" + re_pid + ", ca_pid=" + ca_pid + "]";
	}

}
