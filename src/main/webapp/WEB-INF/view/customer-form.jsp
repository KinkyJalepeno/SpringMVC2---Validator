<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Customer Entry Form</title>

    <style>
        .error {color: red}
    </style>

</head>


<body>
<i>Fill out the name fields - (*)denotes required field</i>
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
        <br><br>
        <input type="submit" value="Submit">


    </form:form>

</body>
</html>

<!--

To use a separate css form, images and javascript forms add in thr following line to the Spring
servlet.xml file anywhere (this assumed there is a directory called resources under WEB-INF

<mvc:resources mapping="/resources/**" location="/resources/"></mvc:resources>

Now in your view pages, you can access the static files using this syntax:


<head>

<link rel="stylesheet" type="text/css"

href="${pageContext.request.contextPath}/resources/css/my-test.css">

And for Javascript
<script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>

</head

-->
