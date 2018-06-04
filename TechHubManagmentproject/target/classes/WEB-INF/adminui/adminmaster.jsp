<!DOCTYPE html>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Tech HUB Admin Panel</title>
       

         <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
         <link href="<c:url value="/resources/css/style4.css" />" rel="stylesheet">
    </head>
    <body>



        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>GIRI'S Tech-HUB</h3>
                    <strong>AG</strong>
                </div>

                <ul class="list-unstyled components">
                    <li class="active">
                        <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">
                            <i class="glyphicon glyphicon-home"></i>
                          Enquiry Details
                        </a>
                        <ul class="collapse list-unstyled" id="homeSubmenu">
                            <li><a href="enquiry">New Enquiry</a></li>
                        
                            <li><a href="viewenq">View Enquiry</a></li>
                        </ul>
                    </li>
                     <li>
                        <a href="mpayment.php">
                            <i class="glyphicon glyphicon-briefcase"></i>
                           Member's Payment
                    
                   </a>
                    </li>
                    <!--<li>
                        <a href="#">
                            <i class="glyphicon glyphicon-briefcase"></i>
                            About
                        </a>-->
<li>
                        <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">
                            <i class="glyphicon glyphicon-duplicate"></i>
                            Trainer Information
                        </a>
                        <ul class="collapse list-unstyled" id="pageSubmenu">
                            <li><a href="trainerinfo.php">Add Information </a></li>
                        
                            <li><a href="#">View Information</a></li>
                    
                    
                    </ul>
                     <li>
                        <a href="tpayment.php">
                            <i class="glyphicon glyphicon-briefcase"></i>
                            Trainers Salary 
                    
                   </a>
                    </li>
                   



                    <li>
                        <a href="gymtypemgmt.php">
                            <i class="glyphicon glyphicon-briefcase"></i>
                            Add Gym Type
                    
                   </a>
                    </li>
                     <li>
                        <a href="packagedetails.php">
                            <i class="glyphicon glyphicon-briefcase"></i>
                            Add  Gym Package
                    
                   </a>
                    </li>
                    <li>
                        <a href="shiftmgmt.php">
                            <i class="glyphicon glyphicon-briefcase"></i>
                            Add Shift
                    
                   </a>
                    </li>
                     <li>
                        <a href="mattendance.php">
                            <i class="glyphicon glyphicon-briefcase"></i>
                            Member Attendance
                    
                   </a>
                    </li>
                     <li>
                        <a href="tattendance.php">
                            <i class="glyphicon glyphicon-briefcase"></i>
                            Trainer Attendance
                    
                   </a>
                    </li>
                    <li>
                        <a href="enquiry.html">
                            <i class="glyphicon glyphicon-briefcase"></i>
                               Enquiry Form 
                   </a>
                    </li>
                       <li>
                        <a href="gallery.php">
                            <i class="glyphicon glyphicon-briefcase"></i>
                               Add Gallery 
                   </a>
                    </li>
                </ul>
            

               
            </nav>




            <!-- Page Content Holder -->
       
            <div id="content">


                <nav class="navbar navbar-default">
                    
                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                                
                            </button>
                      

                 

                </nav>


                
                 
                </div>
       
               <div class="button">
                       <button type="button" class="btn btn-info active" style="float:right;">Log Out</button>
                </div>
                
         


            
  


<!-- logout button-->
  
<!--end-->



        <!-- jQuery CDN -->
         <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

         <script type="text/javascript">
             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                 });
             });
         </script>
    </body>
</html>
