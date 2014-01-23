<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="login.jsp">Pic Media</a>
			<span style="margin-top:-18%; margin-left:100%; width:100%" class="navbar-brand">
			</span>
		</div>
		<div class="navbar-collapse collapse">
			<form class="navbar-form navbar-right" method="post" action="login">
				<div class="form-group">
					<s:textfield cssClass="form-control" name="username" placeholder="Username"></s:textfield>
				</div>
				<div class="form-group">
					<s:password cssClass="form-control" name="password" placeholder="Password"></s:password>
				</div>
				<button type="submit" class="btn btn-success">Sign in</button>
			</form>
		</div>
	</div>
</div>