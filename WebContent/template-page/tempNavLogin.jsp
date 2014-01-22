<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="home.jsp">Pic Media</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="home.jsp">Timeline</a></li>
				<li><a href="storage.jsp">Profile</a></li>
				<% if (session.getAttribute("username") != null) { %>
					<% if (session.getAttribute("role").equals("admin")) { %>
						<li><a href="UserList">User List</a></li>
					<% } %>
				<% } %>
				<li class="navbar-right">
					<span style="color:white">Welcome, <%= session.getAttribute("name") %> </span>
				</li>
				<li class="navbar-right">
					<a href="" class="btn btn-danger">Logout</a>
				</li>
			</ul>
		</div>
	</div>
</div>