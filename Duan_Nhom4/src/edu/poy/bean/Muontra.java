package edu.poy.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="muontra")
public class Muontra {
	@Id
	@Column(name = "MaMuonTra")
	private String mamuontra;
	@Column(name = "MaSinhVien")
	private String masinhvien;
	@Column(name = "NgayMuon")
	private String ngaymuon;
	@Column(name = "NgayHenTra")
	private String ngayhentra;
	@Column(name = "NgayTra")
	private String ngaytra;
	public Muontra() {
		super();
	}
	public Muontra(String mamuontra, String masinhvien, String ngaymuon, String ngayhentra, String ngaytra) {
		super();
		this.mamuontra = mamuontra;
		this.masinhvien = masinhvien;
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
	public String getMasinhvien() {
		return masinhvien;
	}
	public void setMasinhvien(String masinhvien) {
		this.masinhvien = masinhvien;
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
