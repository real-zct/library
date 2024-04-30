package edu.shiep.library.vo;
import java.util.Date;
public class Product {
	private int pno;
	private String pname;
	private float pprice;
	private int pamount;
	private String pnote;
	private int psales;
	
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public float getPprice() {
		return pprice;
	}
	public void setPprice(float pprice) {
		this.pprice = pprice;
	}
	public int getPamount() {
		return pamount;
	}
	public void setPamount(int pamount) {
		this.pamount = pamount;
	}
	public String getPnote() {
		return pnote;
	}
	public void setPnote(String pnote) {
		this.pnote = pnote;
	}
	public int getPsales() {
		return psales;
	}
	public void setPsales(int psales) {
		this.psales = psales;
	}
}
