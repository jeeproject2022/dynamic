<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background:navy;">
<%
int total=0;
String choice=request.getParameter("choice");
String quantity=request.getParameter("quantity");
String rbutton=request.getParameter("radio");
String chbox=request.getParameter("check");
String ship=null;
int price=0;
int cost=0;
total=5*Integer.parseInt(quantity);
if(rbutton==null)
{
price=5;
}
else if (rbutton.equals("Snail Mail"))
{
ship="Snail Mail";
price=5;
}
else if (rbutton.equals("Federal Express"))
{
ship="Federal Express";
price=15;
}
else if (rbutton.equals("Transporter"))
{
ship="Transporter";
price=5000;
}
%>
<h2 align="center">Your Bill</h2>
<form>
<table border="1" style="background: white;align=center;">
<tr>
<td>Item</td>
<td><%=quantity+""+choice%> </td>
</tr>
<tr>
<td>Total Item Cost</td>
<td><%= total %></td>
</tr>
<tr>
<td>Shipping via Snail Mail<%= ship %></td>
<td><%= price %></td>
</tr>
<%
if(chbox!=null)
{
cost=10;
%>
<tr>
<td><b>Gip Wrap</b></td>
<td><%= cost %></td>
</tr>
<% } %>
<tr>
<td><b>Total Final Cost</b></td>
<td>$<%= total+price+cost %></td>
</tr>
</table>
</form>
</body>
</html>