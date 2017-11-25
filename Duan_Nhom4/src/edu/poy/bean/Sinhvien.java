package edu.poy.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import com.sun.istack.internal.NotNull;

@Entity
@Table(name = "sinhvien")
public class Sinhvien {
	@Id
	@Column(name = "MaSinhVien")
	@NotBlank(message = "you must fill out this field")
	private String masinhvien;
	@Column(name = "TenSinhVien")
	@NotBlank(message = "you must fill out this field")
	private String tensinhvien;
	@Column(name = "GioiTinh")
	@NotBlank(message = "you must fill out this field")
	private String gioitinh;
	@Column(name = "SDT ")
	@NotBlank(message = "you must fill out this field")
	private String sdt;
	@Column(name = "NgaySinh ")
	@NotBlank(message = "you must fill out this field")
	private String ngaysinh;
	@Column(name = "Email ")
	@NotBlank(message = "you must fill out this field")
	private String email;
	@Column(name = "HinhAnh")
	@NotBlank(message = "you must fill out this field")
	private String hinhanh;
	@NotBlank(message = "Please enter your password.")
	@Size(min = 6, max = 15, message = "Your password must between 6 and 15 characters")
	@Column(name = "MatKhau ")
	private String matkhau;

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