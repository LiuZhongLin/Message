<%@ page contentType="text/html; charset=gb2312" language="java" import="java.util.*" %>
<html>
  <head>
    <title>�û��ظ�</title>
  </head>
  
  <body bgcolor="009999">
    <form action="addReply?userId=<%=request.getParameter("userId") %>" method="post">
  <table align="center">
  <tr>
  	<td>�û���</td>
    <td><input type="text" name="replyname" value=""></td>
  </tr>

  <tr>
  	<td>����</td>
    <td><textarea rows="5" cols="50" name="reply" value=""></textarea></td>
  </tr>
  <tr>
  	<td></td>
  	<td align="right"><input type="submit" name="submit2" value="�ύ"></td>
  </tr>
  </table>
  </form>
  </body>
</html>
