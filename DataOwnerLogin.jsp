<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SMART CONTRACT BASED ACCESS CONTROL FOR HEALTH CARE DATA</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript">
	function validate(formObj)
	{
	if(formObj.t1.value.length==0)
	{
	alert("Please Enter patient id");
	formObj.t1.focus();
	return false;
	}
	
	
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>
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
<form name="f1" method="post" action="OwnerLogin.jsp" onsubmit="return validate(this);"><br/>
   <h2><b>Login Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="40" >
			 <tr><td><b><font size="" color="black">Patient&nbsp;ID</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size="15"/></td></tr>
         
		

		   
			<tr><td></td><td><input type="submit" value="View Test Results Data"></td>
			</table>
				</div>	
					
				</div>
				
					
	</body>
</html>