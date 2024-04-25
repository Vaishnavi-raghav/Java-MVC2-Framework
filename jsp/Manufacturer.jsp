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

function calendarcal()
{
	var begin=document.getElementById("begindate").value;
	var end=document.getElementById("enddate").value;
	
	if(end<=begin)
		{
		alert("Please check the end date.It should not be equal to or less than the begin date");
		event.preventDefault();
		}
	else
		{
		window.href("/DCC3");
		}
		}
	

function bar()
{
	
	const progressBar = document.getElementById("progress-bar");
	const progressNext = document.getElementById("Next");
	const progressPrev = document.getElementById("Previous");
	const steps = document.querySelectorAll(".step");
	let active = 1;
	progressNext.addEventListener("click", () => {
		  active++;
		  if (active > steps.length) {
		    active = steps.length;
		  }
		  updateProgress();
		});

		progressPrev.addEventListener("click", () => {
		  active--;
		  if (active < 1) {
		    active = 1;
		  }
		  updateProgress();
		});
		const updateProgress = () => {
			  // toggle active class on list items
			  steps.forEach((step, i) => {
			    if (i < active) {
			      step.classList.add("active");
			    } else {
			      step.classList.remove("active");
			    }
			  });
			  // set progress bar width  
			  progressBar.style.width = 
			    ((active - 1) / (steps.length - 1)) * 100 + "%";
			  // enable disable prev and next buttons
			  if (active === 1) {
			    progressPrev.disabled = true;
			  } else if (active === steps.length) {
			    progressNext.disabled = true;
			  } else {
			    progressPrev.disabled = false;
			    progressNext.disabled = false;
			  }
			};
	}

</script>

</head>



<body >
<div class="container-fluid">	
<nav class="navbar bg-body-tertiary" style="background-color: white;">
	

    <a class="navbar-brand" id="a1"><img src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9d/Logo_NPL_india.svg/1200px-Logo_NPL_india.svg.png" style="width:120px;height:120px;"></a>
<!--  <a href="https://www.india.gov.in/"> <img src="https://www.hranker.com/blog/wp-content/uploads/2021/03/government-of-india.jpg" style="height:65px; width:80px;margin-right:20px;"></a>-->
   
      <a style="text-align: center;"><h4 style="color: black;"><b>MANUFACTURER AND ITEM INFORMATION</b></h4></a>
   
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
      <li class="step">5</li>
        <li class="step">6</li>
          <li class="step">7</li>
            <li class="step">8</li>
              <li class="step">9</li>
  </ul>
</div>


<div class="container" style="width:500px;">
  <div class="row justify-content">
 
  
   <div class="alert alert-info">
    <h4 style="text-align: center;color:black;">Manufacturer and Item Information</h4>
    
    
    
 <h3 style="color:green;"><center><%=ServletUtility.getSuccessMessage(request)%></center></h3>
  <h3 style="color:red;"><center> <%=ServletUtility.getErrorMessage(request)%></center></h3>
           
  <form class="row g-2 needs-validation" action="<%=JWAView.DCC3CTL%>" method="post"style="padding:2px;">
   
   <div class="col-md-12">
    <label for="validationCustom03" class="form-label">Item Name<span style="color:red">*</span></label>
    <input type="text"  class="form-control"  id="contactno" th:field="*{itemname}" th:classappend="${#fields.hasErrors('itemname')}?'is-invalid':''"  name="itemname" >
   <div th:each="e:${#fields.errors('itemname')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
    
    </div>
  <div class="col-md-12">
    <label for="validationCustom03" class="form-label">Manufacturer<span style="color:red">*</span></label>
    <input type="text" class="form-control"  th:field="*{manufacturer}" th:classappend="${#fields.hasErrors('manufacturer')}?'is-invalid':''"  name="manufacturer" >
  <div th:each="e:${#fields.errors('manufacturer')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
  
  </div>
   <div class="col-md-12">
    <label for="validationCustom03" class="form-label">Model No<span style="color:red">*</span></label>
    <input type="text"  class="form-control" id="email" th:field="*{modelno}"  th:classappend="${#fields.hasErrors('modelno')}?'is-invalid':''" name="modelno" >
    <div th:each="e:${#fields.errors('modelno')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
    
    </div>
    
    <div class="col-md-12">
    <label for="validationCustom03" class="form-label">Serial No<span style="color:red">*</span></label>
    <input type="text"  class="form-control" id="email" th:field="*{serialno}"  th:classappend="${#fields.hasErrors('serialno')}?'is-invalid':''"  name="serialno" >
    <div th:each="e:${#fields.errors('serialno')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
    
    </div>
  
<div class="col-12" style="text-align: center;">
   
    <button class="btn btn-primary" name="myButton" type="button" style="justify-content: flex-end;" value="Register" id="submit" onclick="window.location.href='<%=JWAView.DCC2CTL%>'">Previous</button>
   <button class="btn btn-warning" name="myButton" type="submit"  value="Register" id="submit">Save</button>  
   <button class="btn btn-success" name="myButton" type="button" style="justify-content: flex-end;" value="Register" id="submit" onclick="window.location.href='<%=JWAView.DCC4CTL%>'">Next</button>
   
   
  </div>
 </form>
  </div>
</div>
</div>




</body>
</html>