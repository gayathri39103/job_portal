<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.*"%>
<%@page import="com.dao. JobDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="all_components/all_css.jsp"%>

</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_components/navbar.jsp"%>
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="card">
						<div class="card-body">
							<div class="text-center text-primary">
								<i class="fas fa-user-circle fa-3x"></i>
							</div>
							<table class="table">
								<tbody>
									<tr>
										<th scope="row">Name</th>
										<th>${userobj.name }</th>
									</tr>
									<tr>
										<th scope="row">Qualification</th>
										<th>${userobj.qualification }</th>
									</tr>
									<tr>
										<th scope="row">Email</th>
										<th>${userobj.email }</th>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<a href="button" class="btn btn-primary">Edit</a>
				</div>
			</div>
		</div>
	</div>