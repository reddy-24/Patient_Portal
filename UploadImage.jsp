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
	alert("Please enter emp ID");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please enter emp name");
	formObj.t2.focus();
	return false;
	}
	if(formObj.t3.value.length==0)
	{
	alert("Please enter treatment date");
	formObj.t3.focus();
	return false;
	}
	if(formObj.t4.value.length==0)
	{
	alert("Please enter submission date");
	formObj.t4.focus();
	return false;
	}
	if(formObj.t5.value.length==0)
	{
	alert("Please enter diagnostic summary");
	formObj.t5.focus();
	return false;
	}
	if(formObj.t6.value.length==0)
	{
	alert("Please enter claimed amount");
	formObj.t6.focus();
	return false;
	}
	if(formObj.t7.value.length==0)
	{
	alert("Please enter hospital details");
	formObj.t7.focus();
	return false;
	}
	if(formObj.t10.value.length==0)
	{
	alert("Please enter recommended person name");
	formObj.t10.focus();
	return false;
	}
	if(formObj.t9.value.length==0)
	{
	alert("Please upload medical files");
	formObj.t9.focus();
	return false;
	}
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>
	 <script language="javascript" type="text/javascript" src="datetimepicker.js">
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
            <li><a href="UploadImage.jsp">Upload Med Data</a></li>
				<li><a href="Logout.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="hbg"><img src="images/header_images.jpg" width="915" height="286" alt="" /></div>
      				<center>
<form name="f1" method="post" action="UploadImage" enctype="multipart/form-data" onsubmit="return validate(this);"><br/>
   <h2><b>Patient Medical Image Upload Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="40" >
			 <tr><td><b><font size="" color="black">Patient&nbsp;ID</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size="15"/></td></tr>
         
		  <tr><td><b><font size="" color="black">Name</b></td><td><input type="text" name="t2" style="font-family: Comic Sans MS" size="20"/></td></tr>

		   <tr><td><b><font size="" color="black">Treatment&nbsp;Date</b></td><td><input name="t3" type="Text" id="demo1" maxlength="25" size="20" class="c2" ><a href="javascript:NewCal('demo1','ddmmmyyyy',false,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td>
		  </td></tr>

		  <tr><td><b><font size="" color="black">Submission&nbsp;Date</b></td><td><input name="t4" type="Text" id="demo2" maxlength="25" size="20" class="c2" ><a href="javascript:NewCal('demo2','ddmmmyyyy',false,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td>
		  </td></tr>

		   <tr><td><b><font size="" color="black">Diagnosis&nbsp;Summary</b></td><td><input type="text" name="t5" style="font-family: Comic Sans MS" size="60"/></td></tr>

			<tr><td><b><font size="" color="black">Amount&nbsp;Claimed</b></td><td><input type="text" name="t6" style="font-family: Comic Sans MS" size="15"/></td></tr>

			<tr><td><b><font size="" color="black">Hospital&nbsp;Details</b></td><td><input type="text" name="t7" style="font-family: Comic Sans MS" size="60"/></td></tr>

			<tr><td><b><font size="" color="black">Recommended&nbsp;By</b></td><td><input type="text" name="t10" style="font-family: Comic Sans MS" size="40"/></td></tr>

			<tr><td><b><font size="" color="black">Access&nbsp;Control</b></td><td><select name="t8" style="font-family: Comic Sans MS" multiple>
		   
		   <option value="Doctor">Doctor</option>
		   <option value="Researcher">Researcher</option>
		   </select>
		   </td></tr>

		   <tr><td><b><font size="" color="black">Upload&nbsp;Image</b></td><td><input type="file" name="t9" style="font-family: Comic Sans MS" size="60"/></td></tr>
         
			<tr><td></td><td><input type="submit" value="Upload Image"></td>
			</table>
				</div>	
					
				</div>
				
					
	</body>
</html>