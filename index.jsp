<html>
<%@ page import="dccweb.controller.JWAView" %>  
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<link rel="stylesheet" href="File1.css" type="text/css">

<nav class="navbar bg-body-tertiary" style="background-color: white;">
<div class="container-fluid" style="background-color:white;">
  <div class="row">
  <div class="col">
    <a class="navbar-brand" id="a1"><img src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9d/Logo_NPL_india.svg/1200px-Logo_NPL_india.svg.png" style="width:120px;height:120px;"></a>
    
     <!--  <a href="https://www.india.gov.in/"> <img src="https://www.hranker.com/blog/wp-content/uploads/2021/03/government-of-india.jpg" style="height:65px; width:80px;margin-right:20px;"></a>-->
    </div>
    </div>
    
    
<!-- <h1><center><b><span style="color: #000080;">CSIR-NPL</span></b></center></h1> -->



   <ul class="nav justify-content-end">
 
  <li class="nav-item">
    <a class="nav-link" href="<%=JWAView.AdminRegCTL%>"><button type="button" class="btn btn-primary" style="background-color: #191970;border:none;">Register</button></a>
  </li>
 
  <li class="nav-item">
    <a class="nav-link" href="<%=JWAView.LoginCTL%>"><button type="button" class="btn btn-success" style="border:none;">LogIn</button></a>
  </li>
 
 </ul>
        
      </div>
      </nav>
      <div class="bg">
      </div>

</head>

<body>
<img src ="/DCCWEB/image/CSIRcover.jpg" class="d-block w-100" alt="..." height="550px">

</body>
</html>
