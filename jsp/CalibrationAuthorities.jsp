<!DOCTYPE html>
<html xmlns:th="http://www.thymleaf.org">
<%@ page import="dccweb.controller.JWAView" %>
<head>
<%@ page import="dccweb.controller.JWAView" %>
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
.Section {
  text-align: center;
  max-width: 950px;
  margin: 0 auto;
  margin-top: 20px;
  display:flex;
}
 #ProgressBar {
  display: flex;
  justify-content: space-between;
  align-items: flex-end;
  width: 300px;
  margin: 0 auto;
  margin-bottom: 40px;
}
.step {
  text-align: center;
}
.text {
  margin-bottom: 10px;
  color: #0011ff;
}
.text {
  margin-bottom: 10px;
  color: #0011ff;
}.bullets {
  border: 1px solid #0011ff;
  height: 20px;
  width: 20px;
  border-radius: 100%;
  color: #0011ff;
  display: inline-block;
  position: relative;
  transition: background-color 500ms;
  line-height: 20px;
}

.bullets.completed {
  color: white;
  background-color: #0011ff;
}

.bullets.completed::after {
  content: "";
  position: absolute;
  right: -105px;
  bottom: 10px;
  height: 5px;

  background-color: #0011ff;
}
canvas{
  /*prevent interaction with the canvas*/
  pointer-events:none;

}
#progress {
  position: relative;
  margin-bottom: 30px;   
}
#progress-bar {
  position: absolute;
  background: lightseagreen;
  height: 5px;
  width: 0%;
  top: 50%;
  left: 0;
}
#progress-num {
  margin: 0;
  padding: 0;
  list-style: none;
  display: flex;
  justify-content: space-between;
}
#progress-num::before {
  content: "";
  background-color: lightgray;
  position: absolute;
  top: 50%;
  left: 0;
  height: 5px;
  width: 100%;
  z-index: -1;
}
#progress-num .step {
  border: 3px solid lightgray;
  border-radius: 100%;
  width: 25px;
  height: 25px;
  line-height: 25px;
  text-align: center;
  background-color: #fff;
  font-family: sans-serif;
  font-size: 14px;    
  position: relative;
  z-index: 1;
}
#progress-num .step.active {
  border-color: lightseagreen;
  background-color: lightseagreen;
  color: #fff;
}
</style>
<script type="text/javascript" th:src="@{/JS/credentialsvalidate.js}"></script>
<script type="text/javascript" th:src="@{/JS/Captcha.js}"></script>
<script type="text/javascript">
function bar()
{
	
	const  Btnprevious  =  document.getElementById('Previous');
	const  Btnnext  =  document.getElementById('Next');
	const  bullets  =  [...document.querySelectorAll('.bullets')]; 
	let current = 0;
	const max = 2;
	Btnprevious.style.display  =  'none';
	Btnsubmit.style.display  =  'none'; 
	Btnnext.addEventListener('click',  ()  =>  {
	    bullets[current].classList.add('completed');
	    current  +=  1;
	    Btnprevious.style.display  =  'inline';
	    if  (current  ===  max)  {
	        Btnnext.style.display  =  'flex';
	        Btnsubmit.style.display  =  'none';
	    }
	}); 
	Btnprevious.addEventListener('click',  ()  =>  {
	    bullets[current  -  1].classList.remove('completed');
	    current  -=  1;
	    Btnsubmit.style.display  =  'none';
	    Btnnext.style.display  =  'inline';
	    if  (current  ===  0)  {
	        Btnprevious.style.display  =  'none';
	    }
	}); 
	}

</script>

</head>

<body>

<div class="container-fluid">	
<nav class="navbar bg-body-tertiary" style="background-color: white;">
	

    <a class="navbar-brand" id="a1"><img src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9d/Logo_NPL_india.svg/1200px-Logo_NPL_india.svg.png" style="width:120px;height:120px;"></a>
<!--  <a href="https://www.india.gov.in/"> <img src="https://www.hranker.com/blog/wp-content/uploads/2021/03/government-of-india.jpg" style="height:65px; width:80px;margin-right:20px;"></a>-->
   
      <a style="text-align: center;"><h4 style="color: black;"><b>CALIBRATION AUTHORITIES</b></h4></a>
   
   <h1 style="text-align:left;"><b><span style="color: #000080;">CSIR-NPL</span></b></h1> 
      
      </nav>
      </div>
      
      <div id="progress">
  <div id="progress-bar"></div>
  <ul id="progress-num">
    <li class="step active">1</li>
      <li class="step active">2</li>
        <li class="step active">3</li>
    <li class="step active">4</li>
      <li class="step active">5</li>
        <li class="step active">6</li>
          <li class="step active">7</li>
            <li class="step active">8</li>
              <li class="step">9</li>
		
		   </ul>
