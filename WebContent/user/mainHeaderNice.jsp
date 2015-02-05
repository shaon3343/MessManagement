<%@page import="secureData.UserBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <% 
	 HttpSession sessioncheck = request.getSession(false);
	 if(sessioncheck==null)
	 {
		 
		 response.sendRedirect(request.getContextPath());
	 }
	 UserBean user = (UserBean) session.getAttribute( "currentSessionUser" );
	 if(user==null)
	 {
	 	response.sendRedirect(request.getContextPath());
	 } 
 %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <META HTTP-EQUIV="refresh" CONTENT="<%= session.getMaxInactiveInterval() %>; URL=${pageContext.request.contextPath}/" />

        <title>NCS Nationwide Collection Service </title>

        <!-- Foundation framework -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/foundation/stylesheets/foundation.css" />
        <!-- jquery UI -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/jQueryUI/css/Aristo/Aristo.css" media="all" />
        <!-- fancybox -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/fancybox/jquery.fancybox-1.3.4.css" media="all" />
        <!-- chosen (select element extended) -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/chosen/chosen.css" media="all" />
        <!-- tooltips -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/qtip2/jquery.qtip.min.css" />
        <!-- main styles -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
		
		
		<!-- - added lately -->
		 <script src="${pageContext.request.contextPath}/javascripts/jquery-ui.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/javascripts/jquery-1.9.0.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/javascripts/jquery.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/javascripts/jquery.validate.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/javascripts/jquery.validate.js" type="text/javascript"></script>
		<!-- added all above later  -->
		
        <!-- Google fonts -->
            <link href='${pageContext.request.contextPath}/stylesheets/fonts/OpenSansCondensed.css' rel='stylesheet' />
            <link href='${pageContext.request.contextPath}/stylesheets/fonts/TerminalDosis.css' rel='stylesheet' />

        <!-- Favicons and the like (avoid using transparent .png) -->
            <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.png" />
            <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/icon.png" />

        <!--[if lt IE 9]>
            <link rel="stylesheet" href="foundation/stylesheets/ie.css" />
            <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body class="ptrn_a grdnt_a mhover_a">
		<header>
			<div class="container head_s_a">
				<div class="row sepH_b">
					<div class="six columns">
						<div class="row">
							<div class="five phone-two columns">
								<div id="logo">
									<img src="${pageContext.request.contextPath}/img/logo.png" alt="" />
								</div>
							</div>
							<!-- <div class="seven phone-two columns">
								<form action="search.php" id="search_box" method="post">
									<input name="query" id="query" type="text" size="40" placeholder="Find a city&hellip;" autocomplete="off" />
								</form>
							</div> -->
						</div>
					</div>
					<div class="six columns">
						<div class="user_box cf">
							<div class="user_avatar">
								<img src="${pageContext.request.contextPath}/img/user_male.png" alt="" />
							</div>
							<div class="user_info user_sep">
								<p class="sepH_a">
									<strong>Mary Adams</strong>
								</p>
								<span>
									<a href="#" class="sep">Settings</a>
									<a href="#" onclick="logout()" >Log out</a>
								</span>
							</div>
							
							<!--  SHOWING NOTIFICATION ICONS  -->
				<!-- 	<%-- 	<div class="ntf_bar user_sep">
								<a href="#ntf_mail_panel" class="ntf_item" style="background-image: url(${pageContext.request.contextPath}/img/ico/icSw2/32-Mail.png)">
									<span class="ntf_tip ntf_tip_red"><span>12</span></span>
								</a>
								<a href="#ntf_tickets_panel" class="ntf_item" style="background-image: url(${pageContext.request.contextPath}/img/ico/icSw2/32-Day-Calendar.png)">
									<span class="ntf_tip ntf_tip_red"><span>122</span></span>
								</a>
								<a href="#ntf_comments_panel" class="ntf_item" style="background-image: url(${pageContext.request.contextPath}/img/ico/icSw2/32-Speech-Bubble.png)">
									<span class="ntf_tip ntf_tip_blue"><span>8</span></span>
								</a>
							</div> --%>  -->
						</div>
					</div>
				</div>
				<div class="row">
					<div class="twelve columns">
						<nav id="smoothmenu_h" class="ddsmoothmenu">
							<ul class="cf">
								<li>
									<a href="javascript:void(0)" class="mb_parent first_el">Dashboard</a>
									<ul style="display:none">
										<li><a href="${pageContext.request.contextPath}/">HOME</a></li>
										<!-- <li><a href="drag_drop.html">Drag &amp; Drop</a></li> -->
									</ul>
								</li>
								<li>
									<a href="javascript:void(0)" class="mb_parent">Registration</a>
									<ul style="display:none">
										<li><a href="${pageContext.request.contextPath}/user/merchant/merchantregistration.jsp">Merchant Registration</a></li>
										<li><a href="${pageContext.request.contextPath}/user/email/EmailFormat.jsp">Email Format Registration</a></li>
									</ul>
								</li>
								
								
							<!-- 	<li>
									<a href="javascript:void(0)" class="mb_parent">Sub-levels</a>
									<ul style="display:none">
										<li>
											<a href="#">First level</a>
											<ul style="display:none">
												<li>
													<a href="#">Second level</a>
													<ul style="display:none">
														<li><a href="#">Third level</a></li>
														<li><a href="#">Third level</a></li>
													</ul>
												</li>
												<li><a href="#">Second level</a></li>
											</ul>
										</li>
										<li><a href="#">First level</a></li>
										<li><a href="#">First level</a></li>
										<li><a href="#">First level</a></li>
									</ul>
								</li> -->
								<!-- <li>
									<a href="documentation.html" class="mb_parent">Documentation</a>
								</li> -->
							</ul>
						</nav>
						
					</div>
				</div>
			</div>
		
			
			<!-- notifications content -->
		<!--	< div style="display:none">
				<div id="ntf_tickets_panel" style="display:none">
					<p class="sticky-title">New Tickets</p>
					<ul class="sticky-list">
						<li>
							<a href="#">Admin should not break if URL&hellip;</a>
							<p><span class="s_color small">updated 01.04.2012</span></p>
						</li>
						<li>
							<a href="#">Displaying submenus in custom&hellip;</a>
							<p><span class="s_color small">updated 01.04.2012</span></p>
						</li>
						<li>
							<a href="#">Featured image on post types.</a>
							<p><span class="s_color small">updated 24.03.2012</span></p>
						</li>
						<li>
							<a href="#">Multiple feed fixes and&hellip;</a>
							<p><span class="s_color small">updated 22.03.2012</span></p>
						</li>
						<li>
							<a href="#">Automatic line breaks in&hellip;</a>
							<p><span class="s_color small">updated 18.03.2012</span></p>
						</li>
						<li>
							<a href="#">Wysiwyg bug with shortcodes.</a>
							<p><span class="s_color small">updated 08.10.2012</span></p>
						</li>
					</ul>
					<a href="#" class="gh_button btn-small">Show all tickets</a>
				</div>
				<div id="ntf_comments_panel" style="display:none">
					<p class="sticky-title">New Comments</p>
					<ul class="sticky-list">
						<li>
							<a href="#">Lorem ipsum dolor sit amet&hellip;</a>
							<p><span class="s_color small">John Smith on Maiden Castle, Dorset (29.10.2012)</span></p>
						</li>
						<li>
							<a href="#">Lorem ipsum dolor sit&hellip;</a>
							<p><span class="s_color small">John Smith on Draining and development&hellip; (29.10.2012)</span></p>
						</li>
					</ul>
					<a href="#" class="gh_button btn-small">Show all comments</a>
				</div>
				<div id="ntf_mail_panel" style="display:none">
					<p class="sticky-title">New Messages</p>
					<ul class="sticky-list">
						<li>
							<a href="#">Lorem ipsum dolor sit amet&hellip;</a>
							<p><span class="s_color small">From John Smith (29.10.2012)</span></p>
						</li>
						<li>
							<a href="#">Lorem ipsum dolor sit&hellip;</a>
							<p><span class="s_color small">From John Smith (28.10.2012)</span></p>
						</li>
					</ul>
					<a href="#" class="gh_button btn-small">Show all messages</a>
				</div>
			</div> -->
		</header>
