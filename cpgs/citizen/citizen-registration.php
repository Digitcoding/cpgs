<?php
    session_start();
    error_reporting(0);
    include('../includes/dbconn.php');
    if(strlen($_SESSION['emplogin'])==0){   
        header('location:../index.php');
    } else {
    $eid=$_SESSION['emplogin'];
    if(isset($_POST['update'])){

    $fname=$_POST['firstName'];
    $lname=$_POST['lastName'];   
    $gender=$_POST['gender']; 
    $email=$_POST['email'];
    $password=$_POST['password'];
    $dob=$_POST['dob']; 
    $department=$_POST['department']; 
    $address=$_POST['address']; 
    $city=$_POST['city']; 
    $country=$_POST['country']; 
    $mobileno=$_POST['mobileno']; 
    $sql="INSERT INTO tblemployees(FirstName,LastName,Gender,Dob,Department,Address,City,Country,Phonenumber,EmailId,Password) VALUES(:fname,:lname,:gender,:dob,:department,:address,:city,:country,:mobileno,:email,:password)";
    $query = $dbh->prepare($sql);
    $query->bindParam(':fname',$fname,PDO::PARAM_STR);
    $query->bindParam(':lname',$lname,PDO::PARAM_STR);
    $query->bindParam(':password',$password,PDO::PARAM_STR);
    $query->bindParam(':gender',$gender,PDO::PARAM_STR);
    $query->bindParam(':dob',$dob,PDO::PARAM_STR);
    $query->bindParam(':department',$department,PDO::PARAM_STR);
    $query->bindParam(':address',$address,PDO::PARAM_STR);
    $query->bindParam(':city',$city,PDO::PARAM_STR);
    $query->bindParam(':country',$country,PDO::PARAM_STR);
    $query->bindParam(':mobileno',$mobileno,PDO::PARAM_STR);
    $query->bindParam(':email',$email,PDO::PARAM_STR);
    $query->execute();
    $msg="Registered Successfully";
    } ?>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>cgsp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="../assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/themify-icons.css">
    <link rel="stylesheet" href="../assets/css/metisMenu.css">
    <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../assets/css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- Start datatable css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
    <!-- others css -->
    <link rel="stylesheet" href="../assets/css/typography.css">
    <link rel="stylesheet" href="../assets/css/default-css.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
    <link rel="stylesheet" href="../assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
    <style>
        .inn{
            padding-left:300px;
            padding-right:300px;
        }
 .register:before {
    content: "";
    position: absolute;
    height: 150%;
    width: 97%;
    background: #fcfcff;
    border-radius: 50%;
    left: -42%;
    z-index: -1;
    top: -47%;
    box-shadow: inset 0 0 51px rgba(0, 0, 0, 0.1);
}

.register {
    background: orangered;
    position: relative;
    z-index: 1;
    /* overflow: hidden; */
}
.login-form-head {
    text-align: center;
    margin:20px;
    color:orangered;
    background: none !important;
    /* padding: 50px; */
}
.login-form-head h4{
    text-align: center;
    color:black;
}
.login-form-head p{
    text-align: center;
    color:black;
}

 </style>
</head>

<body class="register">
<div class="login-form-head">
                        <h4>Citizen Registration Panel</h4>
                        <p>Central Grievance Management System</p>
                       
                    </div>
           
                      <div>
                        <div class="inn">
                                <div class="card">
                                <form name="addemp" method="POST">

                                    <div class="card-body">
                                       
                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">First Name</label>
                                            <input class="form-control" name="firstName"  type="text" required id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Last Name</label>
                                            <input class="form-control" name="lastName"  type="text" autocomplete="off" required id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-email-input" class="col-form-label">Email</label>
                                            <input class="form-control" name="email" type="email" autocomplete="off" required id="example-email-input">
                                        </div>
                                        <div class="form-group">
                                            <label for="example-email-input" class="col-form-label">Password</label>
                                            <input class="form-control" name="password" type="password" autocomplete="off" required id="example-email-input">
                                        </div>
                                        <div class="form-group">
                                            <label class="col-form-label">Gender</label>
                                            <select class="custom-select" name="gender" autocomplete="off">
                                              
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                                <option value="Other">Other</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label for="example-date-input" class="col-form-label">D.O.B</label>
                                            <input class="form-control" type="date" name="dob" id="birthdate" >
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Contact Number</label>
                                            <input class="form-control" name="mobileno" type="tel"  maxlength="10" autocomplete="off" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">User ID</label>
                                            <input class="form-control" name="empcode" type="text" autocomplete="off" required  id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Country</label>
                                            <input class="form-control" name="country" type="text"   autocomplete="off" required id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Address</label>
                                            <input class="form-control" name="address" type="text"   autocomplete="off" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">City</label>
                                            <input class="form-control" name="city" type="text"  autocomplete="off" required>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-form-label">Selected Services</label>
                                            <select class="custom-select" name="department" autocomplete="off">
                                            <option ><?php echo htmlentities($result->Department);?></option>

                                            <?php $sql = "SELECT DepartmentName from tbldepartments";
                                                $query = $dbh -> prepare($sql);
                                                $query->execute();
                                                $results=$query->fetchAll(PDO::FETCH_OBJ);
                                                $cnt=1;
                                                if($query->rowCount() > 0){
                                                foreach($results as $resultt)
                                                {   
                                            ?>  
                                                <option ><?php echo htmlentities($resultt->DepartmentName);?></option>
                                        <?php }} ?>
                                        </select>
                                        </div>
                                        <button class="btn btn-primary" name="update" id="update" type="submit">Register</button>
                                        
                                    </div>
                                </form>
                            </div> 
                        </div>   
                            
                   
        
        <!-- main content area end -->
        <!-- footer area start-->
      
        <!-- footer area end-->
    </div>
    <!-- page container area end -->
    <!-- offset area start -->
    <div class="offset-area">
        <div class="offset-close"><i class="ti-close"></i></div>
        
        
    </div>
    <!-- offset area end -->
    <!-- jquery latest version -->
    <script src="../assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/owl.carousel.min.js"></script>
    <script src="../assets/js/metisMenu.min.js"></script>
    <script src="../assets/js/jquery.slimscroll.min.js"></script>
    <script src="../assets/js/jquery.slicknav.min.js"></script>

    <!-- Start datatable js -->
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>

    <!-- others plugins -->
    <script src="../assets/js/plugins.js"></script>
    <script src="../assets/js/scripts.js"></script>
</body>

</html>

<?php } ?> 