<!DOCTYPE html>
<html xmlns:th="http://www.thymleaf.org">
<%@ page import="dccweb.controller.JWAView" %>
 <%@ page import="dccweb.utility.ServletUtility" %>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
<style type="text/css">
#inputtypetext1 {

    display: flex;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top:-10px;
}
button{
  background-color: #4CAF50;
    border: none;
    color: white;
    padding: 12px 30px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
 canvas{
  /*prevent interaction with the canvas*/
  pointer-events:none;

}
</style>

</head>

<body>

<div class="container-fluid">	
<nav class="navbar bg-body-tertiary" style="background-color: white;">
	

    <a class="navbar-brand" id="a1"><img src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9d/Logo_NPL_india.svg/1200px-Logo_NPL_india.svg.png" style="width:120px;height:120px;"></a>
<!--  <a href="https://www.india.gov.in/"> <img src="https://www.hranker.com/blog/wp-content/uploads/2021/03/government-of-india.jpg" style="height:65px; width:80px;margin-right:20px;"></a>-->
       <a style="text-align: center;"><h4 style="color: black;"><b> LOGIN</b></h4></a>
   <h1 style="text-align:left;"><b><span style="color: #000080;">CSIR-NPL</span></b></h1> 
      
      </nav>
      </div>
  <br><br>   
<div class="container" >

  <div class="row justify-content"> 
  

 </div>
 
  <main class="login-form">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-8">
        <div class="card">
          <div class="card-header">
          <center> <b> Enter your Login Details</b></center>
          </div>

<br>
<h4 style="color: red;"><b><center><%= ServletUtility.getErrorMessage(request) %></center></b></h4>
            <h4 style="color: green;"><b><center><%=ServletUtility.getSuccessMessage(request)%></center></b></h4>
<br>

 
 <form class="row g-2 needs-validation" action="<%=JWAView.LoginCTL%>" method="post"style="padding:2px;">



          <br class="card-body">
<br>
<br>

              <div class="form-group row">
                <label for="email_address" 
                  class="col-md-4 col-form-label text-md-right"> Login Id<font color="red">*</font></label>
                <div class="col-md-6">
                  <input type="text" id="login"  class="form-control" placeholder="Enter Login ID/ Employee ID"
                    name="login" value="" >
                    <font  color="red"></font>
                </div>
              </div>

              <div class="form-group row">
                <label for="password"
                  class="col-md-4 col-form-label text-md-right"> Password<font color="red">*</font></label>
                <div class="col-md-6">
                  <input type="password" id="password" class="form-control" placeholder="Enter Password"
                    name="password" value="" >
                    <font color="red"> </font>
                </div>
              </div>

</br><br>
              <div style="text-align: center;">
                <input type="submit" class="btn btn-primary " name="operation" value="Login"></br>
             <br>
             
               <a href="<%=JWAView.AdminRegCTL%>"> New User?Register Here </a>
               
              </div>
            </form>
          </div>

        </div>
      </div>
    </div>
  </div>
 
 



</body>
</html>
