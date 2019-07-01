<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>用户注册</title>
</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	${error}
	<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button data-dismiss="modal" class="close" type="button">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">用户注册</h4>
				</div>
				<!-- form -->
				<form action="${pageContext.request.contextPath}/user/regist" method="post">
					<div class="modal-body">
						用户编号：<input type="text" class="form-control" name="uid"> 
						用户名：<input type="text" class="form-control" name="uname">
						密码：<input type="password" class="form-control" name="upass">
						 年龄：<input type="text" class="form-control" name="age">
						 注册日期：<input type="text" class="form-control"
							name="regdate">
					</div>
					<div class="modal-footer">
						<button class="btn btn-primary" type="submit">提交</button>
						<button data-dismiss="modal" class="btn btn-default" type="reset">重置</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
</body>
</html>