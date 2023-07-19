<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>M.I.T. E.R.P.</title>
<link rel="icon" type="image/x-icon" href="img/mit_logo.png" />
<%@ include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}
</style>
</head>
<body>
	<%@ include file="component/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">FACULTY LOGIN</p>
						<form action="faclogin" method="post">
							<div class="mb-3">
								<label for="validationServer02" class="form-label">LOGIN ID</label><input required
									name="facid" type="text" maxlength="20" pattern="^[0-9]*$" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">PASSWORD</label><input required
									name="facpass" type="password" class="form-control">									
							</div>
							<button type="submit" class="btn bg-primary text-white col-md-12">LOGIN</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="component/footer.jsp"%>
</body>
</html>