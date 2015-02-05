<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <footer class="container" id="footer">
			<div class="row">
				<div class="twelve columns">
                    Copyright &copy; 2015 biTS
				</div>
			</div>
		</footer>
		<div class="sw_width">
			<img class="sw_full" title="switch to full width" alt="" src="${pageContext.request.contextPath}/img/blank.gif" />
			<img style="display:none" class="sw_fixed" title="switch to fixed width (980px)" alt="" src="${pageContext.request.contextPath}/img/blank.gif" />
		</div>

		<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/lib/jQueryUI/jquery-ui-1.8.18.custom.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/s_scripts.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.ui.extend.js"></script>
		<script src="${pageContext.request.contextPath}/lib/qtip2/jquery.qtip.min.js"></script>
		
        <script src="${pageContext.request.contextPath}/lib/validate/jquery.validate.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.customforms.js"></script>
		<script src="${pageContext.request.contextPath}/js/pertho.js"></script>
		<script>
		 	$(document).ready(function() {
				//* common functions
				prth_common.init();

				//* form validation
				prth_form_validation.init();
			}); 
		</script>
		
		<!--  LOGOUT FORM HIDDEN  -->
	<form id="logout" action="logout" method="POST">
     <input type="hidden" id="chk" value="l_out" name="chk" />
	</form>

  <script>
    function logout(){
    	document.getElementById('logout').action ="${pageContext.request.contextPath}/validateServlet";
    	document.getElementById('logout').submit();
    	 
    }
    </script>
	</body>
</html>
