
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Enquiry Details</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="style4.css">
</head>
<body>
<jsp:include page="adminmaster.jsp"></jsp:include>
<div class="container">
    <form name="enquiry" method="POST" action="save">
        <div class="panel panel-default">
      <div class="panel-heading"><strong>Enquiry Details</strong></div>
      <div class="panel-body">
        <!--start-->
        <div class="row">
            <div class="col-lg-12 col-sm-12 col-sx-12">
    <div class="form-group">
      <label for="Name">Name:</label>
      <input type="text" class="form-control"  placeholder="Enter Name" name="name">
    </div>
  </div>

<!-- half row ended-->
    
</div>
  <!--end-->
  <div class="row">
    <div class="col-lg-6 col-sm-6 col-sx-6">
       <div class="form-group">
     <label for="Age">Email:</label>
      <input type="text" class="form-control"  placeholder="Enter Email" name="email">
  
    </div>
  </div></div>
  <!--end-->
  <div class="row">
    <div class="col-lg-6 col-sm-6 col-sx-6">
       <div class="form-group">
     <label for="Age">College:</label>
      <input type="text" class="form-control"  placeholder="Enter College" name="college">
  
    </div>
  </div>
  

 
<!-- <div class="row">
    <div class="col-lg-6 col-sm-6 col-sx-6">
       <div class="form-group">
     <label for="Age">Course:</label>
      <input type="text" class="form-control"  placeholder="Enter Course" name="cource">
  
    </div>
  </div> -->
  
  <!-- half row ended--> 
    <div class="col-lg-6 col-sm-6 col-sx-6">
    <div class="form-group">
      <label for="Name">status:</label>
      <input type="text" class="form-control"  placeholder="status" name="status">
    </div>
  </div>

  
  <div class="row">
    <div class="col-lg-6 col-sm-6 col-sx-6">
       <div class="form-group">
     <label for="Age">University:</label>
      <input type="text" class="form-control"  placeholder="Enter University" name="university">
  
    </div>
  </div>
  
  
  <div class="row">
    <div class="col-lg-6 col-sm-6 col-sx-6">
       <div class="form-group">
     <label for="Age">Address:</label>
      <input type="text" class="form-control"  placeholder="Enter Address" name="address">
  
    </div>
  </div>
  
  
  
  
  <!-- <div class="row">
    <div class="col-lg-6 col-sm-6 col-sx-6">
       <div class="form-group">
     <label for="Age">Reference:</label>
      <input type="text" class="form-control"  placeholder="Enter Reference" name="reference">
  
    </div>
  </div> -->
  
  
  
  <div class="col-lg-6 col-sm-6 col-sx-6">
							<div class="form-group">
								<label for="Gym">Reference</label> <select
									class="form-control select2" name="reference"
									style="width: 100%;">
									<option value="Whatsapp">Whatsapp</option>
									<option value="Facebook">Facebook</option>
									<option value="Friends">Friends</option>
									<option value="Workshop Or Seminar">Workshop Or Seminar</option>
									<option value="Any Other Marketing">Any Other Marketing</option>


								</select>
							</div>
						</div>
  
  
  
  
  
  
  
  <div class="row">
            <div class="col-lg-6 col-sm-6 col-sx-6">
    <div class="form-group">
      <label for="Gym">Candidatetype </label>
    
                <select class="form-control select2" name="candidatetype" style="width: 100%;">
                    
    <option value="Fresher">Fresher</option>
    <option value="Working">Working</option>
    <option value="Student">Student</option>
    <option value="JobSeeker">JobSeeker</option>
                  
                </select>
              </div>
  </div>
  
  
  <div class="row">
            <div class="col-lg-6 col-sm-6 col-sx-6">
    <div class="form-group" style="width="100%;">
      
     &nbsp;&nbsp;&nbsp;&nbsp;<label for="Gender">Batch Type:</label><br>
      <label class="radio-inline">
      &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="batchtype" value="Weekend">Weekend
    </label>
    <label class="radio-inline">
      &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="batchtype" value="Week Days">Week Days
    </label><br>
    
    </div>
     </div>
     
     
     
     
     
     
     <div class="col-lg-6 col-sm-6 col-sx-6">
							<div class="form-group">

								&nbsp;&nbsp;&nbsp;&nbsp;<label for="Gender">Courses:</label><br>
								<label class="radio-inline"> &nbsp;&nbsp;&nbsp;&nbsp; <input
									type="checkbox" name="cource" value="JAVA">
									&nbsp;&nbsp;JAVA
								</label>&nbsp;&nbsp;&nbsp;&nbsp; <label class="radio-inline">
									&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" name="cource"
									value="PHP"> &nbsp;&nbsp;PHP
								</label><br>

							</div>


						</div>
     
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
<!-- half row ended-->
    <div class="col-lg-6 col-sm-6 col-sx-6">
    <div class="form-group">
      <label for="Age">Contact:</label>
      <input type="text" class="form-control"  placeholder="Enter Contact" name="contact">
    </div>
  </div>
</div>


  







  

<!-- third row-->
<div class="row">   
  <div class="col-lg-12 col-sm-12 col-sx-12">
    <div class="form-group">
    <button type="submit" name="sub" class="btn btn-primary" style="margin-left: 50px;">Submit</button>
     </div>
   
</form>
</div>
</body>
</html>
