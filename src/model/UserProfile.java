package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="userprofile")
public class UserProfile implements Serializable {

	private static final long serialVersionUID = -8148185034363785765L;
	
	private Long userId;
	private String firstName, middleName, lastName, email;
	
	@Id
	@GeneratedValue
	@Column(name="UserID")
	public Long getUserId() {
		return userId;
	}
	
	@Column(name="FirstName")
	public String getFirstName() {
		return firstName;
	}
	
	@Column(name="MiddleName")
	public String getMiddleName() {
		return middleName;
	}
	
	@Column(name="LastName")
	public String getLastName() {
		return lastName;
	}
	
	@Column(name="Email")
	public String getEmail() {
		return email;
	}
	
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
}
