<html>
<head>
<title> Simple JSP page </title>
</head>
<body>
<h3>Using Expression tag to display the result of the expression </h3>
<%
test dateFormat = new test("yyyy/MM/dd HH:mm:ss");
	Date date = new Date();
	System.out.println(dateFormat.format(date));
%>        
</body>
</html>