<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>index</title>
<style>
* {
	box-sizing: border-box;
}

.container {
	height: 530px;
	width: 305px;
	border: 2px solid #817a7a;
	border-radius: 20px;
	background-color: #e1e1dc;
	margin: auto;
}

.formclass {
	margin-top: 190px;
}

.header {
	background-color: black;
	height: 55px;
	width: 100%;
	border-top-left-radius: 18px;
	border-top-right-radius: 18px;
	color: #f36262;
	font-size: xx-large;
	font-weight: bold;
	padding: 10px;
	text-align: center;
}

.button {
	margin: 10px 10px 10px 120px;
	width: 80px;
	border-radius: 5px;
}

#pin {
	border-radius: 5px;
	height: 30px;
}

label {
	margin-left: 5px;
	font-size: 19px;
}

.button:hover {
	background-color: green;
}
</style>
</head>
<body>
	<div class="container">
		<div class="header">Welcome</div>
		<div class="formclass">
			<form action="getdetails" method="post">
				<label for="pin">Enter Pincode:</label> <input type="number"
					id="pin" name="pincode"> <input type="submit" value="Enter"
					class="button">
			</form>
		</div>
	</div>
</body>

</html>