<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.4.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
<link href="${pageContext.request.contextPath }/js/bootstrap-3.3.7/dist/css/bootstrap.css" rel="stylesheet">

<script type="text/javascript">
	function changeFrameHeight() {
		var ifm = document.getElementById("mainframe");
		ifm.height = document.documentElement.clientHeight;

	}
	window.onresize = function() {
		changeFrameHeight();
	}
</script>
</head>
<body>
	<div class="panel panel-default">
		<div class="panel-heading">
			<img alt="" src="images/mypic.jpg" width="30px" height="30px">
		</div>

		<div class="panel-body">
			<div class="container">
				<div class="row">
					<div class="col-xs-3 ">
						<div class="list-group">
							<button type="button" class="list-group-item active">
								用户管理</button>
							<button type="button" class="list-group-item">
								<a href="${pageContext.request.contextPath}/user/list"
									target="mainframe">用户信息查询</a>
							</button>
							<button type="button" class="list-group-item active">
								商品管理</button>
							<button type="button" class="list-group-item">商品信息查询</button>
							<button type="button" class="list-group-item active">
								订单管理</button>
							<button type="button" class="list-group-item">订单信息查询</button>
						</div>
					</div>
					<div class="col-xs-9 ">
						<!-- <iframe src="UserServlet?type=list" id="mainframe" name="mainframe" width="100%" frameborder="0" scrolling="no"
			onload="changeFrameHeight()"></iframe> -->
						<iframe
							src="${pageContext.request.contextPath}/user/list"
							id="mainframe" name="mainframe" width="100%" frameborder="0"
							scrolling="no" onload="changeFrameHeight()"></iframe>
					</div>
				</div>
			</div>
		</div>
		<div class="panel-footer">Copyright © 青软实训教育科技股份有限公司
			鲁ICP备17031845号</div>
	</div>
</body>
</html>