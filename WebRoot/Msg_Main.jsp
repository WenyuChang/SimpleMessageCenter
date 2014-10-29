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
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String time = sdf.format(new Date());
	//time = time.substring(0,16);
	return time;
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
	
#left h2.events{
	background:url(images/events_bg.gif) no-repeat 0 0 #FFF;
	font:normal 22px/37px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#1A1A1A; width:113px; height:37px; 
	padding:0 0 0 33px; margin:0 0 20px 0; float:left;
	}

#left h3{
	background:url(images/date_bg.gif) no-repeat 0 0 #FFF;
	font:bold 14px/16px Arial, Helvetica, sans-serif;
	color:#1D1D1B; border-bottom:#E4E4E4 solid 1px;
	padding:0 0 0 20px; float:left;
	}
	
#left p.dateText{
	font:normal 10px/16px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#1D1D1B; background-color:#FFF; 
	padding:7px 0 10px 19px; float:left; 
	}

	
/*------------------------------------------Middle Start----------------------------------*/

#middle{
	width:245px; border-left:#E1E1E1 solid 1px; border-right:#E1E1E1 solid 1px;
	margin:4px 0 0 0; padding:0 21px 0 19px;
	float:left;
	background-color:#FFF;
	}
	
#middle form#Message_Area input.Msg{
	background:url(images/more_bg.gif) no-repeat 0 0 #FFFFF;
	font:bold 14px/20px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#FCFCFC; width:60px; height:17px; border:none; padding:0; margin:0;
	cursor:pointer; 
	float:right;
	}

/*------------------------------------------Right Start----------------------------------*/

#right{
	width:157px; margin:4px 0 0 0; padding:0 11px 0 15px;
	float:left; background-color:#FFF;
	}
	
#right h2.loginArea{
	background:url(images/login_bg.gif) no-repeat 0 0 #FFFFF;
	font:normal 18px/33px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#B57600; width:113px; height:37px; 
	padding:0 0 0 33px; margin:0 0 4px 0; float:left; background-color:#FFF;
	}
#right h2.loginArea span{
	font:normal 18px/33px Arial, Helvetica, sans-serif;
	color:#1A1A1A; background-color:#FFF;
	}

#right form#loginForm{
	margin:0 0 0 5px;
	height:auto;
	background-color:#FFF; color:#000000;
	}
#right form#loginForm label{
	font:"Courier New", Courier, monospace 14px/26px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#181817; background-color:#FFF; 
	float:left;
	}	

#right form#loginForm1 label.loginBg{
	background:url(images/para_bg.gif) repeat-x 0 0 #FFF;
	color:#000000; margin:20px 0 20px 0; width:500px;
	float:left;
	}
	
#right form#loginForm1 input.login{
	background:url(images/more_bg.gif) no-repeat 0 0 #FFF;
	font:bold 10px/17px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#FCFCFC; width:60px; height:17px; border:none; padding:0; margin:0;
	cursor:pointer; 
	float:right;
	}
	
#right input{
	background-color:#F7F6F6; border:#B0B0B0 solid 1px;
	font:normal 12px/14px Arial, Helvetica, sans-serif;
	color:#000000; padding:4px; width:135px; height:25px;
	float:left; 
	}

#right h2.contact{
	background:url(images/contact_bg.gif) no-repeat 0 0 #FFF;
	font:normal 15px/30px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#B57600; width:124px; height:37px; 
	padding:0 0 0 34px; float:left;
	}
	
#right h2.contact span{
	font:normal 18px/33px Arial, Helvetica, sans-serif;
	color:#1A1A1A; background-color:#FFF;
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
String tmp=(String)session.getValue("id");

/*Folowing is the Data of Connection of DateBase*/
String url="";
String user=""; 
String password="sa";
Connection conn1; 
Connection conn2; 
Statement stmt1;
Statement stmt2;
String sql="";
ResultSet rs1;
ResultSet rs2;
/*end of the Data of Connection of DateBase*/

/*Following is User Infomation*/
String NickName="";
String userID="";
String FirstName="";
String LastName="";
String Email="";
int num=0;
/*end of User Infomation*/

