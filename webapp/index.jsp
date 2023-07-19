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
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>
	<%@ include file="component/navbar.jsp"%>
	<div id="carouselExampleControls" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/OIP1.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/download1.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/download2.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/download3.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/download4.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>



	<div class="container p-3">
		<p class="text-center fs-2">CONTACT AND ADDRESS</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">

					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">ADDRESS</p>
								<p>Ram Ganga Vihar,Phase-2</p>
								<p>Moradabad-244001(U.P.)</p>
								<p>INDIA</p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">CONTACT US</p>
								<p>Email Us:- registrar@mitmoradabad.edu.in /
									director@mitmoradabad.edu.in</p>
								<p>Acadmic Office:- mitdr.academic@gmail.com</p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card paint-card mt-2">
							<div class="card-body">
								<p class="fs-5">CALL US</p>
								<p>For-Admission: +91-6399133001 / +91-6399133002</p>
								<p>Office- +91-591-245241</p>
							</div>
						</div>
					</div>

					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5"></p>
								<p></p>
							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="col-md-4">
				<img alt="" src="img/mit_logo.png">
			</div>
		</div>

	</div>


	<%@ include file="component/footer.jsp"%>
</body>
</html>