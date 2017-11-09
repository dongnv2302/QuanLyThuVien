package edu.poy.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="muontra")
public class Muontra {
	@Id
	@Column(name = "MaMuonTra")
	private String mamuontra;
	@ManyToOne
	@JoinColumn(name="masinhvien")
	Sinhvien sinhvien;
	@Column(name = "NgayMuon")
	private String ngaymuon;
	@Column(name = "NgayHenTra")
	private String ngayhentra;
	@Column(name = "NgayTra")
	private String ngaytra;

	public Muontra() {
		super();
	}
	public Muontra(String mamuontra, Sinhvien sinhvien, String ngaymuon, String ngayhentra, String ngaytra) {
		super();
		this.mamuontra = mamuontra;
		this.sinhvien = sinhvien;
		this.ngaymuon = ngaymuon;
		this.ngayhentra = ngayhentra;
		this.ngaytra = ngaytra;
	}
	public String getMamuontra() {
		return mamuontra;
	}
	public void setMamuontra(String mamuontra) {
		this.mamuontra = mamuontra;
	}
	public Sinhvien getSinhvien() {
		return sinhvien;
	}
	public void setSinhvien(Sinhvien sinhvien) {
		this.sinhvien = sinhvien;
	}
	public String getNgaymuon() {
		return ngaymuon;
	}
	public void setNgaymuon(String ngaymuon) {
		this.ngaymuon = ngaymuon;
	}
	public String getNgayhentra() {
		return ngayhentra;
	}
	public void setNgayhentra(String ngayhentra) {
		this.ngayhentra = ngayhentra;
	}
	public String getNgaytra() {
		return ngaytra;
	}
	public void setNgaytra(String ngaytra) {
		this.ngaytra = ngaytra;
	}
	
}
