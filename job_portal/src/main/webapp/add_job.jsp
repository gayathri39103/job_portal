<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Jobs</title>
<%@include file="all_components/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<c:if test="${userobj.role ne 'admin' }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<%@include file="all_components/navbar.jsp"%>
	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>

						<c:if test="${not empty succMsg }">
							<div class="alert alert-success" role="alert">${ succMsg}</div>
							<c:remove var="succMsg" />
						</c:if> 
						<h5>Add Jobs</h5>
					</div>
					<form action="add_job" method="post">
						<div class="form-group">
							<label>Enter Title</label> <input type="text" name="title"
								required class="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label> Location </label><select name="location"
									class="custom-select" id="inlineformCustomSelectPref">
									<option selected>Choose....</option>
									<option value="Odisha">Odisha</option>
									<option value="Jharkhand">Jharkhand</option>
									<option value="Hyderabad">Hyderabad</option>
									<option value="Banglore">Banglore</option>
									<option value="Chennai">Chennai</option>
									<option value="Gujarat">Gujarat</option>
									<option value="Bhubaneswar">Bhubaneswar</option>
									<option value="Delhi">Delhi</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label> Category </label><select name="category"
									class="custom-select" id="inlineformCustomSelectPref">
									<option selected>Choose....</option>
									<option value="IT">IT</option>
									<option value="Developer">Developer</option>
									<option value="Banking">Banking</option>
									<option value="Engineer">Engineer</option>
									<option value="Teacher">Teacher</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label> Status </label><select name="status">
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"></textarea>
						</div>
						<button class="btn btn-success">Publish Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
