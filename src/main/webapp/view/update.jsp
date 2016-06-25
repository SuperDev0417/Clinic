<%@ page language="java" contentType="text/html; charset=US-ASCII"
         pageEncoding="US-ASCII" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title>Clinical-Management</title>
</head>
<body>
<div class="welcome">
    <h3>Doctor <s:property value="doctor.firstName"></s:property> <s:property value="doctor.lastName"></s:property></h3>
    <spa class="logout">
        <s:form action="logout">
            <s:submit value="Logout" cssClass="logout-button"></s:submit>
        </s:form>
    </spa>
</div>
<div>
    <h4 class="table-name">Add below your patient information</h4>
</div>
<div class="update-patient">
    <s:form action="create-patient">
        <s:textfield name="patient.firstName" label="First Name"></s:textfield>
        <s:textfield name="patient.lastName" label="Last Name"></s:textfield>
        <s:textfield name="dob" label="Date of Birth" id="datepicker"></s:textfield>
        <s:textfield name="patient.address" label="Address"></s:textfield>
        <s:textfield name="patient.phoneNumber" label="Phone Number"></s:textfield>
        <s:submit value="Update" cssClass="btn btn-default"></s:submit>
    </s:form>
    <button class="btn btn-danger" id="cancel">Cancel</button>
</div>
<s:include value="master.jsp"></s:include>
</body>
</html>