<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String qid = request.getParameter("qid");
String ans = request.getParameter("ans");
String me = session.getAttribute("me").toString();
Connection con = DbConnector.getConnection();
Statement st = con.createStatement();
int i = st.executeUpdate("update answer set  ans='"+ans+"' where qid ='"+qid+"'and iam='"+me+"' ");
if(i!=0){
response.sendRedirect("userpage.jsp?upans=answer saved");
}
else{
out.println("error found");
}
%>
