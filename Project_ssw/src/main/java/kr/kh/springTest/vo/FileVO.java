package kr.kh.springTest.vo;


public class FileVO {
	
	private int fi_pid;
	private int bo_pid;
	private String fi_ori_name;
	private String fi_name;
	private int fi_size;
	private String fi_crea_id;
	
	public int getFi_pid() {
		return fi_pid;
	}
	public void setFi_pid(int fi_pid) {
		this.fi_pid = fi_pid;
	}
	public int getBo_pid() {
		return bo_pid;
	}
	public void setBo_pid(int bo_pid) {
		this.bo_pid = bo_pid;
	}
	public String getFi_ori_name() {
		return fi_ori_name;
	}
	public void setFi_ori_name(String fi_ori_name) {
		this.fi_ori_name = fi_ori_name;
	}
	public String getFi_name() {
		return fi_name;
	}
	public void setFi_name(String fi_name) {
		this.fi_name = fi_name;
	}
	public int getFi_size() {
		return fi_size;
	}
	public void setFi_size(int fi_size) {
		this.fi_size = fi_size;
	}
	public String getFi_crea_id() {
		return fi_crea_id;
	}
	public void setFi_crea_id(String fi_crea_id) {
		this.fi_crea_id = fi_crea_id;
	}
	@Override
	public String toString() {
		return "FileVO [fi_pid=" + fi_pid + ", bo_pid=" + bo_pid + ", fi_ori_name=" + fi_ori_name + ", fi_name="
				+ fi_name + ", fi_size=" + fi_size + ", fi_crea_id=" + fi_crea_id + "]";
	}
	
	
	
}
