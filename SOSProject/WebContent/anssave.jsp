<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%
//id, quser, cmt, ans, iam, qid
String s = request.getQueryString();
System.out.println("this is  "+ s);
String ss[] = s.split(",");
String qid = ss[0];
String quser = ss[1];
String cmt = ss[2];
String ans = "ans";
String status= "NO";
String me = session.getAttribute("me").toString();
System.out.println("it's me" + me);
Connection con = DbConnector.getConnection();
Statement st = con.createStatement();
int i = st.executeUpdate("insert into answer(quser, cmt, ans, iam, qid,status_)values('"+quser+"','"+cmt+"','"+ans+"','"+me+"','"+qid+"','"+status+"')");
if(i!=0){
response.sendRedirect("answerpage.jsp?"+qid);
}
else{
out.println("error found");
}

%>
