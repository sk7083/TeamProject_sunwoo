package kr.kh.springTest.vo;


public class FileVO {
	
	private String fi_pid;
	private String fi_name;
	
	public String getFi_pid() {
		return fi_pid;
	}
	public void setFi_pid(String fi_pid) {
		this.fi_pid = fi_pid;
	}
	public String getFi_name() {
		return fi_name;
	}
	public void setFi_name(String fi_name) {
		this.fi_name = fi_name;
	}
	
	@Override
	public String toString() {
		return "FileVO [fi_pid=" + fi_pid + ", fi_name=" + fi_name + "]";
	}
}
