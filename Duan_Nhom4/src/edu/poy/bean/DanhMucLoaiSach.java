package edu.poy.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="danhmucloaisach")
public class DanhMucLoaiSach {
	@Id
	@Column(name = "MaLoaiSach")
	private String maloaisach;
	@ManyToOne
	@JoinColumn(name="madanhmuc")
	Danhmuc danhmuc;
	public String getMaloaisach() {
		return maloaisach;
	}
	public void setMaloaisach(String maloaisach) {
		this.maloaisach = maloaisach;
	}
	public Danhmuc getDanhmuc() {
		return danhmuc;
	}
	public void setDanhmuc(Danhmuc danhmuc) {
		this.danhmuc = danhmuc;
	}
	
}