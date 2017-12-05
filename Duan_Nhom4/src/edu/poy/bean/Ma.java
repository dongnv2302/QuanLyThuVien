package edu.poy.bean;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import edu.poy.bean.Sach;
@Entity
@Table(name="danhsachma")
public class Ma {
	@Id
	@Column(name = "MaSoSach")
	private String masosach;
	@ManyToOne
	@JoinColumn(name="maloaisach")
	Sach sach;
	@Column(name = "TinhTrang")
	private String tinhtrang;
	public String getMasosach() {
		return masosach;
	}
	public void setMasosach(String masosach) {
		this.masosach = masosach;
	}
	public Sach getSach() {
		return sach;
	}
	public void setSach(Sach sach) {
		this.sach = sach;
	}
	public String getTinhtrang() {
		return tinhtrang;
	}
	public void setTinhtrang(String tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
	
}