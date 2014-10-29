<%@ page contentType="text/html;charset=GB2312"%>
<%@ page language="java" import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Web Template - Web 2.0!</title>
<%!
/*following is Time Display function*/
public String show_Time()
{//Show Date
	System.out.println(new Date());
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String time = sdf.format(new Date());
	return time;
}

/*End of Time Display Function*/
 %>
</head>

<style>
body{
	margin:0;
	padding:0;
	color:#000000;
	background-color: #FFFFFF;
	background-image: none;
	background-repeat: repeat-x;
	background-position: 0 0;
	}

div, p, h2, h3, ul, li, a, form, input, label, img{
	margin:0; padding:0;
	}
	
.spacer{
	line-height:0; font-size:0; clear:both;
	}
	
/*------------------------------------------Header Start----------------------------------*/

#container{
	margin:0 auto; padding:0 0 24px 0; width:635px; position:relative;
	}

#header{
	width:635px;
	height:258px;
	margin:0 0 7px 0;
	padding:0;
	color:#000000;
	float:left;
	background-color: #FFFFFF;
	background-image: url(images/header_bg.gif);
	background-repeat: no-repeat;
	background-position: 0 0;
	}
	
#header img{
	position:absolute; right:0; top:50px;
	}
	
#header ul{
	position:absolute; left:33px; top:210px;
	margin:0; padding:0; list-style:none;
	}
	
#header ul li{
	width:83px;	margin:0 1px 0 0; float:left; 
	}
#header ul li a{
	font:bold 11px/36px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#C8C8C8; text-align:center; text-decoration:none;
	text-transform:uppercase; height:48px; display:block;
	background:url(images/header_nav_bg_1.gif) repeat-x 0 0 #000000;
	
	}
#header ul li a.home{
	background:url(images/header_nav_bg.gif) no-repeat 0 0;
	font:bold 11px/36px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#191919; text-align:center; text-decoration:none;
	text-transform:uppercase; background-color:#CCCCCC;
	}
#header ul li a:hover{
	background:url(images/header_nav_bg.gif) no-repeat 0 0 #CCCCCC;
	color:#191919;
	}
	#left{
	width:146px; padding:0 17px 0 0;
	float:left;
	}
#left h2.events{
	background:url(images/events_bg.gif) no-repeat 0 0 #FFFFFF;
	font:normal 22px/37px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#1A1A1A; width:113px; height:37px; 
	padding:0 0 0 33px; margin:0 0 20px 0; float:left;
	}
#left h3{
	background:url(images/date_bg.gif) no-repeat 0 0 #FFFFFF;
	font:bold 14px/16px Arial, Helvetica, sans-serif;
	color:#1D1D1B; border-bottom:#E4E4E4 solid 1px;
	padding:0 0 0 20px; float:left;
	}
#left p.dateText{
	font:normal 14px/20px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#1D1D1B; background-color:#FFFFFF; 
	padding:7px 0 10px 19px; float:left; 
	}
#left p.more{
	background:url(images/para_bg.gif) repeat-x 0 0 #FFFFFF;
	color:#FBFBFB; text-align:right; margin:0 0 9px 0; float:left;
	}

#left p.more a{
	background:url(images/more_bg.gif) no-repeat 0 0 #FFFFFF;
	font:bold 10px/17px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#FBFBFB; text-align:center; text-decoration:none; width:60px;
	float:right;
	}
#left p.more a:hover{
	background:url(images/more_bg_on.gif) no-repeat 0 0 #FFFFFF;
	color:#FBFBFB;
	}
	
#left h2.newsletter{
	background:url(images/newsletter_bg.gif) no-repeat 0 0 #FFFFFF;
	font:normal 22px/37px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#1A1A1A; width:109px; height:37px; 
	padding:0 0 0 37px; margin:0 0 14px 0; float:left;
	}	
	
#left form#letter{
	background-color:#FFFFFF; color:#000000;
	}
#left form#letter label{
	font:normal 14px/16px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#181817; background-color:#FFFFFF; 
	float:left;
	}
	
#left form#letter input{
	background-color:#F7F6F6; border:#B0B0B0 solid 1px;
	font:normal 12px/14px Arial, Helvetica, sans-serif;
	color:#000000; padding:4px; width:135px; height:12px;
	float:left;
	}

#left form#letter label.goBorder{
	background:url(images/para_bg.gif) repeat-x 0 0 #FFFFFF;
	color:#000000; padding:0; margin:11px 0; float:left;
	}
	
