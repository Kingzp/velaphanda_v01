<%@include file="templates/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Approved Orders | Velaphanda Trading & Projects</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"> 
  <link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/custom/css/vela_custom.css" />">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/datatables/1.10.13/css/db_site_ui.css" />">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/datatables/1.10.13/css/demo_table_jui.css" />">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/datatables/1.10.13/css/jquery-ui.css" />">

<body>
	<div class="velaphanda_containter">
	  <c:import url="templates/techniciannavbar.jsp"></c:import>
		<div class="container">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title">
						<div align="center">
							<b>Receive Orders</b>
						</div>
					</h3>
				</div>
				<div class="panel-body">
				
				<c:if test="${not empty retMessage }">
						<div class="alert alert-info" role="alert">
							<c:out value="${ retMessage}">
							</c:out>
						</div>
					</c:if>
					<div class="tab-content">
								<!-- Below table will be displayed as Data table -->
									<table id="myDatatable" class="display datatable">
										<thead>
											<tr>
												<th>Order No </th>
												<th>Order Status</th>
												<th>Approved Date</th> 
												<th>Stock Type</th>
												 <th>Receive Order</th>
												
											</tr>
										</thead>
										<tbody>
											<!-- Iterating over the list sent from Controller -->
											 <c:forEach var="list" items="${shipment}">
												<tr>
													<td>${list.orderNum}</td>
													<td>${list.status}</td>
													<td>${list.dateOrdered}</td>
													<td>${list.stockType}</td>
													<td><a href="shipmentReceived?recordID=<c:out value='${list.recordID}'/>">Receive Order</a></td>
													
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
<script type="text/javascript"	src="<c:url value="/resources/jquery/1.12.4/jquery.min.js" />"></script>
<script type="text/javascript"	src="<c:url value="/resources/datatables/1.10.13/js/jquery.dataTables.min.js" />"></script>
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
</html>
