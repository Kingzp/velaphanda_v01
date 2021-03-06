<%@include file="templates/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Display User Log Activities | Velaphanda Trading & Projects</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style class="anchorjs"></style>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/custom/css/vela_custom.css" />">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/datatables/1.10.13/css/db_site_ui.css" />">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/datatables/1.10.13/css/demo_table_jui.css" />">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/datatables/1.10.13/css/jquery-ui.css" />">

	

</head>
<body class="bb-js">
	<div class="velaphanda_containter">
		<c:import url="templates/navbar.jsp"></c:import>
		<div class="container">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title">
						<div align="center">
							<b>Employee Login Activities</b>
						</div>
					</h3>
				</div>
				<div class="panel-body">
					<div class="tab-content">
					
						<!-- Below table will be displayed as Data table -->
						<table id="myDatatable" class="display datatable">
							<thead>
								<tr>
									<th>First Name</th>
									<th>Last Name</th>
									<th>Email</th>
									<th>Login Date Time</th>
									<th>Logout Date Time</th>
								</tr>
							</thead>
							<tbody>
								<!-- Iterating over the list sent from Controller -->
								<c:forEach var="list" items="${loginUsers}">
									<tr>
										<td>${list.employee.firstName}</td>
										<td>${list.employee.lastName}</td>
										<td>${list.employee.email}</td>
										<td>${list.loginDateTime}</td>
										<td>${list.logoutDateTime}</td>
									</tr>
              					</c:forEach>
							</tbody>
						</table>
						
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

</body>
<!-- Scripts -->
<script type="text/javascript" src="<c:url value="/resources/jquery/1.12.4/jquery.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/datatables/1.10.13/js/jquery.dataTables.min.js" />"> </script>
	

	
<!-- Paging the table -->
<script type="text/javascript">
		$(document).ready(function() {
			$('#myDatatable').DataTable({
				"jQueryUI" : true,
				"pagingType" : "full_numbers",
				"lengthMenu" : [ [ 10, 50, -1 ], [ 10, 50, "All" ] ]
			/* few more options are available to use */
			});
		});
</script>

<!-- Deactivate script -->
<script>
$(document).on('click', ':not(form)[data-confirm]', function(e){
    if(!confirm($(this).data('confirm'))){
      e.stopImmediatePropagation();
      e.preventDefault();
		}
});
</script>

<!-- /Scripts -->

</html>
