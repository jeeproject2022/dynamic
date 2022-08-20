<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#design
{
border:solid blue 5px;
border-radius:15px;
background:#F63;
width:310px;
height:500px;
margin-left: 500px;
margin-top: 40px;
}
</style>
</head>
<body>
<div id="design">
<form action="Bill.jsp">
<h3 align="center">Item to Purchase (All Items $5!)</h3>
<select name="choice" size="3" style="margin-left: 30px;">
<option>Pet Rock</option>
<option>Beanie Baby</option>
<option>Pex Dispenser</option>
</select><br><br><br>
<label style="margin-left: 30px;">Quantity<input type="text" name="quantity" size="3"></label><br>
<fieldset>
<legend><h4 style="margin-left: 30px;">Shipping</h4></legend>
<input type="radio" name="radio" value="Snail Mail">Snail Mail($5)<br>
<input type="radio" name="radio" value="Federal Express">Federal
Express ($15)<br>
<input type="radio" name="radio" value="Transporter">Transporter($5000)<br>
<input type="checkbox" name="check" value="Gift Wrapping">Gift
Wrapping ($10)
</fieldset>
<br>
<br>
<input style="margin-left: 30px;" type="submit" name="place" value="PLACE ORDER">
</div>
</form>
</body>
</html>