#left form#letter input.go{
	background:url(images/go_bg.gif) no-repeat 0 0 #FFFFFF;
	font:bold 10px/17px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#FCFCFC; width:35px; height:17px; border:none; padding:0; margin:0;
	cursor:pointer; 
	float:right;
	}
#middle{
	width:245px; border-left:#E1E1E1 solid 1px; border-right:#E1E1E1 solid 1px;
	margin:4px 0 0 0; padding:0 21px 0 19px;
	float:left;
	}
	
#middle h2{
	background:url(images/dotted_line.gif) repeat-x 0 100% #FFFFFF;
	font:normal 30px/32px Arial, Helvetica, sans-serif;
	color:#B57600; padding:0 0 5px 0;
	}
#middle h2 span{
	font:normal 30px/32px Arial, Helvetica, sans-serif;
	color:#000000; background-color:#FFFFFF;
	}

#middle p.text1{
	font:normal 14px/16px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#212121; background-color:#FFFFFF; 
	padding:14px 0 18px 0;
	}

#middle strong{
	font-weight:bold;
	}
#middle ul.fusce{
	margin:0; padding:0; list-style:none;
	background:url(images/date_bg.gif) no-repeat 0 0 #FFFFFF;
	color:#1D1D1B;
	}	
	
#middle ul.fusce li{
	font:bold 14px/16px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#1D1D1B; border-bottom:#E4E4E4 solid 1px; background-color:#FFFFFF;	
	margin:0 0 0 23px; padding:0 0 4px 0; display:block;
	}
	
#middle span.fusceText{
	font:normal 14px/20px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#1D1D1B; border:none; width:222px; margin:0 0 13px 23px;
	background-color:#FFFFFF; display:block;
	}
	
#middle p.more{
	background:url(images/para_bg.gif) repeat-x 0 0 #FFFFFF;
	color:#FBFBFB; text-align:right; margin:5px 0 16px 0; float:left;
	}
#middle p.more a{
	background:url(images/more_bg.gif) no-repeat 0 0 #FFFFFF;
	font:bold 10px/17px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#FBFBFB; text-align:center; text-decoration:none; width:60px;
	float:right;
	}
#middle p.more a:hover{
	background:url(images/more_bg_on.gif) no-repeat 0 0 #FFFFFF;
	color:#FBFBFB;
	}

#middle ul.tips{
	margin:0; padding:8px 0 0 0; list-style:none;
	}
#middle ul.tips li{
	background:url(images/arrow.gif) no-repeat 0 7px #FFFFFF;
	font:normal 14px/22px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#212121;
	padding:0 0 0 13px;
	}
#middle ul.tips li a{
	font:normal 14px/22px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#212121; background-color:#FFFFFF; 
	text-decoration:underline; display:block;
	}
#middle ul.tips li a:hover{
	background-color:#F0EEEE; color:#212121;
	}
	#right{
	width:157px; margin:4px 0 0 0; padding:0 11px 0 15px;
	float:left;
	}
	
#middle form#Message_Area label.loginBg{
	background:url(images/para_bg.gif) repeat-x 0 0 #FFFFFF;
	color:#000000; margin:10px 0 14px 0; width:151px;
	float:left;
	}
#middle form#Message_Area input.login1{
	background:url(images/more_bg.gif) no-repeat 0 0 #FFFFFF;
	font:bold 10px/17px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#FCFCFC; width:60px; height:17px; border:none; padding:0; margin:0;
	cursor:pointer; 
	float:right;
	}
#middle form#Message_Area input.login2{
	background:url(images/more_bg.gif) no-repeat 0 0 #FFFFFF;
	font:bold 10px/17px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#FCFCFC; width:60px; height:17px; border:none; padding:0; margin:0;
	cursor:pointer; 
	float:left;
	}
#middle form#new_user input.login{
	background:url(images/more_bg.gif) no-repeat 0 0 #FFFFFF;
	font:bold 10px/17px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#FCFCFC; width:60px; height:17px; border:none; padding:0; margin:0;
	cursor:pointer; 
	float:middle;
	}
#middle form#Message_Area input.newUser{
	background:url(images/more_bg.gif) no-repeat 0 0 #FFFFFF;
	font:bold 10px/17px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#FCFCFC; width:60px; height:17px; border:none; padding:0; margin:0;
	cursor:pointer; 
	float:right;
	}

