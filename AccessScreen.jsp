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
        </div>
        <div class="hbg"><img src="images/header_images.jpg" width="915" height="286" alt="" /></div>
		<br/>
		
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
         <p align="justify"><font size="3" style="font-family: Comic Sans MS" color="black">Abstract-In today's digital world, information is exchanged between systems, and it is expected that each interaction/transaction between the systems is secure and reliable[1]. But the present privacy protection and access control policies don’t suit for the present scenario. In RBAC, with an increasing number of different (real world) roles (sometimes differences are very minor) must need to increase the number of roles to properly encapsulate permissions.</p>
<p align="justify"><font size="3" style="font-family: Comic Sans MS" color="black">
 However, In Healthcare, Medical data is highly critical; safe and secure accessing and usage of these data is extremely important. Blockchain technology can be applied to protect the security of healthcare data. Blockchain uses Attribute-based access control mechanism that allows only authorized persons to share the medical data. In this work, we propose a blockchain-based system for securely sharing health records. The system includes a smart-contract based data protection, while uploading a record how much power it will consume, time complexity, and network bandwidth a record needed.
 </p>
 
 
 <br/><br/><br/><br/>
 
  </body>
</html>
