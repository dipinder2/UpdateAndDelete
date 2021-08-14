<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Demo JSP</title>
    </head>
<body>
	<h1><c:out value="${book.title}"/></h1>
	<p>Description: <c:out value="${book.description}"/></p>
	<p>Language: <c:out value="${book.language}"/></p>
	<p>Number of pages: <c:out value="${book.numberOfPages}"/></p>
	<a href="/books/${book.id}/edit">Edit Book</a>
	<form action="/books/${book.id}" method="post">
	    <input type="hidden" name="_method" value="delete">
	    <input type="submit" value="Delete">
	</form> 
</body>
</html>