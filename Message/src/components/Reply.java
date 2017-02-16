package components;

public class Reply {
	private int userId1;
	private String userId2;
	private String replyname;
	private String reply;
	
	
	public Reply(int userId1,String replyname,String reply){
		this.userId1=userId1;
		this.replyname=replyname;
		this.reply=reply;
	}
	
	public Reply(String userId2,String replyname,String reply){
		this.userId2=userId2;
		this.replyname=replyname;
		this.reply=reply;
	}

	public String getUserId1(){
		return userId2;
	}
	public int getUserId2(){
		return userId1;
	}
	public String getReplyname(){
		return replyname;
	}
	public String getReply(){
		return reply;
	}
}
