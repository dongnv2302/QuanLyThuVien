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
private String MaSinhVien;
@Column(name="TenSinhVien")	
private String TenSinhVien;
@Column(name="GioiTinh")	
private String GioiTinh;
@Column(name="SDT ")	
private String SDT ;
@Column(name="NgaySinh ")	
private String NgaySinh ;
@Column(name="Email ")	
private String Email ;
@Column(name="HinhAnh ")	
private String HinhAnh ;
@Column(name="MatKhau ")	
private String MatKhau ;
public String getMaSinhVien() {
	return MaSinhVien;
}
public void setMaSinhVien(String maSinhVien) {
	MaSinhVien = maSinhVien;
}
public String getTenSinhVien() {
	return TenSinhVien;
}
public void setTenSinhVien(String tenSinhVien) {
	TenSinhVien = tenSinhVien;
}
public String getGioiTinh() {
	return GioiTinh;
}
public void setGioiTinh(String gioiTinh) {
	GioiTinh = gioiTinh;
}
public String getSDT() {
	return SDT;
}
public void setSDT(String sDT) {
	SDT = sDT;
}
public String getNgaySinh() {
	return NgaySinh;
}
public void setNgaySinh(String ngaySinh) {
	NgaySinh = ngaySinh;
}
public String getEmail() {
	return Email;
}
public void setEmail(String email) {
	Email = email;
}
public String getHinhAnh() {
	return HinhAnh;
}
public void setHinhAnh(String hinhAnh) {
	HinhAnh = hinhAnh;
}
public String getMatKhau() {
	return MatKhau;
}
public void setMatKhau(String matKhau) {
	MatKhau = matKhau;
}
public Sinhvien() {
	super();
}
public Sinhvien(String maSinhVien, String tenSinhVien, String gioiTinh, String sDT, String ngaySinh, String email,
		String hinhAnh, String matKhau) {
	super();
	MaSinhVien = maSinhVien;
	TenSinhVien = tenSinhVien;
	GioiTinh = gioiTinh;
	SDT = sDT;
	NgaySinh = ngaySinh;
	Email = email;
	HinhAnh = hinhAnh;
	MatKhau = matKhau;
}

}