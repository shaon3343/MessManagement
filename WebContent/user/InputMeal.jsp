<%@ include file="../mainHeader.jsp" %>
<body>
		<form class="cmxform"  action="${pageContext.request.contextPath}/Meal"    method="POST"    id="mealSave"  name="mealSave">
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
		/* $.validator.setDefaults({
		submitHandler: function() {
			alert("submitted!");
		}
	}); */

	$().ready(function() {

		$("#mealSave").validate({
			rules: {
				mealDate: {
					required: true,
					minlength: 2
				},
				mealQt: {
					required: true,
					minlength: 1
				}
			},
			messages: {
				mealDate: "Please enter Meal Date",
				mealQt: "Please enter Meal Quantity"
				}
		});
		
	});
	</script>
		
		<script>	
		$('#mealDate').datepicker({dateFormat: 'yy-mm-dd'});
		</script>
</body>
</html>
