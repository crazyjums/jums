package entity;

import java.sql.Date;

public class News {
	private Integer id;
	private String type;
	private String title;
	private String contents;
	private String author;
	private Date public_time;
	
	public News(int id, String type, String title, String contents, String author, Date public_time) {
		super();
		this.id = id;
		this.type = type;
		this.title = title;
		this.contents = contents;
		this.author = author;
		this.public_time = public_time;
	}
	public News() {
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getPublic_time() {
		return public_time;
	}
	public void setPublic_time(Date public_time) {
		this.public_time = public_time;
	}

	
}
