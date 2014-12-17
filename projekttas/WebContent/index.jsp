<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Auction Service</title>
</head>
<body>
		<form method="post" action="addAuction">
        Insert Auction name: <br />
        <input type="text" name="name" /><br /> 
        Insert category: <br />
        <input type="text" name="category" /><br /> 
        Insert description: <br />
        <input type="text" name="description" /><br /> 
        Insert location: <br />
        <input type="text" name="location" /><br /> 
        Insert duration: <br />
        <input type="text" name="duration" /><br /> 
        Insert price: <br />
        <input type="text" name="price" /><br /> 
        <input type="submit" value="Add Auction">
    </form>
</body>
</html>