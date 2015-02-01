<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<link rel="stylesheet" href="../css/screen.css">
	<script src="../js/lib/jquery.js"></script>
	<script src="../js/dist/jquery.validate.js"></script>
	<script src="../js/datepicker/jquery.ui.datepicker.validation.js"></script>
	<script src="../js/datepicker/jquery.ui.datepicker.validation.min.js"></script>
	<script src="../js/datepicker/jquery.ui.datepicker.validation.pack.js"></script>
	<script>
	
	
	$.validator.setDefaults({
		submitHandler: function() {
			alert("submitted!");
		}
	});

	$().ready(function() {

		$("#mealSave").validate({
			rules: {
				mealDate: {
					required: true,
					minlength: 2
				},
				mealQt: {
					required: true,
					minlength: 5
				}
			},
			messages: {
				mealDate: "Please enter Meal Date",
				mealQt: "Please enter Meal Quantity"
				}
		});
		
	});
	</script>

</head>
<body>
		<form class="cmxform"  actions="mealSave"  id="mealSave"  name="mealSave"  type="POST"  >
		<fieldset>
			<legend>Enter your consumed meal</legend>
			
			<p>
			<label for="firstname"  style="width:140px" >Meal Date: </label>
			<input type="text"  name="mealDate"  id="mealDate" / >
			</p>
			
			<p>
			<label for="firstname" style="width:140px" >Meal Quantity: </label>
			<input type="text"  name="mealQt"  id="mealQt"  />
			</p>
			
			<p>
			<input type="submit"    value="submit">
			</p>
			
			</fieldset>
		</form>
		
		<script>
		
		$('#mealDate').datepicker({dateFormat: 'yy-mm-dd'});
		</script>
</body>
</html>
