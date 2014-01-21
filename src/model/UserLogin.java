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
	
	private Long userId;
	private String username, password;
	
	@Id
	@GeneratedValue
	@Column(name="UserID")
	public Long getUserId() {
		return userId;
	}
	
	@Column(name="Username")
	public String getUsername() {
		return username;
	}
	
	@Column(name="Password")
	public String getPassword() {
		return password;
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
}
