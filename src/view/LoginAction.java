package view;

import java.util.List;

import controller.LoginManagement;
import model.UserLogin;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction
{
    private static final long serialVersionUID = 9149826260758390091L;
    private LoginManagement login;
    private String password, username, email, fullname;

    public LoginAction()
    {
    	login = new LoginManagement();
    }
    
    public String add()
    {
    	UserLogin user = new UserLogin();
    	user.setUsername(getUsername());
    	user.setPassword(this.password);
    	user.setEmail(this.email);
    	user.setFullName(this.fullname);
    	
    	try {
    		login.Register(user);
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return "success";
    }
    
    public void setUsername(String username)
    {
    	this.username = username;
    }
    
    public void setPassword(String password)
    {
    	this.password = password;
    }
    
    public void setEmail(String email)
    {
    	this.email = email;
    }
    
    public void setFullname(String fullname)
    {
    	this.fullname = fullname;
    }
    
    public String getUsername() { return username; }
    public String getPassword() { return password; }
    public String getEmail() { return email; }
    public String getFullName() { return fullname; }
}