<%@page import="com.AccessSmartContract"%>
<%@page import="com.Path,java.io.File"%>
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
        </div>
        <div class="hbg"><img src="images/header_images.jpg" width="915" height="286" alt="" /></div>
      				<center>

   <h2><b>View Test Results Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
			<table border="1" align="center" width="100%">
			<tr><th>Patient ID</th><th>Diagnostic Summary</th><th>Image IPFS Hash Value</th><th>Access Permission Users</th><th>Download, Extract Steg details and View Image</th></tr> 
			
	<%
	String id = request.getParameter("t1").toString();
	String path = getServletContext().getRealPath(File.separator)+"WEB-INF/classes/address.txt";
	Path.setPath(path);
	String data = AccessSmartContract.getAccessAccount("owner",id);
	if(data.length() > 0){
		String arr[] = data.split("#");
		for(int i=0;i<arr.length;i++){
			String ar[] = arr[i].split(",");
		%>
	<tr><td><font size="3" color="black"><%=ar[0]%></td>
	<td><font size="3" color="black"><%=ar[1]%></td>
	<td><font size="3" color="black"><%=ar[2]%></td>
	<td><font size="3" color="black"><%=ar[3]%></td>
	<td><a href="ViewImageResult.jsp?t11=<%=ar[2]%>"><font size="3" color="black">Click Here</a></td>
	<%}}else{
			out.println("<font size=3 color=black>You dont have access permission");
		}
			%>
	</tr>
	</table>
	</body>
</html>