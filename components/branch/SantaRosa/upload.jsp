<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import ="com.myproject.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.io.File"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.io.output.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	
<%
boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (!isMultipart)
{
}
else
{
	
	String directory="";
	FileItemFactory factory = new DiskFileItemFactory();
	ServletFileUpload upload = new ServletFileUpload(factory);
	List items = null;
	try
	{
		items = upload.parseRequest(request);
		
	}
	catch (FileUploadException e)
	{
		e.printStackTrace();
	}
	Iterator itr = items.iterator();
	while (itr.hasNext()){
	
		FileItem item = (FileItem) itr.next();
		if (item.isFormField())
		{
		}
		else
		{
			try
			{
				String itemName = item.getName();

				
				//File savedFile = new File("/opt/tomcat7/webapps/CORE/E-Approval/transaction/requestDocument/uploads/"+itemName); //file path where the chosen files will be uploaded
											//localname OPT
				File savedFile = new File("C:/Program Files/Apache Software Foundation/Tomcat 9.0/webapps/RR/components/branch/itemUpload/"+itemName);
				item.write(savedFile);

				
				if(savedFile.exists())
				{
					%>
						<script type="text/javascript">
							$(document).ready(function()
							{
								execute_save();
							})


						</script>
					<%
					
   					
				}
				else
				{
					%>
						<script type="text/javascript">
							$(document).ready(function()
							{
								swal("Success","File Uploadeds","success");
							})

						</script>
					<%
				}
				
			}
			catch (Exception e)
			{
				out.print(e);

				%>
					<script type="text/javascript">
						$(document).ready(function()
						{
							$.notify({
								      icon: "warning",
								      message: "Oops! An error occured during the uploading process of your main file!"+"<br>"+"Kindly check your file, it might be <u><strong>corrupted</strong></u> or the filename contains <u><strong>special characters</strong></u>."

								  },{
								      type: 'danger',
								      timer: 4000,
								      placement: {
								          from: 'top',
								          align: 'right'
								      }
								  });
						})

					</script>
				<%
			}
		}
	}
}
%>
</body>
</html>

