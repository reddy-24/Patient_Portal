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
            <li><a href="UploadImage.jsp">Upload Med Data</a></li>
			<li><a href="UpdateData.jsp">Update Med Data</a></li>
           	<li><a href="Logout.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="hbg"><img src="images/header_images.jpg" width="915" height="286" alt="" /></div>
      				<center>
<form name="f1" method="post" action="ShowUpdateData.jsp" onsubmit="return validate(this);"><br/>
   <h2><b>Employee Image Update Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="40" >
			 <tr><td><b><font size="" color="black">Choose&nbsp;Emp&nbsp;ID</b></td>
			 <td><select name="t11">
			 <%
			 String path = getServletContext().getRealPath(File.separator)+"WEB-INF/classes/address.txt";
			 Path.setPath(path);
			 String data = AccessSmartContract.getID();
			 if(data.length() > 0){
				String arr[] = data.split("#");
				for(int i=0;i<arr.length;i++){
					String ar[] = arr[i].split(",");%>
					<option value="<%=ar[0]%>"><%=ar[0]%></option>
			<%}}%>		
			 </select>
			 </td></tr>
         
		           
			<tr><td></td><td><input type="submit" value="Update Data"></td>
			</table>
				</div>	
					
				</div>
				
					
	</body>
</html>