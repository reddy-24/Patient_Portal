<%@page import="java.awt.image.BufferedImage"%>
<%@page import="com.DecryptFile"%>
<%@page import="com.LSB_encode"%>
<%@page import="com.LSB_decode"%>
<%@page import="java.io.File"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SMART CONTRACT BASED ACCESS CONTROL FOR HEALTH CARE DATA</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="main">
  <div class="main_resize">
    <div class="header">
      <div class="logo">
        <h1><span>SMART CONTRACT BASED ACCESS CONTROL FOR HEALTH CARE DATA</span><small></small></h1>
      </div>
    </div>
    <div class="content">
      <div class="content_bg">
        <div class="menu_nav">
          <ul>
            <li class="active"><a href="index.jsp">Home</a></li>
            <li><a href="Login.jsp">Account Section</a></li>
			<li><a href="Login.jsp">Authorised Users</a></li>
            <li><a href="Register.jsp">New User Registration</a></li>
          </ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/investor.jpg" width="870" height="230" alt="" />
	</div>
	<br/>
	<table border="1" align="center" width="100%" >
			 
         <tr>
		 <th><font size="" color="black">Patient ID</th>
		 <th><font size="" color="black">Patient Name</th>
		 <th><font size="" color="black">Age/th>
		 <th><font size="" color="black">Gender</th>
		 <th><font size="" color="black">Diagnostic Summary</th>
		 <th><font size="" color="black">Image</th>
		 
		 </tr>
		 
		 <%
		 String path = getServletContext().getRealPath("/")+"Upload/enc.jpg";
		 String path1 = getServletContext().getRealPath("/")+"Upload/dec.jpg";
		 String private_key = getServletContext().getRealPath("/")+"WEB-INF/private.key";
		 String hash = request.getParameter("t11").trim();
		 com.Download down = new com.Download(hash,path);
		 down.join();
		 DecryptFile.decrypt(path,path1,private_key);
		 BufferedImage yImage = LSB_encode.readImageFile(path1);
		 LSB_decode.DecodeTheMessage(yImage);
		 String msg="";
		 for(int i=0;i<LSB_decode.len*8;i=i+8){
			 String sub = LSB_decode.b_msg.substring(i,i+8);
			 int m=Integer.parseInt(sub,2);
			 char ch=(char) m;
			 msg+=ch;
		 }
		 System.out.println(msg);
		 String arr[] = msg.split(",");
			%>
		
		<tr><td><font size="" color="black"><%=arr[0]%></td>
		<td><font size="" color="black"><%=arr[1]%></td>
		<td><font size="" color="black"><%=arr[2]%></td>
		<td><font size="" color="black"><%=arr[3]%></td>
		<td><font size="" color="black"><%=arr[4]%></td>
		<td><img src="http://localhost:8888/PCIM/Upload/dec.jpg" height="200" width="200"></td>
		
	
	</table><br/><br/>
	
</p>
</body>
</html>

