<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>    
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>

<%@ page import="java.util.List,java.util.ArrayList,com.dsiksjane.beans.common.LookupBean" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> <s:property value="userBean.title"/> </title>

</head>
<body>


<div class="row custom-border-bottom custom-legend">
	<div class="col-sm-12 text-center"> <div class="custom-page-title"> Registration </div> </div>
</div>


<form id="clientRegistrationForm" action="/clientRegistration/ClientRegistrationAction.action?actionCommand=submit">
<s:hidden name="clientRegisterationCO.fitnessUser.id"/>

<!-- One "tab" for each step in the form: -->
<div class="tab">
	<div class="row">
		<div class="col-sm-12">
			<label class="custom-wizard-tab-title"> Personal Information </label>
		</div>
	</div>
	<div class="row m-b-10">
		<div class="col-sm-3 custom-input-group">
			<label for="clientRegisterationCO.fitnessUser.firstName" class="custom-label"> First Name </label>
			<s:textfield name="clientRegisterationCO.fitnessUser.firstName" class="custom-field" required="true"></s:textfield>
		</div>
		<div class="col-sm-3 custom-input-group">
			<label for="clientRegisterationCO.fitnessUser.lastName" class="custom-label"> Last Name </label>
			<s:textfield name="clientRegisterationCO.fitnessUser.lastName" class="custom-field" required="true"></s:textfield>
		</div>
		<div class="col-sm-3 custom-input-group">
			<label for="clientRegisterationCO.fitnessUser.middleName" class="custom-label"> Middle Name </label>
			<s:textfield name="clientRegisterationCO.fitnessUser.middleName" class="custom-field"></s:textfield>
		</div>
		
	</div>
	<div class="row m-b-10 border-top">
		<div class="col-sm-2 custom-input-group">
			<label for="clientRegisterationCO.fitnessUser.userName" class="custom-label"> Username </label>
			<s:textfield name="clientRegisterationCO.fitnessUser.userName" onchange="validateUserNameExistence( this, 'clientRegistrationForm' )" class="custom-field" required="true"></s:textfield>
		</div>
		<div class="col-sm-3 custom-input-group">
			<label for="clientRegisterationCO.fitnessUser.email" class="custom-label"> Email Address </label>
			<s:textfield name="clientRegisterationCO.fitnessUser.email" class="custom-field" required="true"></s:textfield>
		</div>
		
		<s:if test="clientRegisterationCO.fitnessUser.id == null">
			<div class="col-lg-2 custom-input-group">
				<label for="clientRegisterationCO.fitnessUser.password" class="custom-label"> Password </label>
				<s:textfield name="clientRegisterationCO.fitnessUser.password" class="custom-field" required="true"></s:textfield>
			</div>
			<div class="col-lg-2 custom-input-group">
				<label for="clientRegisterationCO.fitnessUser.confirmPassword" class="custom-label"> Confirm Password </label>
				<s:textfield name="clientRegisterationCO.fitnessUser.confirmPassword" class="custom-field" required="true"></s:textfield>
			</div>
		</s:if>
	</div>
	<div class="row m-b-10 border-top">
		<div class="col-sm-2 custom-input-group">
			<label for="clientRegisterationCO.fitnessUser.dateOfBirth" class="custom-label"> Date Of Birth </label>
			<s:textfield name="clientRegisterationCO.fitnessUser.dateOfBirth" class="custom-field" required="true"></s:textfield>
		</div>
		<div class="col-sm-2 custom-input-group">
			<label for="clientRegisterationCO.fitnessUser.mobileNumber" class="custom-label"> Mobile#</label>
			<s:textfield name="clientRegisterationCO.fitnessUser.mobileNumber" class="custom-field c_01phone" required="true"></s:textfield>
		</div>
		<div class="col-sm-2 custom-input-group">
			<label for="clientRegisterationCO.fitnessUser.whatsappNumber" class="custom-label"> Whatsapp# </label>
			<s:textfield name="clientRegisterationCO.fitnessUser.whatsappNumber" class="custom-field" required="true"></s:textfield>
		</div>
	</div>
	<div class="row m-b-10">
		<div class="col-sm-2 custom-input-group">
			<label class="custom-label"> Gender </label>
			<div class="form-control form-control-sm">
				<label class="radio-inline custom-radio"> <input type="radio" name="clientRegisterationCO.fitnessUser.gender" value="M"/> Male </label>
				<label class="radio-inline custom-radio"> <input type="radio" name="clientRegisterationCO.fitnessUser.gender" value="F"/> FeMale </label>
			</div>
		</div>
		<div class="col-sm-3 custom-input-group">
			<label class="custom-label"> Profile Picture </label>
			<input type="file" name="clientRegisterationCO.fitnessUser.profilePicture" class="form-control form-control-sm"/>
		</div>
	</div>

</div>

