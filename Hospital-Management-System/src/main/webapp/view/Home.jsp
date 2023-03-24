<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">








<html>
<head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
  border-right:1px solid #bbb;
}

li:last-child {
  border-right: none;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}


</style>
</head>
<body>

<ul>
      <li><a href="Home" >Home</a></li>
      <li> <a href="Data">DataPage</a></li>
      <li><a href="About">About</a></li>
      <li> <a href="Service">Services</a></li>
      <li><a href="ContactPage">Contact</a></li>
      <li><a href="/">Login</a></li>
      <li><a href="SignupPage">Sign Up</a></li>
      <li> <a href="multipleRecord">Show Record</a></li>
      <li> <a href="/">Log Out</a></li>
      
 </ul>



</body>
</html>



