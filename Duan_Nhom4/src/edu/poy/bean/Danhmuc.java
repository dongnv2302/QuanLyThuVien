package edu.poy.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="danhmuc")
public class Danhmuc {
	@Id
	@Column(name = "MaDanhMuc")
	private String madanhmuc;
	@Column(name = "TenDanhMuc")
	private String tendanhmuc;
	public Danhmuc() {
		super();
		
	}
	public Danhmuc(String madanhmuc, String tendanhmuc) {
		super();
		this.madanhmuc = madanhmuc;
		this.tendanhmuc = tendanhmuc;
	}
	public String getMadanhmuc() {
		return madanhmuc;
	}
	public void setMadanhmuc(String madanhmuc) {
		this.madanhmuc = madanhmuc;
	}
	public String getTendanhmuc() {
		return tendanhmuc;
	}
	public void setTendanhmuc(String tendanhmuc) {
		this.tendanhmuc = tendanhmuc;
	}
	
}
