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
<script type="text/javascript">
		function populateStates() {
			var country = document.getElementById("country").value;
			var state = document.getElementById("city");
			state.innerHTML = ""; // clear previous options

			switch (country) {
				case "USA":
					var states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "District of Columbia", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"];
					break;
				case "CA":
					var states = ["Alberta", "British Columbia", "Manitoba", "New Brunswick", "Newfoundland and Labrador", "Northwest Territories", "Nova Scotia", "Nunavut", "Ontario", "Prince Edward Island", "Quebec", "Saskatchewan", "Yukon"];
					break;
				case "Mexico":
					var states = ["Aguascalientes", "Baja California", "Baja California Sur", "Campeche", "Chiapas", "Chihuahua", "Coahuila", "Colima", "Durango", "Guanajuato", "Guerrero", "Hidalgo", "Jalisco", "Mexico City", "Mexico State", "Michoacán", "Morelos", "Nayarit", "Nuevo León", "Oaxaca", "Puebla", "Querétaro", "Quintana Roo", "San Luis Potosí", "Sinaloa", "Sonora", "Tabasco", "Tamaulipas", "Tlaxcala", "Veracruz", "Yucatán", "Zacatecas"];
					break;
				case "IN":
					var states=["Andhra Pradesh","Haryana","Manipur","Arunachal Pradesh","Assam","Bihar","Chattisgarh","Goa","Gujarat","Haryana","Himachal Pradesh","Jharkhand","Karnataka","Kerala","Madhya Pradesh","Maharashtra",
						"Manipur","Meghalaya","Mizoram","Nagaland","Odisha","Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana","Tripura","Uttar Pradesh","Uttarakhand","West Bengal","Andaman and Nicobar Islands","Chandigarh","Dadra & Nagar Haveli and Daman & Diu","Delhi","Jammu and Kashmir","Lakshadweep","Puducherry","Ladakh"]
				break;
				case "DZ":
					var states=["Adrar","Alger"	,"Annaba","Bejaia","Biskra","Blida","Bordj Bou Arreridj Bouira","Chlef","Constantine","Djelfa","El Bayadh", "Ghardaia","Guelma","Illizi","Jijel"
						,"Laghouat","M`sila","Mascara","Medea","Mostaganem","Naama","Oran","Ouargla","Oum El Bouaghi","Saida","Setif","Sidi Bel Abbes","Skikda","Souk Ahras",
						"Tamanghasset","Tebessa","Tiaret","Tindouf","Tizi Ouzou","Tlemcen"]
					break;
				case "AO":
					var states=["Bengo","Benguela","Bié","Cabinda","Cuando Cubango","Cuanza Norte","Cuanza Sul","Cunene","Huambo","Huíla","Luanda","Lunda Norte","Lunda Sul","Malanje","Moxico","Namibe","Uíge","Zaire"]
					break;
				case "BJ":
					var states=["Alibori","Atakora","Atlantique","Borgou","Collines"," Kouffo","Donga","Littoral","Mono","Oueme","Plateau","Zou"]
					break;
				case "BW":
					var states=[" Central","Ghanzi","Kgalagadi","Kgatleng","Kweneng","North East","North West","South East","Southern"]
                     break;
				case "BF":
					var states=["Balé (Boromo)"," Bam (Kongoussi)","Banwa (Solenzo)","Bazèga (Kombissiri)","Bougouriba (Diébougou)","Boulgou (Tenkodogo)"," Boulkiemdè (Koudougou)","Comoè (Banfora)","Ganzourgou (Zorgho","Gnagna (Bogandé)","Gourma (Fada N'gourma)","Houet (Bobo-Dioulasso)","Ioba (Dano)","Kadiogo (Ouagadougou)","Kènèdougou (Orodara)","Komondjari (Gayéri)","Kompienga (Pama)","Kossi (Nouna)","Koulpélogo (Ouargaye)","Kourritenga (Koupéla)","Kourwéogo (Boussé)","Léraba (Sindou)","Loroum (Titao)","Mouhoun (Dédougou)","Nahouri (Pô also Pù)","Namentenga (Boulsa)","Nayala (Toma)","Noumbiel (Batié)","Oubritenga (Ziniaré)","Oudalan (Gorom-Gorom)","Passorè (Yako)","Poni (Gaoua)","Sanguiè (Réo)","Sanmatenga (Kaya)","Sèno (Dori)","Sissili (Léo)","Soum (Djibo)","Sourou (Tougan)",
							"Tapoa (Diapaga)","Tuy (Houndé)","Yagha (Sebba)","Yatenga (Ouahigouya)","Ziro (Sapouy)","Zondoma (Gourcy)","Zoundwèogo (Manga)"]
					break;
				case "BI":
					var states=["Bubanza", "Bujumbura Mairie (City of Bujumbura)", "Bujumbura Rural", "Bururi", "Cankuzo", "Cibitoke", "Gitega", "Karuzi", "Kayanza", "Kirundo", "Makamba", "Muramvya", "Muyinga", "Mwaro", "Ngozi", "Rutana","Ruyigi"]
					break;
				case "CM":
					var states=["Douala","Yaoundé","Maroua","Bafoussam","Bamenda","Garoua","Ngaoundéré","Bertoua","Buea","Ébolowa"]
					break;
				case "CV":
					var states=["Boa Vista", "Brava", "Fogo", "Maio", "Paul", "Praia", "Porto Novo", "Ribeira Grande", "Sal", "Santa Catarina", "Santa Cruz", "Sao Nicolau", "Sao Vicente", "Tarrafal"]
					break;
				case "CF":
					var states=["Cameroon", "Central African Republic", "Chad", "Congo Republic - Brazzaville", "Democratic Republic of Congo", "Equatorial Guinea", "Gabon", "São Tomé & Principe"]
					break;
				case "TD":
					var states=["Logone Oriental (Doba)", "Mandoul (Koumrá)", "Mayo-Kebbi Est (Bongor)", "Mayo-Kebbi Ouest (Pala)", "Moyen-Chari (Sarh)", "Ouaddaï (Abéché)", "Salamat (Am Timan)", "Tandjilé (Lai)", "Wadi Fira (Biltine)"]
					break;
				case "KM":
					var states=["Grande Comore","Mohéli","Anjouan"]
					break;
				case "CI":
					var states=["Abidjan","Bas-Sassandra","Comoé","Denguélé","Gôh-Djiboua","Lacs","Lagunes","Montagnes","Sassandra-Marahoué","Savanes","Vallée du Bandama","Woroba","Yamoussoukro","Zanzan"]
					break;
				case "DJ":
					var states=["Alaili Dadda","Ali Sabieh Region","Arta","Balha","Dikhil","Djibouti","Obock","Tadjourah","Yoboki"]
					break;
				case "EG":
					var states=["Alexandria", "Aswan", "Assiut", "Beheira", "Beni Suef", "Cairo", "Dakahlia", "Damietta", "Fayoum", "Gharbia", "Giza", "Ismailia", "Kafr el-Sheikh", "Matrouh", "Minya",
						"Menofia", "New Valley", "North Sinai", "Port Said", "Qualyubia", "Qena", "Red Sea", "Al-Sharqia", "Soha", "South Sinai", "Suez", "Luxor"]
					break;
				case "GQ":
					var states=["Bata","Malabo","Ebebiyín","Aconibe","Añisoc","Luba","Evinayong","Mongomo","Mengomeyén","Micomeseng","Rebola","Bidjabidjan",
						"Niefang","Cogo","Nsok","San Antonio de Palé","Mbini","Nsork","Ayene","Nkimi","Machinda","Acurenam","Corisco","Baney","Bicurga","Nsang","Ncue","Bitica","Río Campo","Riaba"]
					break;
				case "ER":
					var states=["Anseba Region","Debub Region","Gash-Barka Region","Maekel Region","Northern Red Sea Region","Southern Red Sea Region",""]
					break;
				case "ET":
					var states=[]
					break;
				default:
					var states = [];
					break;
			}

			// add options to the state dropdown
			for (var i = 0; i < states.length; i++) {
				var option = document.createElement("option");
				option.value = states[i];
				option.text = states[i];
				state.add(option);
			}
		}
	</script>
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
</head>

