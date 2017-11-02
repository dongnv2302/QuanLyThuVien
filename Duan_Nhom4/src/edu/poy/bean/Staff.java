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
@Table(name="nhanvien")
public class Staff {
	@Id
	@Column(name = "MaNhanVien")
	private String manhanvien;
	@Column(name = "TenNhanVien")
	private String tennhanvien;
	@Column(name = "GioiTinh")
	private String gioitinh;
	@Column(name = "SDT")
	private String sdt;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private Date ngaysinh;
	@Column(name = "Email")
	private String email;
	@Column(name = "ChucVu")
	private String chucvu;
	@Column(name = "TenDangNhap")
	private String tendangnhap;
	@Column(name = "MatKhau")
	private String matkhau;
	public String getManhanvien() {
		return manhanvien;
	}
	public void setManhanvien(String manhanvien) {
		this.manhanvien = manhanvien;
	}
	public String getTennhanvien() {
		return tennhanvien;
	}
	public void setTennhanvien(String tennhanvien) {
		this.tennhanvien = tennhanvien;
	}
	public String getGioitinh() {
		return gioitinh;
	}
	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public Date getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getChucvu() {
		return chucvu;
	}
	public void setChucvu(String chucvu) {
		this.chucvu = chucvu;
	}
	public String getTendangnhap() {
		return tendangnhap;
	}
	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public Staff(String manhanvien, String tennhanvien, String gioitinh, String sdt, Date ngaysinh, String email,
			String chucvu, String tendangnhap, String matkhau) {
		super();
		this.manhanvien = manhanvien;
		this.tennhanvien = tennhanvien;
		this.gioitinh = gioitinh;
		this.sdt = sdt;
		this.ngaysinh = ngaysinh;
		this.email = email;
		this.chucvu = chucvu;
		this.tendangnhap = tendangnhap;
		this.matkhau = matkhau;
	}
	public Staff() {
		super();
		
	}
	

}
