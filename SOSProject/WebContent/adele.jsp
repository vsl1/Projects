<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
  //String id = session.getAttribute("di").toString();
 String id = request.getQueryString();
Connection con =  DbConnector.getConnection();
Statement st = con.createStatement();
int i = st.executeUpdate(" delete from answer where id ='"+id+"' ");
if(i!=0){
response.sendRedirect("userpage.jsp?delete=sucess");
}
else{
out.println("error found");
}
%>