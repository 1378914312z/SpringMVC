<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>登录</title>
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
					<h4 class="modal-title">用户登录</h4>
				</div>
				<!-- form -->
				<form action="${pageContext.request.contextPath}/user/login" method="post">
					<div class="modal-body">
						用户名：<input type="text" class="form-control" name="uname">
						密码：<input type="password" class="form-control" name="upass">
					</div>
					<div class="modal-footer">
						<button class="btn btn-primary" type="submit">登录</button>
						<button data-dismiss="modal" class="btn btn-default" type="reset" >重置</button>
						<a href="${pageContext.request.contextPath }/regist.jsp">注册</a></button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
  </body>
</html>