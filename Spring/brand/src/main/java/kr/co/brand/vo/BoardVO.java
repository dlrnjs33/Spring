package kr.co.brand.vo;

public class BoardVO {

	private int bb_seq;
	private String bb_cat;
	private int bb_num;
	private String bb_subject;
	private String bb_comment;
	private String bb_rdate;
	private int bb_hit;
	
	
	public int getBb_num() {
		return bb_num;
	}
	public void setBb_num(int bb_num) {
		this.bb_num = bb_num;
	}
	public int getBb_seq() {
		return bb_seq;
	}
	public void setBb_seq(int bb_seq) {
		this.bb_seq = bb_seq;
	}
	public String getBb_cat() {
		return bb_cat;
	}
	public void setBb_cat(String bb_cat) {
		this.bb_cat = bb_cat;
	}
	public String getBb_subject() {
		return bb_subject;
	}
	public void setBb_subject(String bb_subject) {
		this.bb_subject = bb_subject;
	}
	public String getBb_comment() {
		return bb_comment;
	}
	public void setBb_comment(String bb_comment) {
		this.bb_comment = bb_comment;
	}
	public String getBb_rdate() {
		return bb_rdate;
	}
	public void setBb_rdate(String bb_rdate) {
		this.bb_rdate = bb_rdate;
	}
	public int getBb_hit() {
		return bb_hit;
	}
	public void setBb_hit(int bb_hit) {
		this.bb_hit = bb_hit;
	}
	
}
