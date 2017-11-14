package edu.poy.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="danhmucloaisach")
public class DanhMucLoaiSach {
	@Id
	@Column(name = "MaLoaiSach")
	private String maloaisach;
	@Column(name = "MaDanhMuc")
	private String madanhmuc;
	public String getMaloaisach() {
		return maloaisach;
	}
	public void setMaloaisach(String maloaisach) {
		this.maloaisach = maloaisach;
	}
	public String getMadanhmuc() {
		return madanhmuc;
	}
	public void setMadanhmuc(String madanhmuc) {
		this.madanhmuc = madanhmuc;
	}
	
}
