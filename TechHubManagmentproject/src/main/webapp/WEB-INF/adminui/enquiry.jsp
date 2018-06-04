
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
  </div>

 

<!-- half row ended-->
    <div class="col-lg-6 col-sm-6 col-sx-6">
    <div class="form-group">
      <label for="Age">Contact:</label>
      <input type="text" class="form-control"  placeholder="Enter Contact" name="contact">
    </div>
  </div>
</div>


  <!--end-->
    <div class="row">
            <div class="col-lg-6 col-sm-6 col-sx-6">
    <div class="form-group">
      <label for="id">College:</label>
      <input type="text" class="form-control" placeholder="Enter College Name" name="college">
    </div>
  </div>

<!-- half row ended--> 
    <div class="col-lg-6 col-sm-6 col-sx-6">
    <div class="form-group">
      <label for="Name">University:</label>
      <input type="text" class="form-control"  placeholder="Enter University Name" name="university">
    </div>
  </div>
</div>

<div class="row">
            <div class="col-lg-12 col-sm-12 col-sx-12">
    <div class="form-group">
      <label for="id">Address:</label>
      <textarea class="form-control" placeholder="Enter Your Address" name="address">
      </textarea>
    </div>
  </div>


</div>

  
<div class="row">
            <div class="col-lg-6 col-sm-6 col-sx-6">
    <div class="form-group">
      <label for="Gym">Type</label>
    
                <select class="form-control select2" name="candidatetype" style="width: 100%;">
                    
    <option value="Fresher">Fresher</option>
    <option value="Working">Working</option>
    <option value="Student">Student</option>
    <option value="JobSeeker">JobSeeker</option>
                  
                </select>
              </div>
  </div>
  <div class="col-lg-6 col-sm-6 col-sx-6">
    <div class="form-group">
      <label for="Gym">Reference</label>
    
                <select class="form-control select2" name="reference" style="width: 100%;">
             <option value="Morning">Whatsapp</option>
             <option value="Evening">Facebook</option>
             <option value="Evening">Friends</option>
             <option value="Evening">Workshop Or Seminar</option>
             <option value="Evening">Any Other Marketing</option>
           
             
    </select>
              </div>
  </div>
   </div>

    <div class="row">
            <div class="col-lg-6 col-sm-6 col-sx-6">
    <div class="form-group">
      
     &nbsp;&nbsp;&nbsp;&nbsp;<label for="Gender">Batch Type:</label><br>
      <label class="radio-inline">
      &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="batchtype" value="Hordings">Weekend
    </label>
    <label class="radio-inline">
      &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="batchtype" value="News Paper">Week Days
    </label><br>
    
    </div>
    
    
  </div>
  
          <div class="col-lg-6 col-sm-6 col-sx-6">
    <div class="form-group">
      
     &nbsp;&nbsp;&nbsp;&nbsp;<label for="Gender">Courses:</label><br>
      <label class="radio-inline">
      &nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" name="courseid" value="JAVA"> &nbsp;&nbsp;JAVA
    </label>&nbsp;&nbsp;&nbsp;&nbsp;
    <label class="radio-inline">
      &nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" name="courseid" value="PHP"> &nbsp;&nbsp;PHP
    </label><br>
    
    </div>
    
    
  </div>
  
  </div>

<!-- third row-->
<div class="row">   
  <div class="col-lg-12 col-sm-12 col-sx-12">
    <div class="form-group">
    <button type="submit" name="sub" class="btn btn-primary" style="margin-left: 50px;">Submit</button>
     </div>
   </div>
 </div>
</div>
</div>
</form>
</div>
</body>
</html>
