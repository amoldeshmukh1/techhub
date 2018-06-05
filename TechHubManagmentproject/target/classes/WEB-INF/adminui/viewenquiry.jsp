<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<%@page import="techhub.admin.enquiry.enqmodel.EnquiryModel" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Enquiry Details</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<jsp:include page="adminmaster.jsp"></jsp:include>
	
	<c:set var="listEnq" scope="session" value="${enqData}"/>
	<div class="container">
		<form name="enquiry" method="POST" action="save">
			<div class="panel panel-default">
				<div class="panel-heading">
					<strong>Enquiry Details</strong>
				</div>
				<div class="panel-body">
				 <center>
            <div class="input-group" style="width: 400px;align-items: center" >
             <input type="text" class="form-control" placeholder="Search here..." name="search" id="search">
                             <div class="input-group-btn">
                                 <button class="btn btn-default" type="submit" onclick="searchProduct()">
                             <i class="glyphicon glyphicon-search"></i>
                             </button>
                             </div>
            </div>
</center>
					<div class="table-responsive">
						<table class="table table-bordered">
						
							<tr>

								<th>Name</th>
								<th>Email</th>

								<th>Contact</th>
								<th>Course</th>
								
								


								
								<th>View Details</th>

							</tr>
   <%
   
    java.util.List enqList=(java.util.List)session.getAttribute("listEnq");
    java.util.Iterator iterator=enqList.iterator();
    while(iterator.hasNext())
    {
    	EnquiryModel enquiry=(EnquiryModel)iterator.next();
   %>
   
							<tr>

								<td><%=enquiry.getName()%></td>
								<td><%=enquiry.getEmail() %></td>

								<td><%=enquiry.getContact() %></td>
								<td><%=enquiry.getCource() %></td>
								
								


								<td><a href=''>Update</a></td>
								<td><a href=''>View Details</a></td>

							</tr>
   
   <% 
    }
   %>

						</table>
					</div>

				</div>
			</div>


		</form>
	</div>
</body>
</html>
