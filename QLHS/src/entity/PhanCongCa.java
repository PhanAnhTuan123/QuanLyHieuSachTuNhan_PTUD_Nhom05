package entity;

import java.util.Date;

public class PhanCongCa {
	private String maNV;
	private Date ngayLV;
	private Integer maCa;
	public PhanCongCa() {
		super();
	}
	public PhanCongCa(String maNV, Date ngayLV, Integer maCa) {
		super();
		this.maNV = maNV;
		this.ngayLV = ngayLV;
		this.maCa = maCa;
	}
	public String getMaNV() {
		return maNV;
	}
	public void setMaNV(String maNV) {
		this.maNV = maNV;
	}
	public Date getNgayLV() {
		return ngayLV;
	}
	public void setNgayLV(Date ngayLV) {
		this.ngayLV = ngayLV;
	}
	public Integer getMaCa() {
		return maCa;
	}
	public void setMaCa(Integer maCa) {
		this.maCa = maCa;
	}
	
}