#right h2.loginArea{
	background:url(images/login_bg.gif) no-repeat 0 0 #FFFFFF;
	font:normal 22px/37px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#B57600; width:113px; height:37px; 
	padding:0 0 0 33px; margin:0 0 4px 0; float:left;
	}
#right h2.loginArea span{
	font:normal 22px/37px Arial, Helvetica, sans-serif;
	color:#1A1A1A; background-color:#FFFFFF;
	}

#right form#loginForm{
	margin:0 0 0 5px;
	background-color:#FFFFFF; color:#000000;
	}
#right form#loginForm label{
	font:normal 14px/26px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#181817; background-color:#FFFFFF; 
	float:left;
	}
	
#right input{
	background-color:#F7F6F6; border:#B0B0B0 solid 1px;
	font:normal 12px/14px Arial, Helvetica, sans-serif;
	color:#000000; padding:4px; width:135px; height:12px;
	float:left;
	}
#right form#loginForm input.check{
	background-color:#F7F6F6; border:none; color:#000000;
	width:14px; height:14px; margin:12px 8px 0 0; float:left;
	}
	
#right p.remember{
	font:normal 14px/16px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#181817; background-color:#FFFFFF; 
	margin:11px 0 0 0; float:left;
	}
	
#right p.member{
	background:url(images/face_icon.gif) no-repeat 0 0 #FFFFFF;
	color:#000000; margin:6px 0 0 0; padding:0 0 0 18px;
	}
#right p.member a{
	font:bold 10px/12px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#BC7700; background-color:#FFFFFF; 
	}
	
#right p.member a:hover{
	background-color:#F4DFBC; color:#BC7700;
	}

#right form#loginForm label.loginBg{
	background:url(images/para_bg.gif) repeat-x 0 0 #FFFFFF;
	color:#000000; margin:10px 0 14px 0; width:151px;
	float:left;
	}
#right form#loginForm input.login{
	background:url(images/more_bg.gif) no-repeat 0 0 #FFFFFF;
	font:bold 10px/17px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#FCFCFC; width:60px; height:17px; border:none; padding:0; margin:0;
	cursor:pointer; 
	float:right;
	}
#right form#loginForm input.newUser{
	background:url(images/more_bg.gif) no-repeat 0 0 #FFFFFF;
	font:bold 10px/17px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#FCFCFC; width:60px; height:17px; border:none; padding:0; margin:0;
	cursor:pointer; 
	float:right;
	}
	
#right h2.contact{
	background:url(images/contact_bg.gif) no-repeat 0 0 #FFFFFF;
	font:normal 22px/37px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#B57600; width:124px; height:37px; 
	padding:0 0 0 34px; float:left;
	}
#right h2.contact span{
	font:normal 22px/37px Arial, Helvetica, sans-serif;
	color:#1A1A1A; background-color:#FFFFFF;
	}

#right form#contactForm{
	margin:0 0 4px 5px;
	background-color:#FFFFFF; color:#000000;
	}
#right form#contactForm label{
	font:normal 14px/28px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#181817; background-color:#FFFFFF; 
	float:left;
	}
#right textarea{
	background-color:#F7F6F6; border:#B0B0B0 solid 1px;
	font:normal 12px/14px Arial, Helvetica, sans-serif;
	color:#000000; width:140px; height:60px;
	float:left;
	}
	#footerOutside{
	background:url(images/footer_bg.gif) repeat-x 0 0 #F7F7F7;
	color:#000000;
	}
	
#footer{
	width:635px; height:104px; 
	margin:0 auto; padding:11px 0 0 0;
	}

#footer ul.nav{
	margin:0 auto; padding:0; list-style:none; width:490px;
	}	
#footer ul.nav li{
	font:bold 11px/13px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#000000; background-color:#E1E1E1; float:left;
	}
#footer ul.nav li a{
	font:bold 11px/13px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#000000; background-color:#E1E1E1; 
	padding:0 9px; text-decoration:none;
	}
#footer ul.nav li a:hover{
	background-color:#EFECEC; color:#000000;
	}
	
#footer p{
	font:normal 11px/16px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#915C00; background-color:#F7F7F7;
	margin:10px auto 6px auto; width:183px;
	}
	
#footer ul.navlink{
	margin:0 auto; padding:0; list-style:none; width:180px;
	}

#footer ul.navlink li.xhtml{
	font:bold 11px/18px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#0E0E0E; background-color:#F7F7F7; float:left;  
	margin:0 4px 0 0;
	}

