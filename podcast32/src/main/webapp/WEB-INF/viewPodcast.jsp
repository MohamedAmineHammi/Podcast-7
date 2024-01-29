<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><c:out value="${ podcast.podcastName } "></c:out>&#9827;
	Poadcast 7 &#9827;</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Neonderthaw|Londrina+Solid|Londrina+Shadow">
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
				<a class="navbar-brand" href="#">${ podcast.podcastName }</a>
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
		<div class="container text-center">
			<div class="row">
				<div class="col">

					<div class="card text-center"
						style="background-image: url('https://c4.wallpaperflare.com/wallpaper/262/369/273/5bd0bdf2ca500-wallpaper-preview.jpg'); background-repeat: no-repeat; background-size: cover;">


						<div class="card-header">
							<ul class="nav nav-pills card-header-pills">
								<c:if test="${ podcast.creator.id == user.id }">

									<li class="nav-item"><a class="btn btn-outline-success"
										href="/podcasts/${podcast.id }/episodes/add">Add New
											Episode</a></li>
									<li class="nav-item"><a class="btn btn-outline-secondary"
										href="/podcasts/${podcast.id}/edit">Edit</a></li>
									<li class="nav-item">
										<form class="center" action="/podcasts/delete/${podcast.id}"
											method="post">
											<input type="hidden" name="_method" value="delete"> <input
												type="submit" value="Delete Podcast"
												class="btn btn-outline-danger">
										</form>
									</li>
								</c:if>
							</ul>
						</div>
						<div class="card-body">
							<h1 class="londrinaSolid bluePink center">${ podcast.podcastName }</h1>
							<p class="center londrinaSolid">${ podcast.podcastDescription }
							</p>
							<h5 class="center londrinaSolid">Hosted By : ${ podcast.podcastHost }</h5>
							<h5 class="center londrinaSolid">Genre : ${ podcast.genre }</h5>

							<h3 class="londrinaSolid bluePink1 center">Episodes :</h3>
							<c:if test="${podcast.episodes.size() == 0 }">
								<h5 class="center londrinaSolid">Nothing Here Yet</h5>
								<c:if test="${ podcast.creator.id == user.id }">
									<h5 class="center londrinaSolid">Please Add an Episode</h5>
								</c:if>
								<c:if test="${ podcast.creator.id != user.id }">
									<h5 class="center londrinaSolid">Please Check Back Soon!</h5>
								</c:if>
							</c:if>
							<table class="table table-dark ">
								<c:forEach var="episode" items="${ podcast.episodes}"
									varStatus="status">
									<tr>
										<td>
											<div>
												<h6 class="londrinaSolid">
													Ep. ${status.count } : <a
														href="/podcasts/${podcast.id }/episodes/${episode.id }">${ episode.episodeTitle }</a>
												</h6>
											</div>
											<div>
												<p>${ episode.episodeDescription }</p>
											</div>
										</td>
										<c:if test="${ podcast.creator.id == user.id }">
											<td class="linkGroup"><a class="edit"
												href="/podcasts/${podcast.id}/episodes/${episode.id}/edit">edit</a>
												<div class="spacing">
													<form
														action="/podcasts/${podcast.id}/episodes/${episode.id}/delete"
														method="post">
														<input type="hidden" name="_method" value="delete">
														<input type="submit" value="Delete" class="delete">
													</form>
												</div></td>
										</c:if>

									</tr>
								</c:forEach>
							</table>
	</section>

</body>
</html>