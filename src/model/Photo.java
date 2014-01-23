package model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="photo")
public class Photo implements Serializable {

	private static final long serialVersionUID = -8148185034363785765L;
	
	@Id
	@GeneratedValue
	@Column(name="PhotoID")
	private Long photoID;
	@Column(name="UserID")
	private Long userID;
	@Column(name="Name")
	private String name;
	@Column(name="Caption")
	private String caption;
	@Column(name="UploadDate")
	private Date uploadDate;
	@Column(name="Width")
	public int width;
	@Column(name="Height")
	public int height;
	@Column(name="Src")
	public String src;
	@Column(name="Description")
	public String desc;
	
	public Long getPhotoID() {
		return photoID;
	}
	
	public Long getUserID() {
		return userID;
	}
	
	public String getName() {
		return name;
	}
	
	public String getCaption() {
		return caption;
	}
	
	public Date getUploadDate() {
		return uploadDate;
	}
	
	public int getWidth() {
		return width;
	}
	
	public int getHeight() {
		return height;
	}
	
	public String getSrc() {
		return src;
	}
	
	public String getDescription() {
		return desc;
	}
	
	public void setPhotoID(Long photoID) {
		this.photoID = photoID;
	}
	
	public void setUserID(Long userID) {
		this.userID = userID;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setCaption(String caption) {
		this.caption = caption;
	}
	
	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}
	
	public void setWidth(int width) {
		this.width = width;
	}
	
	public void setHeight(int height) {
		this.height = height;
	}
	
	public void setSrc(String src) {
		this.src = src;
	}
	
	public void setDescription(String desc) {
		this.desc = desc;
	}
}

