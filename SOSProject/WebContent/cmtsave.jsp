<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%
String me = session.getAttribute("me").toString(); 
String cmt = request.getParameter("cmt");
Connection con = DbConnector.getConnection();
Statement st = con.createStatement();
int i = st.executeUpdate("insert into cmt(user, cmt)values('"+me+"','"+cmt+"')");
if(i!=0){
response.sendRedirect("userpage.jsp?cmt=save sucess");
}
else{
out.println("error found");
}

%>
