package kr.kh.springTest.vo;


public class FileVO {
	
	private String fi_pid;
	private int bo_pid;
	private String fi_org_name;
	private String fi_stored_name;
	private int fi_size;
	
	public String getFi_pid() {
		return fi_pid;
	}
	public void setFi_pid(String fi_pid) {
		this.fi_pid = fi_pid;
	}
	public int getBo_pid() {
		return bo_pid;
	}
	public void setBo_pid(int bo_pid) {
		this.bo_pid = bo_pid;
	}
	public String getFi_org_name() {
		return fi_org_name;
	}
	public void setFi_org_name(String fi_org_name) {
		this.fi_org_name = fi_org_name;
	}
	public String getFi_stored_name() {
		return fi_stored_name;
	}
	public void setFi_stored_name(String fi_stored_name) {
		this.fi_stored_name = fi_stored_name;
	}
	public int getFi_size() {
		return fi_size;
	}
	public void setFi_size(int fi_size) {
		this.fi_size = fi_size;
	}
	
	@Override
	public String toString() {
		return "FileVO [fi_pid=" + fi_pid + ", bo_pid=" + bo_pid + ", fi_org_name=" + fi_org_name + ", fi_stored_name="
				+ fi_stored_name + ", fi_size=" + fi_size + "]";
	}
}
