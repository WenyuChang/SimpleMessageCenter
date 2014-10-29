<%@ page contentType="text/html;charset=GB2312"%>
<%@ page language="java" import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Web Template - Web 2.0!</title>
<%!
/*following is Time Display function*/
public String show_Time()
{//Show Date
	System.out.println(new Date());//Êä³öµ±Ç°Ê±¼ä 
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");//¿ØÖÆÊ±¼äÊä³ö¸ñÊ½ 
	String time = sdf.format(new Date());
	//time = time.substring(0,16);
	return time;//°´Ö¸¶¨¸ñÊ½Êä³öµ±Ç°Ê±¼ä 
}

/*End of Time Display Function*/
 %>
</head>

<style>
body{
	margin:0;
	padding:0;
	color:#FFF;
	background-color:#FFF;
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
	
#container{
	margin:0 auto; padding:0 0 24px 0; width:635px; position:relative;
	background-color:#FFF;
	}
	
/*------------------------------------------Header Start----------------------------------*/

#header{
	width:635px;
	height:258px;
	margin:0 0 7px 0;
	padding:0;
	color:#000000;
	float:left;
	background-color:#FFF;
	background-image: url(images/header_bg.gif);
	background-repeat: no-repeat;
	background-position: 0 0;
	}
	
#header img{
	position:absolute; right:0; top:50px;
	}

/*------------------------------------------Left Start----------------------------------*/

#left{
	width:146px; padding:0 17px 0 0;
	float:left;
	background-color:#FFF;
	}
/*------------------------------------------Middle Start----------------------------------*/

#middle{
	width:245px; border-left:#E1E1E1 solid 1px; border-right:#E1E1E1 solid 1px;
	margin:4px 0 0 0; padding:0 21px 0 19px;
	float:left;
	}

#middle form#Message_Area input.Msg{
	background:url(images/more_bg.gif) no-repeat 0 0 #FFFFF;
	font:bold 10px/17px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#FCFCFC; width:60px; height:17px; border:none; padding:0; margin:0;
	cursor:pointer; 
	float:right;
	}
#middle form#Message_Area label{
	color:#000;
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

/*------------------------------------------Right Start----------------------------------*/

#right{
	width:157px; margin:4px 0 0 0; padding:0 11px 0 15px;
	float:left; background-color:#FFF;
	}
	
/*------------------------------------------Footer Start----------------------------------*/
#footer{
	background-color:#FFF;
	width:635px; height:104px; 
	margin:0 auto; padding:11px 0 0 0;
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
</style>
<body>
<%
	String id="-1";
	session.putValue("id",id);
	String newU="-1";
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
		<form id="Message_Area" name="Message_Area" method="post" action="http://localhost:8070/MessageBoard/Msg_Main.jsp">
            <label>User_ID:</label>
            <br />
            &nbsp;&nbsp;&nbsp;
            <input type="text" name="ID" />
          	<label>User_password:</label>
            <br />
            &nbsp;&nbsp;&nbsp;
            <input type="password" name="PSW" />
          	<hr align="center" width="200"/>
		  	<input type="submit" name="Msg_Send" class="login2" value=" send " title="send" alt="send" align="left"/>
	        <input type="reset" name="reset" class="login1" value="reset" title="reset" alt="reset" align="right"/>
		</form>
		<br />
        <form id="new_user" name="new_user" action="http://localhost:8070/MessageBoard/NewUser.jsp">
        	
        	<input type="submit" value="New User" class="login" title="new_user" alt="new user" align="middle"/>
        </form>
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
