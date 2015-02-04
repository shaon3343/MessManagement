<%@ include file="../mainHeader.jsp" %>
<body>
<h1>Add your Room Member</h1>
<div>

		<form class="cmxform"  method="POST"    id="membertotal"  name="membertotal">
		<fieldset>
			<legend>Enter your Total Number of Member:</legend>
			
			<p>
			<label for="totMember"  style="width:140px" >Total Member: </label>
			<input type="text"  name="totMember"  id="totMember" / >
			</p>
			
			<p>
			<button onclick="createInputField()"  type="button"  >Create Memeber</button>
			</p>
			
			</fieldset>
		</form>

</div>

<div id="totalMemberInput"  style="display:none">
		<form class="cmxform"  action="${pageContext.request.contextPath}/Member"    method="POST"    id="memberSave"  name="memberSave">
		<fieldset>
			<legend>Enter your Total Number of Member:</legend>
			
			<p>
			<label for="member1"  style="width:140px" >Member 1: </label>
			<input type="text"  name="member1"  id="member1"  value="currentUser"  / >
			</p>
			
			<p>
			<input type="submit"    value="submit">
			</p>
			
			</fieldset>
		</form>

</div>
</body>
<script>

function createInputField(){
		
		var theFormDiv= document.getElementById("totalMemberInput");
		
		var totMember=document.getElementById("totMember").value;
		
		var theForm = document.getElementById("memberSave");
		
			theFormDiv.style.display="block";
				for(var i=0;i<totMember;i++){
					 	
					var input = document.createElement('input');
					
				    input.type = 'text';
				    
				    input.name = 'member'+(i+2);
				    input.id = 'member'+(i+2);
				    
				    input.value = 'NEW MEMBER NAME '+(i+2);
				    
				    theForm.appendChild(input);
		}
		    
}

</script>
</html>