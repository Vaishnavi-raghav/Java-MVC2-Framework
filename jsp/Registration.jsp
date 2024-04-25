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
<script type="text/javascript" th:src="@{/JS/credentialsvalidate.js}"></script>
<script type="text/javascript" th:src="@{/JS/Captcha.js}"></script> 

</head>

<body >
	
<div class="container-fluid">	
<nav class="navbar bg-body-tertiary" style="background-color: white;">
	


    <a class="navbar-brand" id="a1"><img src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9d/Logo_NPL_india.svg/1200px-Logo_NPL_india.svg.png" style="width:120px;height:120px;"></a>
<!--  <a href="https://www.india.gov.in/"> <img src="https://www.hranker.com/blog/wp-content/uploads/2021/03/government-of-india.jpg" style="height:65px; width:80px;margin-right:20px;"></a>-->
   <h1 style="text-align:left;"><b><span style="color: #000080;">CSIR-NPL</span></b></h1> 
      
      </nav>
      </div>
     
<div class="container" >

  <div class="row justify-content">
  
  
  <div class="alert alert-info">
  <h5 class="card-title" style="text-align: center;"><b><span style="color: #000080;">DCC Registration</b></span></h5>
  <div class="col col-md-12">
</div>
 </br>
            <h3 style="color:green;"><center><%=ServletUtility.getSuccessMessage(request)%></center></h3>
           <h3 style="color:red;"><center> <%=ServletUtility.getErrorMessage(request)%></center></h3>
   <form class="row g-2 needs-validation" action="<%=JWAView.AdminRegCTL%>" method="post"style="padding:2px;">
   
   
   <div class="col-md-3">
    <label for="validationCustom05" class="form-label">Title<span style="color:red">*</span></label>
     <select class="form-select" th:field="*{Title}"   th:classappend="${#fields.hasErrors('Title')}?'is-invalid':''" id="validationCustom01" name="title">
     <div th:each="e:${#fields.errors('Title')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
  
      <option selected disabled value="">Choose...</option>
      <option value="Mr.">Mr.</option>
       <option value="Mrs.">Mrs.</option>
        <option value="Ms.">Ms.</option>
        </select>
        </div>
  <div class="col-md-4">
    <label for="validationCustom01" class="form-label">First name<span style="color:red">*</span></label>
    <input type="text" th:field="*{firstname}" th:classappend="${#fields.hasErrors('firstname')}?'is-invalid':''" class="form-control" id="validationCustom02"  name="First_Name">
     <div th:each="e:${#fields.errors('firstname')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
  
  </div>
  <div class="col-md-4">
    <label for="validationCustom02" class="form-label">Last name<span style="color:red">*</span></label>
    <input type="text"   th:field="*{lastname}" th:classappend="${#fields.hasErrors('lastname')}?'is-invalid':''" class="form-control" id="validationCustom03"  name="Last_name">
    <div th:each="e:${#fields.errors('lastname')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
  </div>
 
 
  
   <div class="col-md-4">
    <label for="validationCustom03" class="form-label">Your Employee Id<span style="color:red">*</span></label>
    <input type="text" th:field="*{employeeregistrationnumber}" th:classappend="${#fields.hasErrors('employeeregistrationnumber')}?'is-invalid':''" class="form-control" id="validationCustom010" placeholder="EmployeeRegistrationNumber" name="EmployeeRegistrationNumber">
 <div th:each="e:${#fields.errors('employeeregistrationnumber')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
  </div>

  <div class="col-md-4">
    <label for="validationCustom02" class="form-label">Department<span style="color:red">*</span></label>
    <input type="text"  th:field="*{department}" class="form-control"  id="validationCustom03"  name="Department">
  
  </div>
 
   <div class="col-md-5">
    <label for="validationCustom03" class="form-label">Contact No<span style="color:red">*</span></label>
    <input type="text"  th:field="*{contactno}"class="form-control"  id="contactno" name="ContactNo" >
    </div>
  <div class="col-md-5">
    <label for="validationCustom03" class="form-label">Alternate Contact Number(if any)</label>
    <input type="text" class="form-control"  name="contactno" >
  </div>
   <div class="col-md-6">
    <label for="validationCustom03" class="form-label">UserName/Email<span style="color:red">*</span></label>
    <input type="text" th:field="*{emailid}" th:classappend="${#fields.hasErrors('emailid')}?'is-invalid':''" class="form-control" id="email" name="emailid" >
   <div th:each="e:${#fields.errors('emailid')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
  </div>
  <div class="col-md-6">
    <label for="validationCustom03" class="form-label">Confirm Email<span style="color:red">*</span></label>
    <input type="text" class="form-control"  id="confirmemail" onblur="check_email();" >
  </div>
   <div class="col-md-3">
    <label for="validationCustom03" class="form-label">Password<span style="color:red">*</span></label>
    <input type="password" th:field="*{password}" th:classappend="${#fields.hasErrors('password')}?'is-invalid':''" class="form-control" id="password" name="Password" >
   <div th:each="e:${#fields.errors('password')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
  
  </div>
   <div class="col-md-3">
    <label for="validationCustom03" class="form-label">Confirm Password<span style="color:red">*</span></label>
    <input type="password" class="form-control"  id="confirmpassword" onchange="check_pass();" >
  </div>
  <!--<div class="col col-md-4">
     <div id="captcha" style="width:2px;margin-top:-15px;">
    </div>
    <input type="text" id="inputtypetext1" class="form-control" placeholder="Captcha" onchange="validateCaptcha()">
    </div>-->
  <div class="col-12">
    <button class="btn btn-primary" name="myButton" type="submit"  value="Register" id="submit">Register</button>
    
    
    <a href="<%=JWAView.LoginCTL%>"> Already Registered?LogIn </a>
  </div>
  
 </form>
  </div>
</div>
</div>
</body>
</html>