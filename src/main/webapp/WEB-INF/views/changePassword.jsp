<%@include file="templates/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Change Password | Velaphanda Trading & Projects</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/custom/css/vela_custom.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap-3.3.7/css/bootstrap.min.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrapValidator-0.5.3/css/bootstrapValidator.min.css" />"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap-3.3.7/css/datepicker.min.css" />">
</head>
<body>
	<div class="velaphanda_containter">
		<c:import url="templates/navbarpassword.jsp"></c:import>
		<div class="container">
			<c:if test="${not empty retMessage }">
				<div class="alert alert-danger" role="alert">
					<c:out value="${ retMessage}">
					</c:out>
				</div>
			</c:if>
			<c:if test="${not empty message }">
				<div class="alert alert-info" role="alert">
					<c:out value="${ message}">
					</c:out>
				</div>
			</c:if>
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title">
						<div align="center">
							<b>Change Password</b>
						</div>
					</h3>
				</div>
				<div class="panel-body">
					<div class="tab-content">
						<form:form method="post" class="well form-horizontal"
							action="changePasswords" modelAttribute="changePasswords"
							id="changePass">

							<!--First column-->
							<div class="col-md-6">

								<!-- Text input Email-->
								<div class="form-group">
									<label class="col-md-3 control-label">Email</label>
									<div class="col-md-6 inputGroupContainer">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-envelope"></i></span> <input id="email"
												name="email" placeholder="Email" class="form-control"
												type="email" value="${loggedInUser.email }"
												readonly="readonly">
										</div>
									</div>
								</div>
								<!-- Text input Password-->
								<div class="form-group">
									<label class="col-md-3 control-label">Full Names</label>
									<div class="col-md-6 inputGroupContainer">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-lock"></i></span> <input
												placeholder="Full Names" class="form-control" type="text"
												value="${loggedInUser.firstName } ${loggedInUser.lastName }"
												readonly="readonly">
										</div>
									</div>
								</div>

							</div>
							<!-- /F Column -->

							<div class="col-md-6">
								<!-- Text input New Password-->
								<div class="form-group">
									<label class="col-md-3 control-label">New Password</label>
									<div class="col-md-6 inputGroupContainer">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-lock"></i></span> <input
												name="newpassword" id="newpassword"
												placeholder="New Password" class="form-control"
												type="password">
										</div>
									</div>
								</div>
								<!-- Text input Confirm Password-->
								<div class="form-group">
									<label class="col-md-3 control-label">Confirm Password</label>
									<div class="col-md-6 inputGroupContainer">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-lock"></i></span> <input
												name="confirmpassword" id="confirmpassword"
												placeholder="Confirm Password" class="form-control"
												type="password">
										</div>
									</div>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-offset-2 col-sm-8">
									<br> <br>
									<button type="submit" name="changepassword" id="changepassword"
										class="btn btn-lg btn-primary btn-block">Change
										Password</button>

								</div>
							</div>
						</form:form>

					</div>
					<!-- /tab-content -->
				</div>
				<!-- /panel body -->
			</div>
			<!--/panel success class-->
		</div>
		<!-- /Container -->
		<!-- Footer -->
		<c:import url="templates/footer.jsp"></c:import>
		<!--/ Footer -->
	</div>
	<!-- / velaphanda_containter -->

	<!-- Script -->

	<script type="text/javascript"
		src="<c:url value="/resources/jquery/1.12.4/jquery.min.js" />"></script>
	<script type="text/javascript"
	src="<c:url value="/resources/jquery/1.13.1/jquery.validate.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/bootstrap-3.3.7/js/bootstrap.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/bootstrapValidator-0.5.3/js/bootstrapValidator.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/bootstrap-3.3.7/js/bootstrap-datepicker.min.js" />"></script>
		
	<script type="text/javascript" src="<c:url value="/resources/custom/js/velas_validations.js"/>"></script>
	
	<!-- /Script -->
	
</body>
</html>
