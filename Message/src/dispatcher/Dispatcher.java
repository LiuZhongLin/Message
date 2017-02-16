package dispatcher;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import components.Message;

import components.MessageDAO;
import components.Reply;
import components.Users;

public class Dispatcher extends HttpServlet {
    
    @Override
	public void doGet(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {
        
        HttpSession session = req.getSession(true);
        String selectedScreen = req.getServletPath();
        MessageDAO messageDAO = (MessageDAO) session.getAttribute("messageDAO");
        if (messageDAO == null) {
        	messageDAO = new MessageDAO();
            session.setAttribute("messageDAO", messageDAO);
        }
if(selectedScreen.equals("/register")){
        	req.setCharacterEncoding("gb2312");
        	String username=req.getParameter("username");
            String pwd=req.getParameter("pwd1");
            
            Users aUsers = new Users(username,pwd);
            messageDAO.addUsers(aUsers);
            selectedScreen="/login.jsp";
            
        }
        else if(selectedScreen.equals("/login")){
        	req.setCharacterEncoding("gb2312");
        	String name=req.getParameter("username");
        	String pwd=req.getParameter("pwd");
        	ArrayList al = messageDAO.getUsers();
        	for(int i=0;i<al.size();i++){
        		Users users = (Users) al.get(i);
        		if(users.getUsername().equals(name)&&users.getPassword().equals(pwd)){
        				boolean isLoggedIn = true;
        				session.setAttribute("isLoggedIn", String.valueOf(isLoggedIn));
        				selectedScreen = "/mainPage.jsp";
        				break;
        		} 
        		else {
        				session.setAttribute("Message", "你输入的用户名或密码不正确,请重新输入<br>");
        				selectedScreen = "/login.jsp";
        				break;
        		}
        	}
      	}     
        else if (selectedScreen.equals("/newMessage")) {
        	req.setCharacterEncoding("gb2312");
            String username=req.getParameter("username");
            String title=req.getParameter("title");
            String message=req.getParameter("message");
            if(username==null||username.equals("")||title==null||title.equals("")||message==null||message.equals(""))
            {
            	selectedScreen="/message.jsp";
            }
            else 
            {
                Message aMessage = new  Message(username,title,message);
                messageDAO.addMessage(aMessage);
                selectedScreen="/message.jsp";
            }
        }

            else if (selectedScreen.equals("/delete")) 
            {
                String userId =req.getParameter("userId");
                messageDAO.deleteMessage(userId);
                selectedScreen="/message.jsp";
            }  
            
        	else if (selectedScreen.equals("/reply")) 
        	{
        		selectedScreen="/reply.jsp";
        	}

        	else if (selectedScreen.equals("/addReply")) 
        	{
        		req.setCharacterEncoding("gb2312");
        		String userId=req.getParameter("userId");
        		String replyname=req.getParameter("replyname");
                String reply=req.getParameter("reply");
                if(replyname==null||replyname.equals("")||reply==null||reply.equals(""))
                {
                    req.setAttribute("action", "addReply");
                	selectedScreen="/reply.jsp";
                }
                else 
                {
                	Reply aReply = new  Reply(userId,replyname,reply);
                    messageDAO.addReply(aReply);
                    selectedScreen="/message.jsp";
                }
        	}
        RequestDispatcher rd = getServletContext().getRequestDispatcher(selectedScreen);
        rd.forward(req, res);
        
    }     
    
      @Override
	public void doPost(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {
        doGet(req, res);

      }

    }
