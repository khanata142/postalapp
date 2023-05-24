<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PostalDetails</title>
<style>
header {
	margin: auto;
	border: 1px solid black;
	background-color: #e7e3e3;
	text-align: center;
	font-size: 20px;
	font-weight: bold;
	color: blue;
}

table {
	border: 1px solid black;
	margin: auto;
}

th, tr, td {
	border: 1px solid black;
}

td {
	color: #060bab;
	font-size: 20px;
}
</style>
</head>
<!-- BLUEPRINT OF THE OBJECT WE ARE GETTING FROM API
{
   "Message":"Number of Post office(s) found: 21",
   "Status":"Success",
   "PostOffice":[
      {
         "Name":"Baroda House",
         "Description":"",
         "BranchType":"Sub Post Office",
         "DeliveryStatus":"Non-Delivery",
         "Circle":"New Delhi",
         "District":"Central Delhi",
         "Division":"New Delhi Central",
         "Region":"Delhi",
         "State":"Delhi",
         "Country":"India"
      }
   ]
}
-->
<body>
	<header>
		${postalDetails.message}<br> ${postalDetails.status}
	</header>
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Description</th>
				<th>BranchType</th>
				<th>DeliveryStatus</th>
				<th>Circle</th>
				<th>District</th>
				<th>Division</th>
				<th>Region</th>
				<th>State</th>
				<th>Country</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${postalDetails.postOffice}" var="postOffice">
				<tr>
					<td>${postOffice.name}</td>
					<td>${postOffice.description}</td>
					<td>${postOffice.branchType}</td>
					<td>${postOffice.deliveryStatus}</td>
					<td>${postOffice.circle}</td>
					<td>${postOffice.district}</td>
					<td>${postOffice.division}</td>
					<td>${postOffice.region}</td>
					<td>${postOffice.state}</td>
					<td>${postOffice.country}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>