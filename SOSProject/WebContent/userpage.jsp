<%@page import="javax.swing.plaf.basic.BasicInternalFrameTitlePane.RestoreAction"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Q&ASystemBasedonSocialNetworks</title>
<meta name="keywords" content="HTML, CSS, Design Gallery, CSS Template, Free Download, Website Layout" />
<meta name="description" content="Beautiful Design Gallery, CSS Template, Free Download" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="Shortcut Icon" href="images/p.png" type="image/x-icon" />
<script>
    function check(){
        var a = document.f1.cmt.value;  
         if(a==0){
            alert('Please Enter Any Question..!');
            return false;
            document.getElementById("cmt").focus();            
        }  
    }
     function checkk(){
        var b = document.ff.ans.value;  
         if(b==0){
            alert('Please Enter answer..!');
            return false;
            document.getElementById("ans").focus();            
        }  
    }
    
    
</script>
</head>
<body>
    <%
if(request.getParameter("msgg")!=null) {
out.println("<script>alert('Error Found..!!')</script>");
}                       
if(request.getParameter("msg")!=null) {
out.println("<script>alert('Welcome..!!')</script>");
}
if(request.getParameter("fr")!=null) {
out.println("<script>alert('Already in Your Group.!')</script>");
} 
  
if(request.getParameter("st")!=null){
out.println("<script>('Request Send..!')</script>");
}
if(request.getParameter("ans")!=null){
out.println("<script>('Answer Saved..!')</script>");
}
%>
          
<!--  Free CSS Templates from www.templatemo.com -->
	<div id="templatemo_background_top">
    
		<div class="templatemo_container">
        
        	<div id="templatemo_header">
            </div>
            
            <div class="templatemo_content">
            	<div id="templatemo_content_white_top">
                	<div id="templatemo_menu">
        		<ul>
                            <li><a href="userpage.jsp"  class="current">Home</a></li>
                            <li><a class="active" href="findfrnd.jsp">Add Friend</a></li>
                            <li><a href="viewreq.jsp">View Request</a></li>
                            <li><a href="frndlist.jsp">My Friend</a></li>                          
                            <li><a href="index.jsp">Logout</a></li>            
                        </ul>
				</div>
                </div>
                <div id="templatemo_content_white_middle">
                	<div class="templatemo_post_area">    
            <%
String me = session.getAttribute("me").toString();        
String status= "NO";
Connection con = DbConnector.getConnection();
Statement st1 = con.createStatement();  
String idd, quser, cmtt, ans, iam, qid, status_;
ResultSet rst1 = st1.executeQuery("select * from answer where quser='"+me+"' and status_='"+status+"'") ;  
if(rst1.next()){
    
    cmtt = rst1.getString("cmt").replace("%20", " ");
    ans = rst1.getString("ans");
    iam = rst1.getString("iam");
    idd = rst1.getString("id");

%>
<img src="images/answer.jpg" width="100" height="120">
<font color="green"><b>Question is  : <%=cmtt%></b></font><br> 
    <font color="red"><b>Answer is    : <%=ans%></b></font><br> 
        <font color="blue"><b>Posted By (Click Here for Know Him)   : <a href="abt.jsp?<%=iam%>"><%=iam%></a></b></font><br> </br>
    
 <a href="aupdate.jsp?<%=idd%>">
<button style="background: #00a9ff; width: 120px; height: 30px;"/>Accept</button>
</a><a href="adele.jsp?<%=idd%>">
<button style="background: #00a9ff; width: 120px; height: 30px;"/>Ignore</button>
</a>
<%}else{
%>
                            
                            
                    	<h1>PROPOSED SYSTEM</h1>
                        <p><img alt="Design Gallery" src="images/social-networking-business.png" width="100" height="100" />
                      In this paper, we propose a distributed Social-based mobile Q&A System (SOS) with low node overhead and system cost as well as quick response to question askers. SOS is novel in that it achieves lightweight distributed answerer search, while still enabling a node to accurately identify its friends that can answer a question
                      </p> 
<%}%>                        <div class="cleaner_with_height"></div>
                    </div><!-- End Of Post Area -->
                </div><!-- End Of Content Middle -->
            </div><!-- End Of Content -->
        </div><!-- End Of Container --> 
    </div><!-- End Of Background Top --> 
	<div id="templatemo_background_middle">
    	<div class="templatemo_container">
        	<div class="templatemo_content">
                <div id="templatemo_content_white_blue_joint">
                </div>
                 
                <div id="templatemo_content_blue_middle">
                	<div class="templatemo_post_area">
                    	<h1>welcome <%=me%>...!</h1>
                        <img src="images/qust.jpg" width="300" height="200">
                        <h2>Question Routing</h2>
                       
                        <form name="f1" action="cmtsave.jsp" onsubmit="return check()" method="get">
                        <input type="text" name="cmt" id="cmt" style="width: 400px; height: 100px;"></input><br>
                            <input type="submit" value="Post" style="background-color: #00cccc; width: 80px; height: 40px;">
                        </form>
                        
                        <form action="anssave.jsp" method="get">
                        <table width="600"> 
                            <Td><h2>Answering Here</h2></Td>
                        
                            <tr>     
                      <%
