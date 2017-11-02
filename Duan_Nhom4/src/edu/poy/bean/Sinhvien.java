package edu.poy.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="sinhvien")
public class Sinhvien {
	@Id
@Column(name="MaSinhVien")
private String masinhvien;
@Column(name="TenSinhVien")	
private String tensinhvien;
@Column(name="GioiTinh")	
private String gioitinh;
@Column(name="SDT ")	
private String sdt ;
@Column(name="NgaySinh ")	
private String ngaysinh ;
@Column(name="Email ")	
private String email ;
@Column(name="HinhAnh ")	
private String hinhanh ;
@Column(name="MatKhau ")	
private String matkhau ;
public Sinhvien(String masinhvien, String tensinhvien, String gioitinh, String sdt, String ngaysinh, String email,
		String hinhanh, String matkhau) {
	super();
	this.masinhvien = masinhvien;
	this.tensinhvien = tensinhvien;
	this.gioitinh = gioitinh;
	this.sdt = sdt;
	this.ngaysinh = ngaysinh;
	this.email = email;
	this.hinhanh = hinhanh;
	this.matkhau = matkhau;
}
public Sinhvien() {
	super();
}
public String getMasinhvien() {
	return masinhvien;
}
public void setMasinhvien(String masinhvien) {
	this.masinhvien = masinhvien;
}
public String getTensinhvien() {
	return tensinhvien;
}
public void setTensinhvien(String tensinhvien) {
	this.tensinhvien = tensinhvien;
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
public String getNgaysinh() {
	return ngaysinh;
}
public void setNgaysinh(String ngaysinh) {
	this.ngaysinh = ngaysinh;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getHinhanh() {
	return hinhanh;
}
public void setHinhanh(String hinhanh) {
	this.hinhanh = hinhanh;
}
public String getMatkhau() {
	return matkhau;
}
public void setMatkhau(String matkhau) {
	this.matkhau = matkhau;
}



}