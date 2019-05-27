package entity;

public class Comments {
	private Integer id;
	private String userid;
	private String nickname;
	private String contents;
	
	public Comments(int id, String userid, String nickname, String contents) {
		super();
		this.id = id;
		this.userid = userid;
		this.nickname = nickname;
		this.contents = contents;
	}
	public Comments() {
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	

}
