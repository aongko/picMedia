package view;

import java.util.List;
import java.io.File;
import org.apache.commons.io.FileUtils;
import java.io.IOException; 

import controller.PhotoManagement;
import model.Photo;
 
import com.opensymphony.xwork2.ActionSupport;
 
public class PhotoAction extends ActionSupport {
 
    private static final long serialVersionUID = 9149826260758390091L;
    private Photo photo;
    private List<Photo> photoList;
    private Long id;
    private File myFile;
    private String myFileContentType;
    private String myFileFileName;
    private String destPath;
 
    private PhotoManagement photoManagement;
 
    public PhotoAction() {
        photoManagement = new PhotoManagement();
    }
 
    public String execute() {
        this.photoList = photoManagement.photoList();
        System.out.println("execute called");
        return SUCCESS;
    }
 
    public String uploadFile() {
        destPath = "C:/apache-tomcat-6.0.33/work/";

        try{
       	 System.out.println("Src File name: " + myFile);
       	 System.out.println("Dst File name: " + myFileFileName);
       	    	 
       	 File destFile  = new File(destPath, myFileFileName);
      	 FileUtils.copyFile(myFile, destFile);
    
        }catch(IOException e){
           e.printStackTrace();
           return ERROR;
        }

        return SUCCESS;
    }
 
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