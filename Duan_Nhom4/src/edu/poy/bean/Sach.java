package edu.poy.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="sach")
public class Sach {
	@Id
	@Column(name = "MaLoaiSach")
	private String maloaisach;
	@ManyToOne
	@JoinColumn(name="madanhmuc")
	Danhmuc danhmuc;
	@Column(name = "TenSach")
	private String tensach;
	@Column(name = "TacGia")
	private String tacgia;
	@Column(name = "NhaXuatBan")
	private String nhaxuatban;
	@Column(name = "NgayXuatBan")
	private String ngayxuatban;
	@Column(name = "NgayNhap")
	private String ngaynhap;
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
	public String getMaloaisach() {
		return maloaisach;
	}
	public void setMaloaisach(String maloaisach) {
		this.maloaisach = maloaisach;
	}
	public Danhmuc getDanhmuc() {
		return danhmuc;
	}
	public void setDanhmuc(Danhmuc danhmuc) {
		this.danhmuc = danhmuc;
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
	public String getNgayxuatban() {
		return ngayxuatban;
	}
	public void setNgayxuatban(String ngayxuatban) {
		this.ngayxuatban = ngayxuatban;
	}
	public String getNgaynhap() {
		return ngaynhap;
	}
	public void setNgaynhap(String ngaynhap) {
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