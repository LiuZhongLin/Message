package components;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

public class MessageDAO {
	private Connection dbConnection;
	public MessageDAO(){
		
	}
	private void getDBConnection(){
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			dbConnection=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","123456");
		}
		catch(ClassNotFoundException e1)
		{
			
		}
		catch(SQLException e2)
		{
			
		}
	}
	public ArrayList getUsers(){
		String qstr = "select username,password from Users";
		ArrayList al = new ArrayList();
		Statement stmt = null;
		ResultSet rs = null;
		try{
			getDBConnection();
			stmt = dbConnection.createStatement();
			stmt.execute("use test");
			rs = stmt.executeQuery(qstr);
			while(rs.next()){
				String username = rs.getString("username");
				String password = rs.getString("password");
				Users users = new Users(username,password);
				al.add(users);
			}
		}catch(SQLException se){
			System.out.println("SQLException while getting "+"multiple message :"+se.getMessage());
		}finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection();
		}
		return al;
	}
	public ArrayList getMessage(){
		String qstr = "select userId,username,title,contents from Message";
		ArrayList al = new ArrayList();
		Statement stmt = null;
		ResultSet rs = null;
		try{
			getDBConnection();
			stmt = dbConnection.createStatement();
			rs = stmt.executeQuery(qstr);
			while(rs.next()){
				int userId = rs.getInt("userId");
				String username = rs.getString("username");
				String title = rs.getString("title");
				String message = rs.getString("contents");
				Message mes = new Message(userId,username,title,message);
				al.add(mes);
			}
		}catch(SQLException se){
			System.out.println("SQLException while getting "+"multiple message :"+se.getMessage());
		}finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection();
		}
		return al;
	}
	
	public ArrayList getReply(){
		String qstr="select userId,replyname,reply from Reply";
		ArrayList al = new ArrayList();
		Statement stmt = null;
		ResultSet rs = null;
		try{
			getDBConnection();
			stmt = dbConnection.createStatement();
			rs = stmt.executeQuery(qstr);
			while(rs.next()){
				int userId = rs.getInt("userId");
				String replyname = rs.getString("replyname");
				String reply = rs.getString("reply");
				Reply rep = new Reply(userId,replyname,reply);
				al.add(rep);
			}
		}catch(SQLException se){
			System.out.println("SQLException while getting "+"multiple message :"+se.getMessage());
		}finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection();
		}
		return al;

	}

	public void  addMessage(Message aMessage)	{
		 String qstr = "Insert Into Message (username,title,contents) Values("
	          +"'"+aMessage.getUsername()+"'"+","+"'"+aMessage.getTitle()+"'"+","+"'"+aMessage.getMessage()+"')";
	        Statement stmt = null;
	        try {
	            getDBConnection();
	            stmt = dbConnection.createStatement();
	            stmt.executeUpdate(qstr);
	            
	        } catch(SQLException se) {
	            System.out.println("SQLException while Inserting " +
	                        "Message "  + " : " + se.getMessage());
	        } finally {
	            closeStatement(stmt);
	            closeConnection();
	        }  
	 }	
	
	 public void  addReply(Reply aReply)	{
		 String qstr = "insert into Reply (userId,replyname,reply)"+" values('"+aReply.getUserId1()+"'"
				 +","+"'"+aReply.getReplyname()+"'"
				 +","+"'"+aReply.getReply()+"')";
	        Statement stmt = null;
	        try {
	            getDBConnection();
	            stmt = dbConnection.createStatement();
	            stmt.execute("use test");
	            stmt.executeUpdate(qstr);
	            
	        } catch(SQLException se) {
	            System.out.println("SQLException while Inserting " +
	                        "Message "  + " : " + se.getMessage());
	        } finally {
	            closeStatement(stmt);
	            closeConnection();
	        }  
	 }
	
	 public void  deleteMessage(String userId)	{
		 String qstr1 = "Delete Message "
	          + " Where userId = " +"'"+userId+"'" ;
		 String qstr2 ="delete Reply"+" where userId="+"'"+userId+"'";
	        Statement stmt = null;
	        try {
	            getDBConnection();
	            stmt = dbConnection.createStatement();
	            stmt.executeUpdate(qstr1);
	            stmt.executeUpdate(qstr2);
	            
	        } catch(SQLException se) {
	            System.out.println("SQLException while deleting " +
	                        "Message " + userId + " : " + se.getMessage());
	        } finally {
	            closeStatement(stmt);
	            closeConnection();
	        }  
	 }
	
	
	private void closeStatement(Statement stmt) {
		try
		{
			if(stmt != null){
				stmt.close();
			}
		}catch(SQLException se){
			System.out.println("SQLExcepiton while closing"+"statement :"+se.getMessage());
		}
		
	}
	private void closeResultSet(ResultSet result) {
		try{
			if(result != null){
				result.close();
			}
		}catch(SQLException se){
			System.out.println("SQLExcepiton while closing "+"result  : " + se.getMessage());
		}
		
	}
	private void closeConnection() {
		try {
            if (dbConnection != null && !dbConnection.isClosed()) {
                dbConnection.close();
            }
        } catch(SQLException se) {
        	System.out.println("SQLException while closing " +
                            "DB connection  : " + se.getMessage());
        }
	}
	public void addUsers(Users aUsers) {
		// TODO Auto-generated method stub
		
	}
}