String Msg=""; //Use of store message

Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
url="jdbc:sqlserver://localhost:1433;DatabaseName=Message"; 
user="sa"; 
password="sa";
conn1= DriverManager.getConnection(url,user,password); 
conn2= DriverManager.getConnection(url,user,password); 
stmt1=conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE); 
stmt2=conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE); 
if(tmp == "-1")
{
//User login
	String UserID=request.getParameter("ID");
	String psw=request.getParameter("PSW");
	sql=" select ID,Name,FirstName,LastName,Email from UserInfo where ID='" + UserID + "' and Password='" + psw + "';";
	rs1=stmt1.executeQuery(sql);
	while(rs1.next()) 
	{
		num++;
		userID = rs1.getString(1);
		NickName = rs1.getString(2);
		FirstName = rs1.getString(3);
		LastName = rs1.getString(4);
		Email = rs1.getString(5);
	}
	if(num==0)
	{
%>
	<script language="javascript">
		location.replace("http://localhost:8070/MessageBoard/index.jsp");
	</script>
<%
	}
}
else
{
	String UserID =(String)session.getValue("id");
	UserID.trim();
	String newMsg=request.getParameter("textarea");
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	String time = sdf.format(new Date());
	String newSQL = "insert into Message values('" + UserID + "', '" + newMsg + "', '" + time + "')";
	stmt2.executeUpdate(newSQL);
	
	sql=" select ID,Name,FirstName,LastName,Email from UserInfo where Name='" + UserID + "';";
	rs1=stmt1.executeQuery(sql);
	while(rs1.next()) 
	{
		num++;
		userID = rs1.getString(1);
		NickName = rs1.getString(2);
		FirstName = rs1.getString(3);
		LastName = rs1.getString(4);
		Email = rs1.getString(5);
	}
}
rs1.close();
stmt1.close(); 
conn1.close();

sql="select * from Message";
rs2=stmt2.executeQuery(sql);
while(rs2.next()) 
{
	String tmp1 = rs2.getString(1);
	tmp1.trim();
	String tmp2 = rs2.getString(2);
	tmp2.trim();
	String tmp3 = rs2.getString(3);
	tmp3.trim();
	Msg = Msg + tmp1 + "\n" + tmp3 + "\n";
	Msg = Msg + tmp2 + "\n\n";
}
rs2.close();
stmt2.close(); 
conn2.close();

String id = NickName;
session.putValue("id",id);
%>
<div id="container">
	<div id="header">
		<a href="index.html"><img src="images/logo.gif" alt="" border="0" /></a> 
		<ul>
		</ul>
		</div>
    <div id="left">
        <h2 class="events">Welcome</h2>
        <h3><%=show_Time()%></h3>
        <p class="dateText">ÐÕÃû: Ðìéª
        <br />
                     ÐÔ±ð:ÄÐ<br />
       	 Ñ§Ôº:ÐÅÏ¢¿ÆÑ§Óë¼¼ÊõÑ§Ôº<br />             	
                     °à¼¶:µçÆø0602<br />
       	Ñ§ºÅ:060901129<br />
		ÓÊÏä:exn26@qq.com<br />
		ÁªÏµµç»°:021-67794246<br />
		</p> <!-- input your personal information ,there maybe some problem to use Chinese-->
        <br class="spacer" />  
	</div>
	<div id="middle">
		<form id="Message_Area" name="form1" method="post" action="http://localhost:8070/MessageBoard/Msg_Main.jsp">
			<textarea name="messageArea" cols="30" rows="15" readonly="readonly"><%= Msg %></textarea>
        	<hr align="center" width="100"/>
       		<textarea name="textarea" cols="30" rows="4"></textarea>
		  	<input type="submit" name="Msg_Send"  class="Msg" value="send" title="send" alt="send"/>
		</form>
	</div> 
    <div id="right">
        <h2 class="loginArea">login <span>area</span></h2>	
      	<form id="loginForm" name="form2" method="post" action="">
        	<label>User_ID</label>
        	<br />
            <input type="text" value="<%= userID %>" readonly="readonly" />
          	<label>NickName</label>
          	<br />
            <input type="text" value="<%= NickName %>" readonly="readonly" /><br class="spacer" />
          	 
            <h2 class="contact">contact <span>info</span></h2>
            <label>First_Name:</label>
            <input type="text" value="<%= FirstName %>" readonly="readonly" />
            <label>Last_Name:</label>
            <input type="text" value="<%= LastName %>" readonly="readonly" />
          	<label>Email: </label>
            <input type="text" value="<%= Email %>" readonly="readonly" />
          </p>
        </form>
        <form id="loginForm1" name="form2" method="post" action="http://localhost:8070/MessageBoard/index.jsp">
        	<input type="submit" name="Submit2" class="login" value="LOGOUT" title="logout" alt="logout" />
        </form>
        <br class="spacer" />
    
        <div id="User_Info" />
      	</div>
        <br class="spacer" />
	</div>
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
