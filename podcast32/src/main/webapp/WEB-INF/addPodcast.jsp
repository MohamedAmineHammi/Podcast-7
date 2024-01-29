<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add NEW &#9827; Poadcast 7 &#9827;</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Neonderthaw|Londrina+Shadow">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light"
		style="background-image: url('https://raw.githubusercontent.com/MohamedAmineHammi/Podcast-7/main/Materiel/NAviBar2.png'); height: 40vh; background-repeat: no-repeat; background-size: cover;">

		<div class="container-fluid">
			<a class="navbar-brand" href="https://github.com/MohamedAmineHammi"><img
				src="https://raw.githubusercontent.com/MohamedAmineHammi/Podcast-7/main/Materiel/Sponsor.jpeg"
				width="100" height="100"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarText"
				aria-controls="navbarText" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#"></a></li>
					<li class="nav-item"><a class="nav-link" href="#"></a></li>
					<li class="nav-item"><a class="nav-link" href="#"></a></li>
				</ul>
				<span class="navbar-text"> <a class="headerLink"
					href="/logout"><img
						src="https://t4.ftcdn.net/jpg/00/76/10/77/360_F_76107792_WSiAYE9s7FxMduHgVK2NsaAHTOJRY2Kv.jpg"
						width="100" height="100"></a>
				</span>
			</div>
		</div>
	</nav>





	<section class="vh-100"
		style="background-image: url('https://castos.com/wp-content/uploads/2023/08/best-podcast-microphones-for-beginners.jpg'); height: 100vh; background-repeat: no-repeat; background-size: cover;">

		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">PODCAST7 ADD Yours</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarText"
					aria-controls="navbarText" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarText">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="http://localhost:8080/home">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="/podcasts/new">New
								Podcast</a></li>
						<li class="nav-item"><a class="nav-link" href="#"></a></li>
					</ul>
					<span class="navbar-text"> <a class="headerLink"
						href="https://play.google.com/store/apps/details?id=fm.anchor.android&hl=ln"><img
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTmNYlGTAMipInmOGxfiSwZt_ug0xfjlIR-fSUP2GpWkSz1orWAIWuRXtNZ1iV_Czudw&usqp=CAU"
							width="160" height="40"></a>
					</span>
				</div>
			</div>
		</nav>
		<br>
		<div class="myContainer">
			<form:form class="newForm" action="/podcasts/new" method="POST"
				modelAttribute="newPodcast"
				style="background-image: url('https://e0.pxfuel.com/wallpapers/804/859/desktop-wallpaper-purple-color-background-best.jpg'); background-repeat: no-repeat; background-size: cover;">


				<div class="formGroup2">
					<form:label path="podcastName">NAME : </form:label>
					<form:input path="podcastName" />
					<form:errors class="errors" path="podcastName" />
				</div>
				<div class="formGroup2">
					<form:label path="podcastHost">HOST : </form:label>
					<form:input path="podcastHost" />
					<form:errors class="errors" path="podcastHost" />
				</div>
				<div class="formGroup2">
					<form:label path="genre">GENRE : </form:label>
					<form:input path="genre" />
					<form:errors class="errors" path="genre" />
				</div>
				<div class="formGroup2">
					<form:label path="podcastDescription">DESCRIPTION : </form:label>
					<form:textarea path="podcastDescription" />
					<form:errors class="errors" path="podcastDescription" />
				</div>
				<div class="formGroup2">
					<form:input type="hidden" path="creator" value="${user.id}" />
				</div>
				<input type="submit" class="btn btn-outline-primary submit"
					value="ADD Podcast" />
			</form:form>
		</div>
	</section>

</body>
</html>