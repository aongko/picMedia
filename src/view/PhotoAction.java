package view;

import java.util.List;

import controller.PhotoManagement;
import model.Photo;
 
import com.opensymphony.xwork2.ActionSupport;
 
public class PhotoAction extends ActionSupport {
 
    private static final long serialVersionUID = 9149826260758390091L;
    private Photo photo;
    private List<Photo> photoList;
    private Long id;
 
    private PhotoManagement photoManagement;
 
    public PhotoAction() {
        photoManagement = new PhotoManagement();
    }
 
    public String execute() {
        this.photoList = photoManagement.photoList();
        System.out.println("execute called");
        return SUCCESS;
    }
 
    /*public String add() {
        System.out.println(getPhoto());
        try {
        	photoManagement.add(getPhoto());
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.photoList = photoManagement.list();
        return SUCCESS;
    }*/
 
    public Photo getPhoto() {
        return photo;
    }
 
    public List<Photo> getPhotoList() {
        return photoList;
    }
 
    public void setPhoto(Photo photo) {
        this.photo = photo;
    }
 
    public void setContactList(List<Photo> contactsList) {
        this.photoList = photoList;
    }
 
    public Long getId() {
        return id;
    }
 
    public void setId(Long id) {
        this.id = id;
    }
}