</div>
<div class="container">
  <div class="row justify-content">
 

  <div class="col col-md-12">
</div>

 <div class="alert alert-info">
 
   <form class="row g-2 needs-validation"  onsubmit="myButton.disabled = true; return true;"th:action="@{/dcc/dcc7register}" th:object="${addata}"  method="POST">
    
    <div class="container-fluid">
   <h4 style="color:black;">Head</h4>
   </div>
   <div class="col-md-6">
    <label for="validationCustom05" class="form-label">Name<span style="color:red">*</span></label>
     <input type="text"    class="form-control" id="validationCustom03" th:field="*{headpersonname}" th:classappend="${#fields.hasErrors('headpersonname')}?'is-invalid':''"  name="headpersonname">
   <div th:each="e:${#fields.errors('headpersonname')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
   
    </div>
  <div class="col-md-6">
    <label for="validationCustom01" class="form-label">Email-Id<span style="color:red">*</span></label>
    <input type="text" class="form-control" id="validationCustom02" th:field="*{headpersonemailid}" th:classappend="${#fields.hasErrors('headpersonemailid')}?'is-invalid':''"name="headpersonemailid">
  <div th:each="e:${#fields.errors('headpersonemailid')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
  
   </div>
   <div class="col-md-6">
    <label for="validationCustom01" class="form-label">Description(Position)<span style="color:red">*</span></label>
    <input type="text" class="form-control" id="validationCustom02" th:field="*{headpersonposition}" th:classappend="${#fields.hasErrors('headpersonposition')}?'is-invalid':''"name="headpersonposition">
  <div th:each="e:${#fields.errors('headpersonposition')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
  
   </div>
   <div class="col-md-3">
  <label for="validationCustom02" class="form-label">Main Signer<span style="color:red">*</span></label>
    <select class="form-select" aria-label="Default select example" id="country" th:field="*{issigner}"name="issigner">
        <option value="0" label="Select the option... " selected="selected">Select the Option ... </option>
       <option value="yes" label="yes">Yes</option>
            <option value="No" label="No">No</option>
           
            </select>
</div>
    <div class="container-fluid">
    <div class="row">
    
     <div class="col-md-6">
   <h4 style="color:black;"> <label for="validationCustom01" class="form-label">Calibrated By<span style="color:red">*</span></label></h4>
    <input type="text" class="form-control" id="validationCustom02" th:field="*{calibratedby}" th:classappend="${#fields.hasErrors('calibratedby')}?'is-invalid':''" name="calibratedby">
   <div th:each="e:${#fields.errors('calibratedby')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
   
   </div>
   
    <div class="col-md-6">
   <h4 style="color: black;"> <label for="validationCustom01" class="form-label">Checked By<span style="color:red">*</span></label></h4>
    <input type="text" class="form-control" id="validationCustom02" th:field="*{checkedby}"  th:classappend="${#fields.hasErrors('checkedby')}?'is-invalid':''"name="checkedby">
  <div th:each="e:${#fields.errors('checkedby')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
  
   </div>
    </div>
    </div>
  
 
   <div class="container-fluid">
  <div class="row">
   <div class="col-md-6">
   <h4 style="color: black;"> <label for="validationCustom01" class="form-label">In Charge<span style="color:red">*</span></label></h4>
    <input type="text" class="form-control" id="validationCustom02" th:field="*{incharge}" th:classappend="${#fields.hasErrors('incharge')}?'is-invalid':''"name="incharge">
   <div th:each="e:${#fields.errors('incharge')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
   
   </div>
   <div class="col-md-3">
 <h4 style="color:black;"> <label for="validationCustom02" class="form-label">Product Status<span style="color:red">*</span></label></h4>
    <select class="form-select" aria-label="Default select example" id="country" th:field="*{productstatus}"name="productstatus">
        <option value="0" label="Select the option... " selected="selected">Select the Option ... </option>
       <option value="pass" label="pass">Pass</option>
            <option value="fail" label="fail">Fail</option>
           </select>
</div>
  </div>
  </div>

 <div class="col-12" style="text-align: center;">
   <button class="btn btn-primary" name="myButton" type="button" style="justify-content: flex-end;" value="Register" id="submit" onclick="window.location.href='<%=JWAView.DCC6CTL%>'">Previous</button>
   <button class="btn btn-warning" name="myButton" type="submit"  value="Register" id="submit">Save</button>  
   <button class="btn btn-success" name="myButton" type="button" style="justify-content: flex-end;" value="Register" id="submit" onclick="window.location.href='<%=JWAView.DCCMeasureCTL%>'">Next</button>
   
  </div>


</body>
</html>