<div class="tab">
	<div class="row container">
		<div class="col-sm-12">
			<label class="custom-wizard-tab-title"> 
				Let's get it more detailed! </br> 
				Share with me your <b>Goals</b> , <i>Dreams</i> and <tt> Expectations... </tt>
			</label>
		</div>
	</div>
	
	<div class="container">
		<div class="custom-section-label"> <label>What matches best for you ?</label> </div>
		
		<div class="row">
			<s:iterator value="trainingGoalDropdownList" var="training" step="1">
				<div class="col-sm-4 ">
					<label class="radio-inline custom-label">
						<s:if test="defaultValueTrainingGoalDropdown == #training.code">
							<input type="radio" name="clientRegisterationCO.fitnessUser.trainingGoal" value="${training.code}" checked/> ${training.value}
						</s:if>
						<s:else>
							<input type="radio" name="clientRegisterationCO.fitnessUser.trainingGoal" value="${training.code}"/> ${training.value}
						</s:else>
					</label>
					<ul class="custom-font-size-for-attributes">
						<s:iterator value="#training.attributes" var="attrib">
							<li> <s:property value="attrib"/> </li>
						</s:iterator>
					</ul> 
					
				</div>
			</s:iterator>
		</div>
		
		
		<div class="row">
			<div class="col-sm-5">
				<div class="custom-section-label"> <label>What type of workouts you have done before ?</label> </div>
				<div class="row container">
					<div class="col-sm-12 radio-font-size"> 
						<s:checkboxlist list = "workoutsDropdownList"
				                name="clientRegisterationCO.fitnessUser.details.workouts"
				               value = ""
				               label = "Workouts" 
				               listKey="code"
				               listValue="value"
				               />
					</div>
				</div>
			</div>
			<div class="col-sm-7">
				<div class="custom-section-label"> <label>Write the most important thing why you want to achieve your goal ? (optional)</label> </div>
				<div class="row col-sm-12 text-center" style="margin: 0px; padding:0px;">
					<s:textarea name="clientRegisterationCO.fitnessUser.goalReason" class="form-control"></s:textarea>
					<label class="custom-notes"> Example: I want to look good in bikini for the next summer! </label>
				</div>
			</div>
		</div>
		
		
		
		
		<div class="custom-section-label"> <label>What are your expectations from your personal trainer ?</label> </div>
		<div class="row container">
			<div class="col-sm-12 radio-font-size ">
				<s:checkboxlist list = "expectatinosDropdownList"
		                name="clientRegisterationCO.fitnessUser.expectations"
		               value = ""
		               label = "Expectations" 
		               listKey="code"
		               listValue="value"
		               />
			</div>
		</div>
	</div>
	
</div>

<div class="tab">
	<div class="row container">
		<div class="col-sm-12 text-center">
			<label class="custom-wizard-tab-title"> 
				( PAR Q ) <br>
				Physical Activity Readiness Questionnaire
			</label>	
		</div>
	</div>
	
	<div class="custom-section-label"> <label> Check if any </label> </div>
	<div class="row container">
		<div class="col-sm-12 radio-font-size ">
			<s:checkboxlist list = "effectsDropdownList"
	                name="clientRegisterationCO.fitnessUser.effects"
	               value = ""
	               label = "Effects" 
	               listKey="code"
	               listValue="value"
	               />
		</div>
	</div>

	<div class="custom-section-label"> <label> Personal Agreement </label> </div>
	<div class="row container">
		<div class="col-sm-12 radio-font-size custom-agreement-font-style">
			<ul class="custom-font-size-for-attributes">
				<s:iterator value="agreementDropdownList" var="agreement">
					<s:iterator value="#agreement.attributes" var="attrib">
						<li> <s:property value="attrib"/> </li>
					</s:iterator>
				</s:iterator>
			</ul>
			<label class="radio-inline "> <input type="checkbox" name="clientRegisterationCO.fitnessUser.personallyAgreed"/> I agree </label>
		</div>
	</div>
</div>


<!-- Circles which indicates the steps of the form: -->
<div style="text-align:center;margin-top:40px;">
  <span class="step"></span>
  <span class="step"></span>
  <span class="step"></span>
</div>

<hr>
<div style="overflow:auto;">
  <div style="float:left;">
    <button type="button" class="custom-button" id="prevBtn" onclick="nextPrev(-1, 'clientRegistrationForm')">Previous</button>
    <button type="button" class="custom-button" id="nextBtn" onclick="nextPrev(1, 'clientRegistrationForm')">Next</button>
  </div>
</div>


</form>

</body>
</html>


<%--
	//action variable 
	${defaultGenderValue }
	 
	<div class="custom-radio-list">
		<s:radio label="wellnessLookup" name="clientRegisterationCO.fitnessUser.wellness" list="wellnessLookup" listKey="code" listValue="value"/>
	</div>
	
	<s:iterator value="wellnessDropdown" var="obj">
		<label class="radio-inline"> 
			<input type="radio" name="clientRegisterationCO.fitnessUser.wellness" value="${obj.code }" checked/> ${obj.value }
		</label>
	</s:iterator>
 
--%>