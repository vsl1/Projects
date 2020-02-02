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
        var a = document.ff.user.value;
        var b = document.ff.pass.value;       
   
         if(a==0){
            alert('Please Enter UserId');
            return false;
            document.getElementById("name").focus();            
        } if(b==0){
            alert('Please Enter Password');
            return false;
            document.getElementById("pass").focus();            
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
%>
          <%
if(request.getParameter("fr")!=null) {
out.println("<script>alert('Already in Your Group.!')</script>");
} 

if(request.getParameter("fd")!=null){
out.println("<script>prompt('Please enter your Feedback', 'Good')</script>");
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
                    	<h1>PROPOSED SYSTEM</h1>
                        <p><img alt="Design Gallery" src="images/social-networking-business.png" width="100" height="100" />
                      In this paper, we propose a distributed Social-based mobile Q&A System (SOS) with low node overhead and system cost as well as quick response to question askers. SOS is novel in that it achieves lightweight distributed answerer search, while still enabling a node to accurately identify its friends that can answer a question
                      </p>  		<div class="cleaner_with_height"></div>
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
                 <%
String me = session.getAttribute("me").toString();        
%>
                <div id="templatemo_content_blue_middle">
                	<div class="templatemo_post_area">
                    	<h1>welcome <%=me%>...!</h1>
                      
                     <table width="600" border="2" style="text-align: center">
                        <tr align="center" style="font-weight: bold; color: red; background:darkgoldenrod "><td>USERID</td>
                       <td>INTEREST</td>                        
                     <td>ACTION</td>
                     <td>ACTION</td>
                        <tr align="center" style="font-weight: bold; font-family: cursive; color: purple; background: #000" >  
           
          <%
          String stA = "NO";
          String frnd = null;
          String intr = null;
          String id = null;
          Connection con =DbConnector.getConnection(); 
          Statement st = con.createStatement();
          ResultSet rs = st.executeQuery("select * from frnd where frnd ='"+(String) session.getAttribute("me") + "' and status_='"+stA+"' ");
          while(rs.next()){
frnd = rs.getString("user");
intr = rs.getString("userintr");
id = rs.getString("id");
session.setAttribute("di", id);
%>
<td style="font-weight: bold; font-family: cursive; color: purple; background: #000"><%=frnd%></td>
<td style="font-weight: bold; font-family: cursive; color: purple; background: #000"><%=intr%></td>
<td style="font-weight: bold; font-family: cursive; color: purple; background: #000">
    <a href="update.jsp?<%=id%>">
<button style="background: #00a9ff; width: 120px; height: 30px;"/>Accept</button>
</a>
</td>
<td style="font-weight: bold; font-family: cursive; color: purple; background: #000">
    <a href="reqdel.jsp?<%=id%>">
<button style="background: #00a9ff; width: 120px; height: 30px;"/>Ignore</button>
</a>
</td>

 </tr>
<%    }
          %>
         </table>
              <p class="color-4 p1" style="text-align: justify; width: 900px; ">                   
                        <p><a href="#">Read Details</a></p>
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