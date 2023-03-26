<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//http 1.1
    response.setHeader("Pragma", "no-cache");//http 1.0
    response.setHeader("Expires", "0");//proxies
     
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error page</title>
<style>
body {
  background-color: #fdf1ec;
}</style>
</head>
<body>
<div ><center><h1>No Events Found</h1></center></div>


</body>
</html>