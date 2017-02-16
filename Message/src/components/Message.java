package components;

public class Message {
	private int userId;
	private String username;
	private String title;
	private String message;

	
	public Message(int userId,String username,String title,String message){
		this.userId=userId;
		this.username=username;
		this.title=title;
		this.message=message;

	}
	public Message(String username, String title, String message) {
		this.username=username;
		this.title=title;
		this.message=message;
	}

	public int getUserId(){
		return userId;
	}
	public String getUsername(){
		return username;
	}
	public String getTitle(){
		return title;
	}
	public String getMessage(){
		return message;
	}

}
