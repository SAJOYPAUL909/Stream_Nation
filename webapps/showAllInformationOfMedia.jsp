<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,300;0,900;1,100;1,200;1,400;1,900&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<title>Show All Info Of Media</title>
<style>

	body{
		
		background-image: url(images/bluredadmin.jpg);
		background-repeat: no-repeat;
		background-size: cover;
		height: 150vh;
	
	}

	.shadow{
		box-shadow: rgba(17, 12, 46, 0.15) 0px 48px 100px 0px;
	}
	
	.fontOne {
	  font-family: 'Montserrat', sans-serif;
	  font-weight: 400;
	}

</style>
</head>




<body>

		<div style="width: 100vw; height: 100vh" class="d-flex justify-content-center">

			<%  
			  String id = (String) request.getAttribute("media_id");
			  String url = "media-List-Image?id=" + id;
			%>
			<div>
			
				
				<img class="img-fluid mt-5 rounded shadow mx-auto mb-2" style="width: 400px; height: 250px; display: block;" alt="Responsive image" src='<%= url %>'/> 
				<p class="fontOne shadow p-2" style="color: white;  display: block; width: 400px;"><strong>Name</strong> : ${media.name}</p>
				<p class="fontOne  shadow p-2" style="color: white;  display: block; width: 400px;"><strong>Category</strong>  : ${media.category}</p>
				<p class="fontOne  shadow p-2" style="color: white; display: block; width: 400px;"><strong>Ratings</strong>  : ${mediaInfo.ratings}</p>
				<p class="fontOne shadow p-2" style="color: white; display: block; width: 400px;"><strong>Length</strong>  : ${mediaInfo.length}</p>
				<p class="fontOne shadow p-2" style="color: white; display: block; width: 400px;"><strong>Discription</strong>  : ${mediaInfo.discription}</p>
				<p class="fontOne shadow p-2" style="color: white; display: block; width: 400px;"><strong>Release Date</strong>  : ${mediaInfo.release_date}</p>
				<p class="fontOne shadow p-2" style="color: white; display: block; width: 400px;"><strong>Directors</strong>  : ${mediaInfo.directors}</p>
				<p class="fontOne shadow p-2" style="color: white; display: block; width: 400px;"><strong>Actors</strong>  : ${mediaInfo.actors}</p>
			</div>

		</div>

	</body>
</html>





























