<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="home.jsp">Pic Media</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="timeline">Timeline</a></li>
				<li><a href="profile.jsp">Profile</a></li>
				<li class="navbar-right">
					<span style="color:white">Welcome, <%= session.getAttribute("username") %> </span>
				</li>
				<li class="navbar-right">
					<a href="logout" class="btn btn-danger">Logout</a>
				</li>
			</ul>
		</div>
	</div>
</div>