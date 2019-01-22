<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style type="text/css">
.formAlign
{
   width: 50%;
   position: relative;
   top: 20%;
   left:25%;
}

.background
{
   height: 800px;
   background-image: url("resources/images/2.png");
   background-repeat: no-repeat;
   background-size: 100%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js">
                                <link href="<c:url value='resources/css/formerror.css'></c:url>"rel="stylesheet"></script>

<script type="text/javascript">

function fillShippingAddress(form)
{
	if(form.checkbox.checked==true)
		{
		form["shippingAddress.apartmentnumber"].value=form["billingAddress.apartmentnumber"].value
		form["shippingAddress.streetname"].value=form["billingAddress.streetname"].value
		form["shippingAddress.city"].value=form["billingAddress.city"].value
		form["shippingAddress.state"].value=form["billingAddress.state"].value
		form["shippingAddress.country"].value=form["billingAddress.country"].value
		form["shippingAddress.zipcode"].value=form["billingAddress.zipcode"].value
		}
	else
		{
		form["shippingAddress.apartmentnumber"].value=""
		form["shippingAddress.streetname"].value=""
		form["shippingAddress.city"].value=""
		form["shippingAddress.state"].value=""
		form["shippingAddress.country"].value=""
		form["shippingAddress.zipcode"].value=""
		}
	}
$(document).ready(function()
		{
	$('#form').validate({
		rules:{
			"firstname":{required:true},
			"lastname":{required:true},
			"phonenumber":{required:true,number:true,minlength:10,maxlength:10},
			"user.email":{required:true,email:true},
			"user.password":{required:true,minlength:5,maxlength:10},
			"billingAddress.apartmentnumber":{required:true},
			"billingAddress.streetname":{required:true},
			"billingAddress.city":{required:true},
			"billingAddress.state":{required:true},
			"billingAddress.country":{required:true},
			"billingAddress.zipcode":{required:true}
		},
		messages:{
		"firstname":{required:"First name is mandatory"},
		"lastname":{required:"Last name is mandatory"},
		"phonenumber":{required:"Phone number is mandatory",
			           number:"Invalid Phonenumber",
			           minlength:"Invalid Phonenumber",
			           maxlength:"Invalid Phonenumber"},
		"user.email":{required:"Email is mandatory",
			          email:"Enter valid email address"},
	    "user.password":{required:"Please enter password",
	    	           minlength:"Minimum 5 characters",
	    	           maxlength:"Maximum 10 characters"}
		}
		
	})
		})
</script>
</head>
<body>

<div class="background">
<div class="container">

			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               <img src="<c:url value="/resources/images/1.jpg"/>" class="img-circle" alt="AboutUs" width="200"
					height="200">
	               		<h3 class="title">Signup</h3>
	               		
	               		<hr />
	               	</div>
	            </div> 

<div class="formAlign">
<div class="main-login main-center">
	
		<div class="form-group">
		<label for="name" class="cols-sm-2 control-label"></label>
				<div class="cols-sm-10">
					<div class="input-group">
 
<c:url value="/all/register" var="url"></c:url>
<form:form action="${url}" method="post" modelAttribute="customer" id="form">
<table>
<form:label path="firstname" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="firstname" id="firstname" placeholder="Enter First Name"/>
<form:label path="lastname" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="lastname" id="lastname" placeholder="Enter Last Name"/>
<form:label path="phonenumber" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="phonenumber" id="phonenumber" placeholder="Enter Phone Number"/>
<span style="color:red">${errorMessage}</span>
</table>
<table>
<form:label path="user.email" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="user.email" id="user.email" placeholder="Enter Email Id"/>
<form:label path="user.password" class="cols-sm-2 control-label"></form:label><input type="password" class="form-control" name="user.password" id="user.password" placeholder="Enter Password"/>
<form:hidden path="user.enabled" value="true"/><form:hidden path="user.authorities.role" value="ROLE_USER"></form:hidden></td>
</table>
<table>
<form:label path="billingAddress.apartmentnumber" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="billingAddress.apartmentnumber" id="billingAddress.apartmentnumber" placeholder="Enter Apartment Number"/>
<form:label path="billingAddress.streetname" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="billingAddress.streetname" id="billingAddress.streetname" placeholder="Enter Street Name"/>
<form:label path="billingAddress.city" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="billingAddress.city" id="billingAddress.city" placeholder="Enter City"/>
<form:label path="billingAddress.state" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="billingAddress.state" id="billingAddress.state" placeholder="Enter State"/>
<form:label path="billingAddress.country" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="billingAddress.country" id="billingAddress.country" placeholder="Enter Country"/>
<form:label path="billingAddress.zipcode" class="cols-sm-2 control-label"></form:label><input type="text"class="form-control" name="billingAddress.zipcode" id="billingAddress.zipcode" placeholder="Enter PinCode"/>
</table>
<table>
Check this box if shipping address is same as billing address
<input type="checkbox" onclick="fillShippingAddress(this.form)" id="checkbox">
<form:label path="shippingAddress.apartmentnumber" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="shippingAddress.apartmentnumber" id="shippingAddress.apartmentnumber" placeholder="Enter Apartment Number"/>
<form:label path="shippingAddress.streetname" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="shippingAddress.streetname" id="shippingAddress.streetname" placeholder="Enter Street Name"/>
<form:label path="shippingAddress.city" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="shippingAddress.city" id="shippingAddress.city" placeholder="Enter City"/>
<form:label path="shippingAddress.state" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="shippingAddress.state" id="shippingAddress.state" placeholder="Enter State"/>
<form:label path="shippingAddress.country" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="shippingAddress.country" id="shippingAddress.country" placeholder="Enter Country"/>
<form:label path="shippingAddress.zipcode" class="cols-sm-2 control-label"></form:label><input type="text" class="form-control" name="shippingAddress.zipcode" id="shippingAddress.zipcode" placeholder="Enter PinCode"/>
</table>
<input type="submit" value="REGISTER">
</form:form>
</div>
</div>
</div>
</div>	
</div>
</div>
</div>
</div>

</body>

</html>