package model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="photo")
public class Photo implements Serializable{

	private static final long serialVersionUID = -8767337896773261247L;

	private Long photoId;
	private Long userId;
	private String name,caption;
	private Date uploadDate;
	private int width;
	private int height;
	private String src;
	private String description;
	
	@Id
	@GeneratedValue
	@Column(name="photoId")
	public Long getPhotoId() {
		return photoId;
	}
	
	@Column(name="userId")
	public Long getUserId() {
		return userId;
	}
	
	@Column(name="name")
	public String getName() {
		return name;
	}
	
	@Column(name="caption")
	public String getCaption() {
		return caption;
	}
	
	@Column(name="uploadDate")
    public Date getUploadDate() {
        return uploadDate;
    }
	
	@Column(name="width")
	public int getWidth() {
		return width;
	}
	
	@Column(name="height")
	public int getHeight() {
		return height;
	}
	
	@Column(name="src")
    public String getSrc() {
        return src;
    }
	
	@Column(name="description")
    public String getDescription() {
        return description;
    }
	
	public void setPhotoId(Long photoId){
		this.photoId = photoId;
	}
	
	public void setUserId(Long userId){
		this.userId = userId;
	}
	
	public void setName(String name){
		this.name = name;
	}
	
	public void setCaption(String caption){
		this.caption = caption;
	}
	
	public void setUploadDate(Date uploadDate) {
        this.uploadDate = uploadDate;
    }
	
	public void setWidth(int width){
		this.width = width;
	}
	
	public void setHeight(int height){
		this.height = height;
	}
	
	public void setSrc(String src){
		this.src = src;
	}
	
	public void setDescription(String description){
		this.description = description;
	}
}
