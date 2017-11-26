package edu.poy.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


import org.hibernate.validator.constraints.NotBlank;

import org.springframework.format.annotation.DateTimeFormat;



@Entity
@Table(name = "sinhvien")
public class Sinhvien {
	@Id
	@Column(name = "MaSinhVien")
	@NotBlank(message = "Bạn cần nhập mã sinh viên")
	private String masinhvien;
	@Column(name = "TenSinhVien")
	@NotBlank(message = "Bạn cần nhập tên sinh viên")
	private String tensinhvien;
	@Column(name = "GioiTinh")
	@NotBlank(message = "Bạn cần nhập giới tính")
	private String gioitinh;
	@Column(name = "SDT ")
	@NotBlank(message = "Bạn cần nhập Số điện thoại")
	private String sdt;
	@Column(name = "NgaySinh ")
	@NotBlank(message = "Bạn cần nhập ngày")
	private String ngaysinh;
	@Column(name = "Email ")
	@NotBlank(message = "Bạn cần phải nhập email")
	private String email;
	@Column(name = "HinhAnh")
	private String hinhanh;
	@Column(name = "MatKhau ")
	@NotBlank(message = "Bạn cần phải nhập mật khẩu")
	private String matkhau;

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