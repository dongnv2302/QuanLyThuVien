package edu.poy.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="chitietmuontra")
public class MuonTraChiTiet {
	@Id
	@Column(name = "MaMuonTra")
	private String mamuontra;
	@ManyToOne
	@JoinColumn(name="masosach")
	Ma ma;
	@Column(name = "TienPhat")
	private String tienphat;
	@Column(name = "NgayGiaHan")
	private String ngaygiahan;
	@Column(name = "NgayTra")
	private String ngaytra;
	@Column(name = "SoLanGiaHan")
	private String solangiahan;
	@Column(name = "GhiChu")
	private String ghichu;
	public String getMamuontra() {
		return mamuontra;
	}
	public void setMamuontra(String mamuontra) {
		this.mamuontra = mamuontra;
	}
	public Ma getMa() {
		return ma;
	}
	public void setMa(Ma ma) {
		this.ma = ma;
	}
	public String getTienphat() {
		return tienphat;
	}
	public void setTienphat(String tienphat) {
		this.tienphat = tienphat;
	}
	public String getNgaygiahan() {
		return ngaygiahan;
	}
	public void setNgaygiahan(String ngaygiahan) {
		this.ngaygiahan = ngaygiahan;
	}
	public String getNgaytra() {
		return ngaytra;
	}
	public void setNgaytra(String ngaytra) {
		this.ngaytra = ngaytra;
	}
	public String getSolangiahan() {
		return solangiahan;
	}
	public void setSolangiahan(String solangiahan) {
		this.solangiahan = solangiahan;
	}
	public String getGhichu() {
		return ghichu;
	}
	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}
	
	
}