#footer ul.navlink li.xhtml a{
	background:url(images/xhtml_bg.gif) no-repeat 0 0 #F7F7F7;
	font:bold 11px/18px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#0E0E0E; text-decoration:none; display:block;
	padding:0 0 0 8px; width:88px; height:18px; 
	}
#footer ul.navlink li.xhtml a:hover{
	background:url(images/xhtml_bg_on.gif) no-repeat 0 0 #F7F7F7; color:#0E0E0E;
	}

#footer ul.navlink li.css{
	font:bold 11px/18px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#0E0E0E; background-color:#F7F7F7; float:left; 
	}

#footer ul.navlink li.css a{
	background:url(images/css_bg.gif) no-repeat 0 0 #F7F7F7;
	font:bold 11px/18px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#0E0E0E; text-decoration:none; display:block;
	padding:0 0 0 8px; width:70px; height:18px;  
	}
#footer ul.navlink li.css a:hover{
	background:url(images/css_bg_on.gif) no-repeat 0 0 #F7F7F7; color:#0E0E0E;
	}
	
#footer ul.design{
	margin:8px auto; padding:0; list-style:none; width:158px;
	}
	
#footer ul.design li{
	font:normal 10px/12px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#000000; background-color:#F7F7F7; float:left;
	}
#footer ul.design li a{
	font:bold 10px/12px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#000000; background-color:#F7F7F7;
	text-decoration:none;
	}	
#footer ul.design li a:hover{
	background-color:#E1E1E1; color:#000000;
	}
</style>
<body>
<%
/*Folowing is the Data of Connection of DateBase*/
String url="";
String user=""; 
String password="sa";
Connection conn; 
Statement stmt;
String sql="";
ResultSet rs;
/*end of the Data of Connection of DateBase*/

Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
url="jdbc:sqlserver://localhost:1433;DatabaseName=Message"; 
user="sa"; 
password="sa";
conn= DriverManager.getConnection(url,user,password); 
stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE); 

String tmp=(String)session.getValue("newU");
if(tmp!="-1")
{
	String uid=request.getParameter("ID");
	String NN=request.getParameter("NickName");
	String PSW=request.getParameter("PSW");
	String FN=request.getParameter("FirstName");
	String LN=request.getParameter("LastName");
	String EM=request.getParameter("Email");
	
	String newSQL = "insert into UserInfo values('" + uid + "', '" + NN + "', '" + PSW + "', '" + FN + "', '" + LN + "', '" + EM + "')";
	stmt.executeUpdate(newSQL);	
	stmt.close(); 
	conn.close();
%>
	<script language="javascript">
		location.replace("http://localhost:8070/MessageBoard/index.jsp");
	</script>
<%
}
String newU="1";
session.putValue("newU",newU);
%>
<div id="container">
	<div id="header">
		<a href="index.html"><img src="images/logo.gif" alt="" border="0" /></a> 
		<ul>
		</ul>
	</div>
    <div id="left">
    <br class="spacer" />  
    </div>
	<div id="middle">
		<form id="Message_Area" name="Message_Area" method="post" action="http://localhost:8070/MessageBoard/NewUser.jsp">
            <label>User_ID:</label>
            <br />
            &nbsp;&nbsp;&nbsp;
            <input type="text" name="ID" />
          	<label>NickName:</label>
            <br />
            &nbsp;&nbsp;&nbsp;
            <input type="text" name="NickName" />
            <label>Password:</label>
            <br />
            &nbsp;&nbsp;&nbsp;
            <input type="password" name="PSW" />
          	<label>First_Name:</label>
            <br />
            &nbsp;&nbsp;&nbsp;
            <input type="text" name="FirstName" />
            <label>Last_Name:</label>
            <br />
            &nbsp;&nbsp;&nbsp;
            <input type="text" name="LastName" />
            <br />
          	<label>E-mail:</label>
            <br />
            &nbsp;&nbsp;&nbsp;
            <input type="text" name="Email" />
          	<hr align="center" width="200"/>
		  	<input type="submit" name="Msg_Send" class="login1" value=" send " title="send" alt="send" align="left"/>
		<br />
		<br class="spacer" />
	</div> 
    <div id="right">
    </div>
      </div><br class="spacer" />
    <div id="footerOutside">
        <div id="footer" align="center">  
        <br class="spacer" />
            <ul class="navlink">
                <li class="xhtml"><a href="http://www.dhu.edu.cn" target="_blank" title="Donghua"><font>Donghua</font></a></li>   
          	</ul>
        </div>
	</div>
</body>
</html>