<body >
<div class="container-fluid">	
<nav class="navbar bg-body-tertiary" style="background-color: white;">
	

    <a class="navbar-brand" id="a1"><img src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9d/Logo_NPL_india.svg/1200px-Logo_NPL_india.svg.png" style="width:120px;height:120px;"></a>
<!--  <a href="https://www.india.gov.in/"> <img src="https://www.hranker.com/blog/wp-content/uploads/2021/03/government-of-india.jpg" style="height:65px; width:80px;margin-right:20px;"></a>-->
   
      <a style="text-align: center;"><h4 style="color: black;"><b>CUSTOMER DETAILS</b></h4></a>
   
   <h1 style="text-align:left;"><b><span style="color: #000080;">CSIR-NPL</span></b></h1> 
      
      </nav>
      </div>



<div id="progress">
  <div id="progress-bar"></div>
  <ul id="progress-num">
    <li class="step active">1</li>
    <li class="step">2</li>
    <li class="step">3</li>
    <li class="step">4</li>
     <li class="step">5</li>
        <li class="step">6</li>
          <li class="step">7</li>
            <li class="step">8</li>
              <li class="step">9</li>
  </ul>
</div>
<div class="container" style="width:1000px;">
  <div class="row justify-content">
 
  <div class="col col-md-12">