//id,user, cmt
                      String c = ",";
String id,user,cmt;
Statement st = con.createStatement();   
ResultSet rst = st.executeQuery("select * from cmt");
while(rst.next()){
    id = rst.getString("id");
    user = rst.getString("user").replace("%20", "");
    cmt = rst.getString("cmt");
    %>    
   
    <td><font color="green"><b><img src="images/question.png" width="80" height="100">Posted By:</b></font> <%=user%> </td>
    <td><font color="red"><b><%=cmt%></b></font></td>   
    <td> <a href="anssave.jsp?<%=id%>,<%=user%>,<%=cmt%>">==>Click For Post Answer here..!</a></td>
    <td> </td>
                        </tr>                     
    
<%}                 
%>
            </form>             </table>
            <hr>
            <h2>Answered Questions and Answers Here</h2>
            <%
            //id, quser, cmt, ans, iam, qid, status_
            String qq,ann,uss;
            String s= "YES";
            Statement st2 = con.createStatement();
            ResultSet rst2 = st2.executeQuery("select * from answer where status_='"+s+"'");
            while(rst2.next())
                               {            
                
                qq = rst2.getString("cmt").replace("%20", " ");
                ann = rst2.getString("ans");
                uss = rst2.getString("iam");
                
            %>
            
            
            <font color="green"><b> Question Is:  <%=qq%></b></font><br>
          <font color="red"><b>Posted Answers is:  <%=ann%></b></font><br>
              <font color="green"><b>Posted By (Click Here for Know Him)   : <a href="abt.jsp?<%=uss%>"><%=uss%></a></b></font><br>
                  <hr><br>
           <% }
            

%>
              <p class="color-4 p1" style="text-align: justify; width: 900px; ">                   
                       
                      <div class="cleaner_with_height"></div>
                    </div>
                </div><!-- End Of Content Middle -->
                
                <div id="templatemo_content_blue_two_col_joint">
                </div>
                
                <div id="templatemo_content_two_col_middle">
                	<div class="templatemo_post_area_left">
                    	<h1>Who We Are</h1>
                    <img alt="Design Blog" src="images/templatemo_thumb_2.jpg" />
<!--                         <img src="images/suma2.png" width="200" height="200">-->
                    </div><!-- End Of Post Area left -->
                    
                    <div class="templatemo_post_area_right">
                    	<h1>Testimonials</h1>
                        <div class="post_area">                        	 
                            <img src="images/suma.png" width="300" height="100">
                        </div>         <!-- End Of Post Area t -->               
                    </div><!-- End Of Post Area Right -->
                    <div class="cleaner_with_height"></div>
                </div>
                
                <div id="templatemo_content_two_col_bottom">
                </div>
                <div class="templatemo_copyright">           
                	Copyright © 2015 
                </div>
                
            </div>
        </div><!-- End Of Container --> 
    <!--  Download CSS Templates from www.templatemo.com -->  
	</div><!-- End Of Background Middle --> 
<div align=center></div></body>
</html>