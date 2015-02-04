<%@ include file="mainHeader.jsp" %>
<body>
<body>
		<form class="cmxform"  action="${pageContext.request.contextPath}/Login"  id="userLogin"  name="userLogin"  method="post" >
		<fieldset>
			<legend>User Login </legend>
			
			<p>
			<label for="userName"  style="width:140px" >Username: </label>
			<input type="text"  name="userName"  id="userName" / >
			</p>
			
			<p>
			<label for="password" style="width:140px" >Password: </label>
			<input type="password"  name="password"  id="password"  />
			</p>
			
			<p>
			<input type="submit"    value="submit">
			</p>
			
			</fieldset>
		</form>
	<script>
	$("#userLogin").validate({
		rules: {
			userName: {
				required: true,
				minlength: 4
			},
			password: {
				required: true,
				minlength: 4
			}
		},
	/* 	messages: {
			userName: "Please enter Username",
			password: "Please enter Password"
			} */
	});
	
	</script>
</body>
</html>