</div>
 
 
  <h3 style="color:green;"><center><%=ServletUtility.getSuccessMessage(request)%></center></h3>
  <h3 style="color:red;"><center> <%=ServletUtility.getErrorMessage(request)%></center></h3>
           
  <form class="row g-2 needs-validation" action="<%=JWAView.CustomerInfoCTL%>" method="post"style="padding:2px;">
 
   <div class="alert alert-info">
    <div class="container" >
<a style="text-align: center;"><h4 style="color: black;">Customer Information</h4></a>
</div>

    <div  class="row">
   <div class="col-md-6">
    <label for="validationCustom05" class="form-label">Customer Name<span style="color:red">*</span></label>
     <input type="text"    class="form-control" id="validationCustom03" th:field="*{customername}" th:classappend="${#fields.hasErrors('customername')}?'is-invalid':''" name="customername">
    <div th:each="e:${#fields.errors('customername')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
   
    </div>
  <div class="col-md-6">
    <label for="validationCustom01" class="form-label">Email-Id<span style="color:red">*</span></label>
    <input type="text" class="form-control" id="validationCustom02" th:field="*{emailid}" th:classappend="${#fields.hasErrors('emailid')}?'is-invalid':''"name="emailid">
   <div th:each="e:${#fields.errors('emailid')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
   
   </div>
   <div class="col-md-6">
    <label for="validationCustom01" class="form-label">Phone Number<span style="color:red">*</span></label>
    <input type="text" class="form-control" id="validationCustom02" th:field="*{phonenumber}"th:classappend="${#fields.hasErrors('phonenumber')}?'is-invalid':''" name="phonenumber">
    <div th:each="e:${#fields.errors('phonenumber')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
   
   </div>
   <div class="col-md-6">
    <label for="validationCustom01" class="form-label">Fax</label>
    <input type="text" class="form-control" id="validationCustom02" th:field="*{fax}"th:classappend="${#fields.hasErrors('fax')}?'is-invalid':''" name="fax">
    <div th:each="e:${#fields.errors('fax')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
   </div>
 
