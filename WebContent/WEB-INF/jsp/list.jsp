<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
<link
	href="${pageContext.request.contextPath}/js/bootstrap-3.3.7/dist/css/bootstrap.css"
	rel="stylesheet">
</head>
<body>
	<div class="panel panel-info">
		<div class="panel-heading">用户管理</div>
		<div class="panel-body">
			<!-- 用户列表 -->
			<button style="float: right" type="button" class="btn btn-primary"
				data-toggle="modal" data-target="#myModal">用户添加</button>
			<table
				class="table table-striped table-bordered table-hover  table-condensed">
				<thead>
					<th>用户编号</th>
					<th>姓名</th>
					<th>年龄</th>
					<th>注册日期</th>
					<th>操作</th>
				</thead>
				<tbody>
					<c:forEach items="${userlist}" var="user">
						<tr>
							<td>${user.uid }</td>
							<td>${user.uname }</td>
							<td>${user.age }</td>
							<td>${user.regdate }</td>
							<td><button style="float: right" type="button" class="btn btn-primary"
				data-toggle="modal" data-target="#myModal2">修改</button>&nbsp;&nbsp;
								<a href="${pageContext.request.contextPath}/user/delete?uid=${user.uid}">删除</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- 分頁 -->
			<div align="center">
				<nav>
					<ul class="pagination">
						<li><a href="#" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li class="disabled"><a href="#" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>


	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button data-dismiss="modal" class="close" type="button">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">添加用户</h4>
				</div>
				<!-- form -->
				<form action="${pageContext.request.contextPath}/user/add" method="post">
					<div class="modal-body">
						用户编号：<input type="text" class="form-control" name="uid"> <br>
						用户名：<input type="text" class="form-control" name="uname">
						<br> 年龄：<input type="text" class="form-control" name="age">
						<br> 注册日期：<input type="text" class="form-control"
							name="regdate">
					</div>
					<div class="modal-footer">
						<button data-dismiss="modal" class="btn btn-default" type="button">关闭</button>
						<button class="btn btn-primary" type="submit">提交</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button data-dismiss="modal" class="close" type="button">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">修改用户</h4>
				</div>
				<!-- form -->
				<form action="${pageContext.request.contextPath}/user/update" method="get">
					<div class="modal-body">
						用户编号：<input type="text" class="form-control" name="uid"> <br>
						用户名：<input type="text" class="form-control" name="uname">
						<br> 年龄：<input type="text" class="form-control" name="age">
						<br> 注册日期：<input type="text" class="form-control"
							name="regdate">
					</div>
					<div class="modal-footer">
						<button data-dismiss="modal" class="btn btn-default" type="button">关闭</button>
						<button class="btn btn-primary" type="submit">修改</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<div style="height: 200px"></div>
</body>
</html>