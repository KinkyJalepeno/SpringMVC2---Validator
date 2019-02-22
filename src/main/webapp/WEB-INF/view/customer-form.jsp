<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Entry Form</title>
</head>
<body>
Fill out the name fields - (*)denotes required field
<br><br>
    <!--this will send to Spring "processForm" which needs to be mapped in the CustomerController
    assign the data to the modelAttribute "customer" -->
    <form:form action="processForm" modelAttribute="customer">


        <!--we need to set firstName and lastName in the Customer class, path="firstName" 4ex
        will call setFirstName() to update the String firstName -->
        First name: <form:input path="firstName"/>
        <br><br>
        Last name: <form:input path="lastName"/> (*)

        <!--since we are validating on the lastName field-->
        <form:errors path="lastName" cssClass="error"/>



    </form:form>




</body>
</html>
