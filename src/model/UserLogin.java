package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="userlogin")
public class UserLogin implements Serializable {

	private static final long serialVersionUID = -8148185034363785765L;

	@Id
	@GeneratedValue
	@Column(name="UserID")
	private Long userId;

	@Column(name="Username")
	private String username;

	@Column(name="Password")
	private String password;

	@Column(name="FullName")
	private String fullName;

	@Column(name="Email")
	private String email;

	@Column(name="PhotoUrl")
	private String photoUrl;

	@Column(name="TagLine")
	private String tagLine;
	
	public UserLogin() {}
	public UserLogin(String username, String password) {
		this.username = username;
		this.password = password;
	}
	
	public Long getUserId() {
		return userId;
	}
	
	public String getUsername() {
		return username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public String getFullName() {
		return fullName;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPhotoUrl() {
		return photoUrl;
	}
	
	public String getTagLine() {
		return tagLine;
	}
	
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}
	
	public void setTagLine(String tagline) {
		this.tagLine = tagline;
	}
}
