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
            <li><a href="AccessData.jsp">Access Patient Data</a></li>
			
           	<li><a href="Logout.jsp">Logout</a></li>
          </ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/investor.jpg" width="870" height="230" alt="" />
	</div>
	<br/>
	<table border="1" align="center" width="100%" >
			 
         <tr>
		<th><font size="" color="black">Image</th>
		 
		 </tr>
		 
		 <%
		 String path = getServletContext().getRealPath("/")+"Upload/enc.jpg";
		 String hash = request.getParameter("t11").trim();
		 com.Download down = new com.Download(hash,path);
		 down.join();
		 %>
		
		<tr>
		<td><img src="http://localhost:9999/SmartContractHealthCare/Upload/enc.jpg" height="400" width="400"></td>
		</tr>
	
	</table><br/><br/>
	
</p>
</body>
</html>

