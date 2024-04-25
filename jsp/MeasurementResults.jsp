<!DOCTYPE html>
<html xmlns:th="http://www.thymleaf.org">
<%@ page import="dccweb.controller.JWAView" %>
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
	function calculatevalue()
	{
		var min=Integer.parseInt(document.getElementById("tempmin").value);
		var max=Integer.parseInt(document.getElementById("tempmax").value);
		if(max<min)
			{
			alert("max should not be greater than min");
			}
	}

</script>

</head>

<body>

<div class="container-fluid">	
<nav class="navbar bg-body-tertiary" style="background-color: white;">
	

    <a class="navbar-brand" id="a1"><img src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9d/Logo_NPL_india.svg/1200px-Logo_NPL_india.svg.png" style="width:120px;height:120px;"></a>
<!--  <a href="https://www.india.gov.in/"> <img src="https://www.hranker.com/blog/wp-content/uploads/2021/03/government-of-india.jpg" style="height:65px; width:80px;margin-right:20px;"></a>-->
   
      <a style="text-align: center;"><h4 style="color: black;"><b>MEASUREMENTS RESULTS</b></h4></a>
   
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
            <li class="step">8</li>
              <li class="step">9</li>
		
		   </ul>
</div>

<div class="container" style="width:1000px;">
  <div class="row justify-content">
 
  <div class="alert alert-info">
   <form class="row g-2 needs-validation"  onsubmit="myButton.disabled = true; return true;calculatevalue();" th:action="@{/dcc/dcc6register}"  th:object="${mresult}"method="POST">
 
 
   <div class="col-md-6">
    <label for="validationCustom03" class="form-label">Method Used<span style="color:red">*</span></label>
    <input type="text"  class="form-control"  id="contactno"  th:field="*{methodused}" th:classappend="${#fields.hasErrors('methodused')}?'is-invalid':''"name="methodused" >
    <div th:each="e:${#fields.errors('methodused')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div> 
    </div>
    <div class="col-md-6">
    <label for="validationCustom03" class="form-label">Measuring Equipment Name<span style="color:red">*</span></label>
    <input type="text"  class="form-control"  id="contactno" th:field="*{measurementequipmentname1}" th:classappend="${#fields.hasErrors('measurementequipmentname1')}?'is-invalid':''"name="measurementequipmentname1" >
    <div th:each="e:${#fields.errors('measurementequipmentname1')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div> 
    </div>
   <div class="col-md-12">
   <div class="container">
   <a style="text-align: center;"><h3>Influence Conditions</h3></a>
  <div class="row">
   <div class="col">
    <label for="validationCustom03" class="form-label">Temperature Min.<span style="color:red">*</span></label>
     <input type="number"  class="form-control" id="tempmin"  th:field="*{temperaturemin}" th:classappend="${#fields.hasErrors('temperaturemin')}?'is-invalid':''"name="temperaturemin" >
    <div th:each="e:${#fields.errors('temperaturemin')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
    
    </div>
    <div class="col">
    <label for="validationCustom03" class="form-label">Temperature Max.<span style="color:red">*</span></label>
     <input type="number"  class="form-control" id="tempmax" th:field="*{temperaturemax}" th:classappend="${#fields.hasErrors('temperaturemax')}?'is-invalid':''"name="temperaturemax" >
   <div th:each="e:${#fields.errors('temperaturemax')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
   
    </div>
    <div class="col">
    <label for="validationCustom03" class="form-label">Humidity Min.<span style="color:red">*</span></label>
     <input type="number"  class="form-control" id="hmmin" th:field="*{humiditymin}" th:classappend="${#fields.hasErrors('humiditymin')}?'is-invalid':''"name="humiditymin" >
   <div th:each="e:${#fields.errors('humiditymin')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
   
    </div>
    <div class="col">
    <label for="validationCustom03" class="form-label">Humidity Max.<span style="color:red">*</span></label>
     <input type="number"  class="form-control" id="hmmax" th:field="*{humiditymax}" th:classappend="${#fields.hasErrors('humiditymax')}?'is-invalid':''"name="humiditymax" >
   <div th:each="e:${#fields.errors('humiditymax')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
   
    </div>
  </div>
     -->
     </div>
    </div>
     </div>
    <div class="col-md-12">
    <label for="validationCustom03" class="form-label">Description<span style="color:red">*</span></label>
    <input type="text"  class="form-control" id="email" th:field="*{measurementresultdescription1}" th:classappend="${#fields.hasErrors('measurementresultdescription1')}?'is-invalid':''" name="measurementresultdescription1" >
    <div th:each="e:${#fields.errors('measurementresultdescription1')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
    
    </div>
  
  
   <div class="col-12" style="text-align: center;">
   <button class="btn btn-primary" name="myButton" type="button" style="justify-content: flex-end;" value="Register" id="submit" onclick="window.location.href='<%=JWAView.DCC5CTL%>'">Previous</button>
   
   <button class="btn btn-success" name="myButton" type="button" style="justify-content: flex-end;" value="Register" id="submit" onclick="window.location.href='<%=JWAView.DCC7CTL%>'">Next</button>
   
  </div>
  
 </form>
 </div>
  </div>
</div>





</body>
</html>
