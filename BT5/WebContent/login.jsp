<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<title>Login</title>
</head>
<body>

	<div class="container">
		<div class="col-sm-9 sol-md-7 col-lg-5 mx-auto">
			<div class="card card-signin my-5">
				<div class="card-body">
					<h3 class="card-title text-center">Đăng nhập</h3>
					<hr class="my-4">
					
					<form class="form-signin" action="Login" method="post">
						<div class="form-label-group">
							<label>Username: </label>
							<input id="txtUsername" name="txtUsername" class="form-control">
						</div>
						<div class="form-label-group">
							<label>Password: </label>
							<input type="password" id="txtPassword" name="txtPassword" class="form-control">
						</div>
						<hr class="my-4">
						<div class="form-group form-check">
							<label>
								<input type="checkbox" class="form-check-input">Remember me
							</label>
							<input type="submit" class="btn btn-lg btn-secondary btn-block text-uppercase" value="Login">
						</div>
						
						<a href="#">Forgot password?</a>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>