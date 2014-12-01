package net.vietnamvisaonarrival.action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class Demo extends ActionSupport 
implements ModelDriven {
	private String username;
	 
	public String getUsername() {
		return username;
	}
 
	public void setUsername(String username) {
		this.username = username;
	}
 
	// all struts logic here
	@Override
	public String demo() {
		System.out.println("asdfdf");
        setUsername("Thanh Binh");
        Systerm.out.println(getUsername());
		return "SUCCESS";
 
	}

	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
