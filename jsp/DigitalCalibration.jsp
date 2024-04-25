<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dccweb.controller.JWAView" %>
    <%@ page import="dccweb.controller.LoginCTL" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"> 
 
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 
 
 

<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script> 
-->


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
#background-container {
    background-image: url('/DCCWEB/image/img1.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    height: 700px;
    position: relative; /* To position children relative to this container */
}

   

</style>


<script>
  // Function to display the current date and time
  function displayLoginTime() {
    const loginTime = new Date(); // Get the current date and time
    const loginTimeElement = document.getElementById("loginTime");

    const options = {
      year: "numeric",
      month: "long",
      day: "numeric",
      hour: "2-digit",
      minute: "2-digit",
      second: "2-digit",
    };

    loginTimeElement.textContent =
      "Logged in at " + loginTime.toLocaleDateString("en-US", options);
  }

  // Call the function when the page loads
  window.onload = displayLoginTime;
</script>




</head>



<body>
<!-- <nav class="col-md-2 col-lg-1.5 d-md-block bg-light sidebar" style="height: 100vh; background-color: lightblue;">  -->

 <nav class="navbar bg-body-primary container-fluid" style="background-color: white;"> 

	

    <a class="navbar-brand" id="a1"><img src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9d/Logo_NPL_india.svg/1200px-Logo_NPL_india.svg.png" style="width:120px;height:120px;"></a>

       <a style="text-align: center;"><h3 style="color: black;"><b>DIGITAL CALIBRATION CERTIFICATE</b></h3></a>
   <h1 style="text-align:left;"><b><span style="color: #000080;">CSIR-NPL</span></b></h1> 
      
      </nav>
     

<div id="background-container" style="height: 80vh; overflow: hidden; /* Add this */">
   
   
<div class="container-fluid">
  <div class="row">
    <!-- Vertical sidebar covering the whole screen vertically -->
  <nav class="col-md-2 col-lg-1.5 d-md-block bg-light sidebar" style="height: 100vh; background-color: lightblue;">


      <div class="position-sticky">
        <ul class="nav flex-column">
          <li class="nav-item">
    <a class="nav-link" href="<%=JWAView.CustomerInfoCTL %>" style="font-weight: bold;">
        Generate New Certificate
    </a>
</li>

          <li class="nav-item">
            <a class="nav-link" href="#" style="font-weight: bold;" >   
                    Calibration Records
            </a>
          </li>
          
       <!--   <li class="nav-item">
            <a class="nav-link" href="<%=JWAView.indexCTL%>">
              LogOut
            </a>
          </li> -->
        </ul>
         <button class="btn btn-success" style="position: absolute; top: 500px; right: 70px;" value="Register" id="submit" onclick="window.location.href='<%=JWAView.indexCTL%>'">Log Out</button>
      </div>
    </nav>
    
    <!-- Main content area -->
     <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4" style="position: relative;">
                <!--  <button class="btn btn-success" style="position: absolute; top: 10px; right: 20px;" value="Register" id="submit" onclick="window.location.href='<%=JWAView.indexCTL%>'">Log Out</button> -->
               
      <p style="font-size: 18px;">
  <span style="color: green; font-weight: bold; float: left;">Welcome!</span>
  <b> You are logged in.</b>
 <!-- <span style="color: green; font-weight: bold;"><%= session.getAttribute("name") %></span> -->
  <span class="time-container" id="loginTime" style="text-align: right; float: right;"></span>
</p>


<!-- <p id="loginTime" style="font-size: 16px; color: black;"></p>  -->

                
                
     </main> 
  </div>
</div>



   
   
   
</div>



</body>
</html>