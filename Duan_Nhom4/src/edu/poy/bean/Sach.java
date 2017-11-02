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
@Table(name="sach")
public class Sach {
	@Id
	@Column(name = "MaLoaiSach")
	private String maloaisach;
	@Column(name = "TenSach")
	private String tensach;
	@Column(name = "TacGia")
	private String tacgia;
	@Column(name = "NhaXuatBan")
	private String nhaxuatban;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private Date ngayxuatban;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private Date ngaynhap;
	@Column(name = "GiaSach")
	private String giasach;
	@Column(name = "TinhTrang")
	private String tinhtrang;
	@Column(name = "AnhBia")
	private String anhbia;
	@Column(name = "SoTrang")
	private String sotrang;
	@Column(name = "Mota")
	private String mota;
	public Sach() {
		super();
	
	}
	public Sach(String maloaisach, String tensach, String tacgia, String nhaxuatban, Date ngayxuatban, Date ngaynhap,
			String giasach, String tinhtrang, String anhbia, String sotrang, String mota) {
		super();
		this.maloaisach = maloaisach;
		this.tensach = tensach;
		this.tacgia = tacgia;
		this.nhaxuatban = nhaxuatban;
		this.ngayxuatban = ngayxuatban;
		this.ngaynhap = ngaynhap;
		this.giasach = giasach;
		this.tinhtrang = tinhtrang;
		this.anhbia = anhbia;
		this.sotrang = sotrang;
		this.mota = mota;
	}
	public String getMaloaisach() {
		return maloaisach;
	}
	public void setMaloaisach(String maloaisach) {
		this.maloaisach = maloaisach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public String getTacgia() {
		return tacgia;
	}
	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}
	public String getNhaxuatban() {
		return nhaxuatban;
	}
	public void setNhaxuatban(String nhaxuatban) {
		this.nhaxuatban = nhaxuatban;
	}
	public Date getNgayxuatban() {
		return ngayxuatban;
	}
	public void setNgayxuatban(Date ngayxuatban) {
		this.ngayxuatban = ngayxuatban;
	}
	public Date getNgaynhap() {
		return ngaynhap;
	}
	public void setNgaynhap(Date ngaynhap) {
		this.ngaynhap = ngaynhap;
	}
	public String getGiasach() {
		return giasach;
	}
	public void setGiasach(String giasach) {
		this.giasach = giasach;
	}
	public String getTinhtrang() {
		return tinhtrang;
	}
	public void setTinhtrang(String tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
	public String getAnhbia() {
		return anhbia;
	}
	public void setAnhbia(String anhbia) {
		this.anhbia = anhbia;
	}
	public String getSotrang() {
		return sotrang;
	}
	public void setSotrang(String sotrang) {
		this.sotrang = sotrang;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	
	
}