<br> </br>
<br> </br>
<div> <h4 style="text-align: center;color: black;">Location Information</h4></div>
  <br> </br>
  <div class="row">
  <div class="col-md-4">
    <label for="validationCustom02" class="form-label">Country<span style="color:red">*</span></label>
    <select class="form-select" aria-label="Default select example" id="country" th:field="*{countrycode}" name="countrycode" onchange="populateStates();">
        <option value="0" label="Select a country ... " selected="selected">Select a country ... </option>
        <optgroup id="country-optgroup-Africa" label="Africa">
            <option value="DZ" label="Algeria">Algeria</option>
            <option value="AO" label="Angola">Angola</option>
            <option value="BJ" label="Benin">Benin</option>
            <option value="BW" label="Botswana">Botswana</option>
            <option value="BF" label="Burkina Faso">Burkina Faso</option>
            <option value="BI" label="Burundi">Burundi</option>
            <option value="CM" label="Cameroon">Cameroon</option>
            <option value="CV" label="Cape Verde">Cape Verde</option>
            <option value="CF" label="Central African Republic">Central African Republic</option>
            <option value="TD" label="Chad">Chad</option>
            <option value="KM" label="Comoros">Comoros</option>
            <option value="CG" label="Congo - Brazzaville">Congo - Brazzaville</option>
            <option value="CD" label="Congo - Kinshasa">Congo - Kinshasa</option>
            <option value="CI" label="Côte dIvoire">Côte d’Ivoire</option>
            <option value="DJ" label="Djibouti">Djibouti</option>
            <option value="EG" label="Egypt">Egypt</option>
            <option value="GQ" label="Equatorial Guinea">Equatorial Guinea</option>
            <option value="ER" label="Eritrea">Eritrea</option>
            <option value="ET" label="Ethiopia">Ethiopia</option>
            <option value="GA" label="Gabon">Gabon</option>
            <option value="GM" label="Gambia">Gambia</option>
            <option value="GH" label="Ghana">Ghana</option>
            <option value="GN" label="Guinea">Guinea</option>
            <option value="GW" label="Guinea-Bissau">Guinea-Bissau</option>
            <option value="KE" label="Kenya">Kenya</option>
            <option value="LS" label="Lesotho">Lesotho</option>
            <option value="LR" label="Liberia">Liberia</option>
            <option value="LY" label="Libya">Libya</option>
            <option value="MG" label="Madagascar">Madagascar</option>
            <option value="MW" label="Malawi">Malawi</option>
            <option value="ML" label="Mali">Mali</option>
            <option value="MR" label="Mauritania">Mauritania</option>
            <option value="MU" label="Mauritius">Mauritius</option>
            <option value="YT" label="Mayotte">Mayotte</option>
            <option value="MA" label="Morocco">Morocco</option>
            <option value="MZ" label="Mozambique">Mozambique</option>
            <option value="NA" label="Namibia">Namibia</option>
            <option value="NE" label="Niger">Niger</option>
            <option value="NG" label="Nigeria">Nigeria</option>
            <option value="RW" label="Rwanda">Rwanda</option>
            <option value="RE" label="Réunion">Réunion</option>
            <option value="SH" label="Saint Helena">Saint Helena</option>
            <option value="SN" label="Senegal">Senegal</option>
            <option value="SC" label="Seychelles">Seychelles</option>
            <option value="SL" label="Sierra Leone">Sierra Leone</option>
            <option value="SO" label="Somalia">Somalia</option>
            <option value="ZA" label="South Africa">South Africa</option>
            <option value="SD" label="Sudan">Sudan</option>
            <option value="SZ" label="Swaziland">Swaziland</option>
            <option value="ST" label="São Tomé and Príncipe">São Tomé and Príncipe</option>
            <option value="TZ" label="Tanzania">Tanzania</option>
            <option value="TG" label="Togo">Togo</option>
            <option value="TN" label="Tunisia">Tunisia</option>
            <option value="UG" label="Uganda">Uganda</option>
            <option value="EH" label="Western Sahara">Western Sahara</option>
            <option value="ZM" label="Zambia">Zambia</option>
            <option value="ZW" label="Zimbabwe">Zimbabwe</option>
        </optgroup>
        <optgroup id="country-optgroup-Americas" label="Americas">
            <option value="AI" label="Anguilla">Anguilla</option>
            <option value="AG" label="Antigua and Barbuda">Antigua and Barbuda</option>
            <option value="AR" label="Argentina">Argentina</option>
            <option value="AW" label="Aruba">Aruba</option>
            <option value="BS" label="Bahamas">Bahamas</option>
            <option value="BB" label="Barbados">Barbados</option>
            <option value="BZ" label="Belize">Belize</option>
            <option value="BM" label="Bermuda">Bermuda</option>
            <option value="BO" label="Bolivia">Bolivia</option>
            <option value="BR" label="Brazil">Brazil</option>
            <option value="VG" label="British Virgin Islands">British Virgin Islands</option>
            <option value="CA" label="Canada">Canada</option>
            <option value="KY" label="Cayman Islands">Cayman Islands</option>
            <option value="CL" label="Chile">Chile</option>
            <option value="CO" label="Colombia">Colombia</option>
            <option value="CR" label="Costa Rica">Costa Rica</option>
            <option value="CU" label="Cuba">Cuba</option>
            <option value="DM" label="Dominica">Dominica</option>
            <option value="DO" label="Dominican Republic">Dominican Republic</option>
            <option value="EC" label="Ecuador">Ecuador</option>
            <option value="SV" label="El Salvador">El Salvador</option>
            <option value="FK" label="Falkland Islands">Falkland Islands</option>
            <option value="GF" label="French Guiana">French Guiana</option>
            <option value="GL" label="Greenland">Greenland</option>
            <option value="GD" label="Grenada">Grenada</option>
            <option value="GP" label="Guadeloupe">Guadeloupe</option>
            <option value="GT" label="Guatemala">Guatemala</option>
            <option value="GY" label="Guyana">Guyana</option>
            <option value="HT" label="Haiti">Haiti</option>
            <option value="HN" label="Honduras">Honduras</option>
            <option value="JM" label="Jamaica">Jamaica</option>
            <option value="MQ" label="Martinique">Martinique</option>
            <option value="MX" label="Mexico">Mexico</option>
            <option value="MS" label="Montserrat">Montserrat</option>
            <option value="AN" label="Netherlands Antilles">Netherlands Antilles</option>
            <option value="NI" label="Nicaragua">Nicaragua</option>
            <option value="PA" label="Panama">Panama</option>
            <option value="PY" label="Paraguay">Paraguay</option>
            <option value="PE" label="Peru">Peru</option>
            <option value="PR" label="Puerto Rico">Puerto Rico</option>
            <option value="BL" label="Saint Barthélemy">Saint Barthélemy</option>
            <option value="KN" label="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
            <option value="LC" label="Saint Lucia">Saint Lucia</option>
            <option value="MF" label="Saint Martin">Saint Martin</option>
            <option value="PM" label="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
            <option value="VC" label="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option>
            <option value="SR" label="Suriname">Suriname</option>
            <option value="TT" label="Trinidad and Tobago">Trinidad and Tobago</option>
            <option value="TC" label="Turks and Caicos Islands">Turks and Caicos Islands</option>
            <option value="VI" label="U.S. Virgin Islands">U.S. Virgin Islands</option>
            <option value="USA" label="United States">USA</option>
            <option value="UY" label="Uruguay">Uruguay</option>
            <option value="VE" label="Venezuela">Venezuela</option>
        </optgroup>
        <optgroup id="country-optgroup-Asia" label="Asia">
            <option value="AF" label="Afghanistan">Afghanistan</option>
            <option value="AM" label="Armenia">Armenia</option>
            <option value="AZ" label="Azerbaijan">Azerbaijan</option>
            <option value="BH" label="Bahrain">Bahrain</option>
            <option value="BD" label="Bangladesh">Bangladesh</option>
            <option value="BT" label="Bhutan">Bhutan</option>
            <option value="BN" label="Brunei">Brunei</option>
            <option value="KH" label="Cambodia">Cambodia</option>
            <option value="CN" label="China">China</option>
            <option value="GE" label="Georgia">Georgia</option>
            <option value="HK" label="Hong Kong SAR China">Hong Kong SAR China</option>
            <option value="IN" label="India">India</option>
            <option value="ID" label="Indonesia">Indonesia</option>
            <option value="IR" label="Iran">Iran</option>
            <option value="IQ" label="Iraq">Iraq</option>
            <option value="IL" label="Israel">Israel</option>
            <option value="JP" label="Japan">Japan</option>
            <option value="JO" label="Jordan">Jordan</option>
            <option value="KZ" label="Kazakhstan">Kazakhstan</option>
            <option value="KW" label="Kuwait">Kuwait</option>
            <option value="KG" label="Kyrgyzstan">Kyrgyzstan</option>
            <option value="LA" label="Laos">Laos</option>
            <option value="LB" label="Lebanon">Lebanon</option>
            <option value="MO" label="Macau SAR China">Macau SAR China</option>
            <option value="MY" label="Malaysia">Malaysia</option>
            <option value="MV" label="Maldives">Maldives</option>
            <option value="MN" label="Mongolia">Mongolia</option>
            <option value="MM" label="Myanmar [Burma]">Myanmar [Burma]</option>
            <option value="NP" label="Nepal">Nepal</option>
            <option value="NT" label="Neutral Zone">Neutral Zone</option>
            <option value="KP" label="North Korea">North Korea</option>
            <option value="OM" label="Oman">Oman</option>
            <option value="PK" label="Pakistan">Pakistan</option>
            <option value="PS" label="Palestinian Territories">Palestinian Territories</option>
            <option value="YD" label="People's Democratic Republic of Yemen">People's Democratic Republic of Yemen</option>
            <option value="PH" label="Philippines">Philippines</option>
            <option value="QA" label="Qatar">Qatar</option>
            <option value="SA" label="Saudi Arabia">Saudi Arabia</option>
            <option value="SG" label="Singapore">Singapore</option>
            <option value="KR" label="South Korea">South Korea</option>
            <option value="LK" label="Sri Lanka">Sri Lanka</option>
            <option value="SY" label="Syria">Syria</option>
            <option value="TW" label="Taiwan">Taiwan</option>
            <option value="TJ" label="Tajikistan">Tajikistan</option>
            <option value="TH" label="Thailand">Thailand</option>
            <option value="TL" label="Timor-Leste">Timor-Leste</option>
            <option value="TR" label="Turkey">Turkey</option>
            <option value="TM" label="Turkmenistan">Turkmenistan</option>
            <option value="AE" label="United Arab Emirates">United Arab Emirates</option>
            <option value="UZ" label="Uzbekistan">Uzbekistan</option>
            <option value="VN" label="Vietnam">Vietnam</option>
            <option value="YE" label="Yemen">Yemen</option>
        </optgroup>
        <optgroup id="country-optgroup-Europe" label="Europe">
            <option value="AL" label="Albania">Albania</option>
            <option value="AD" label="Andorra">Andorra</option>
            <option value="AT" label="Austria">Austria</option>
            <option value="BY" label="Belarus">Belarus</option>
            <option value="BE" label="Belgium">Belgium</option>
            <option value="BA" label="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
            <option value="BG" label="Bulgaria">Bulgaria</option>
            <option value="HR" label="Croatia">Croatia</option>
            <option value="CY" label="Cyprus">Cyprus</option>
            <option value="CZ" label="Czech Republic">Czech Republic</option>
            <option value="DK" label="Denmark">Denmark</option>
            <option value="DD" label="East Germany">East Germany</option>
            <option value="EE" label="Estonia">Estonia</option>
            <option value="FO" label="Faroe Islands">Faroe Islands</option>
            <option value="FI" label="Finland">Finland</option>
            <option value="FR" label="France">France</option>
            <option value="DE" label="Germany">Germany</option>
            <option value="GI" label="Gibraltar">Gibraltar</option>
            <option value="GR" label="Greece">Greece</option>
            <option value="GG" label="Guernsey">Guernsey</option>
            <option value="HU" label="Hungary">Hungary</option>
            <option value="IS" label="Iceland">Iceland</option>
            <option value="IE" label="Ireland">Ireland</option>
            <option value="IM" label="Isle of Man">Isle of Man</option>
            <option value="IT" label="Italy">Italy</option>
            <option value="JE" label="Jersey">Jersey</option>
            <option value="LV" label="Latvia">Latvia</option>
            <option value="LI" label="Liechtenstein">Liechtenstein</option>
            <option value="LT" label="Lithuania">Lithuania</option>
            <option value="LU" label="Luxembourg">Luxembourg</option>
            <option value="MK" label="Macedonia">Macedonia</option>
            <option value="MT" label="Malta">Malta</option>
            <option value="FX" label="Metropolitan France">Metropolitan France</option>
            <option value="MD" label="Moldova">Moldova</option>
            <option value="MC" label="Monaco">Monaco</option>
            <option value="ME" label="Montenegro">Montenegro</option>
            <option value="NL" label="Netherlands">Netherlands</option>
            <option value="NO" label="Norway">Norway</option>
            <option value="PL" label="Poland">Poland</option>
            <option value="PT" label="Portugal">Portugal</option>
            <option value="RO" label="Romania">Romania</option>
            <option value="RU" label="Russia">Russia</option>
            <option value="SM" label="San Marino">San Marino</option>
            <option value="RS" label="Serbia">Serbia</option>
            <option value="CS" label="Serbia and Montenegro">Serbia and Montenegro</option>
            <option value="SK" label="Slovakia">Slovakia</option>
            <option value="SI" label="Slovenia">Slovenia</option>
            <option value="ES" label="Spain">Spain</option>
            <option value="SJ" label="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
            <option value="SE" label="Sweden">Sweden</option>
            <option value="CH" label="Switzerland">Switzerland</option>
            <option value="UA" label="Ukraine">Ukraine</option>
            <option value="SU" label="Union of Soviet Socialist Republics">Union of Soviet Socialist Republics</option>
            <option value="GB" label="United Kingdom">United Kingdom</option>
            <option value="VA" label="Vatican City">Vatican City</option>
            <option value="AX" label="Åland Islands">Åland Islands</option>
        </optgroup>
        <optgroup id="country-optgroup-Oceania" label="Oceania">
            <option value="AS" label="American Samoa">American Samoa</option>
            <option value="AQ" label="Antarctica">Antarctica</option>
            <option value="AU" label="Australia">Australia</option>
            <option value="BV" label="Bouvet Island">Bouvet Island</option>
            <option value="IO" label="British Indian Ocean Territory">British Indian Ocean Territory</option>
            <option value="CX" label="Christmas Island">Christmas Island</option>
            <option value="CC" label="Cocos [Keeling] Islands">Cocos [Keeling] Islands</option>
            <option value="CK" label="Cook Islands">Cook Islands</option>
            <option value="FJ" label="Fiji">Fiji</option>
            <option value="PF" label="French Polynesia">French Polynesia</option>
            <option value="TF" label="French Southern Territories">French Southern Territories</option>
            <option value="GU" label="Guam">Guam</option>
            <option value="HM" label="Heard Island and McDonald Islands">Heard Island and McDonald Islands</option>
            <option value="KI" label="Kiribati">Kiribati</option>
            <option value="MH" label="Marshall Islands">Marshall Islands</option>
            <option value="FM" label="Micronesia">Micronesia</option>
            <option value="NR" label="Nauru">Nauru</option>
            <option value="NC" label="New Caledonia">New Caledonia</option>
            <option value="NZ" label="New Zealand">New Zealand</option>
            <option value="NU" label="Niue">Niue</option>
            <option value="NF" label="Norfolk Island">Norfolk Island</option>
            <option value="MP" label="Northern Mariana Islands">Northern Mariana Islands</option>
            <option value="PW" label="Palau">Palau</option>
            <option value="PG" label="Papua New Guinea">Papua New Guinea</option>
            <option value="PN" label="Pitcairn Islands">Pitcairn Islands</option>
            <option value="WS" label="Samoa">Samoa</option>
            <option value="SB" label="Solomon Islands">Solomon Islands</option>
            <option value="GS" label="South Georgia and the South Sandwich Islands">South Georgia and the South Sandwich Islands</option>
            <option value="TK" label="Tokelau">Tokelau</option>
            <option value="TO" label="Tonga">Tonga</option>
            <option value="TV" label="Tuvalu">Tuvalu</option>
            <option value="UM" label="U.S. Minor Outlying Islands">U.S. Minor Outlying Islands</option>
            <option value="VU" label="Vanuatu">Vanuatu</option>
            <option value="WF" label="Wallis and Futuna">Wallis and Futuna</option>
        </optgroup>
    </select>


      </div>
        <div class="col-md-4">
    <label for="validationCustom02" class="form-label">State and UTs<span style="color:red">*</span></label>
  
   
    <input type="text"    class="form-control" id="validationCustom03"  name="city">
    <div  id="ValidationServer03Feedback" class="invalid-feedback"></div>

   
      </div>
 
  <div class="col-md-4">
    <label for="validationCustom02" class="form-label">Post Code<span style="color:red">*</span></label>
    <input type="text"   class="form-control"  id="validationCustom03" th:field="*{postcode}" th:classappend="${#fields.hasErrors('postcode')}?'is-invalid':''" name="customerpostcode">
   <div th:each="e:${#fields.errors('postcode')}" th:text="${e}" id="ValidationServer03Feedback" class="invalid-feedback"></div>
   
  </div> 
  
 </div>
 <div></br></div>
   <div style="text-align: center;">
   
   
   
  <button class="btn btn-warning" name="myButton" type="submit"  value="Register" id="submit">Save</button>  
 <button class="btn btn-success" name="myButton" type="button" style="justify-content: flex-end;" value="Register" id="submit" onclick="window.location.href='<%=JWAView.DCC1CTL%>'">Next</button>
 
   
  </div>

    </form>
   
  </div>
</div>
</body>
</html>