package entity;

public class Users {
	private Integer id;
	private String userid;
	private String nickname;
	private String password;
	
	public Users(int id, String userid, String nickname, String password) {
		super();
		this.id = id;
		this.userid = userid;
		this.nickname = nickname;
		this.password = password;
	}
	public Users() {
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
