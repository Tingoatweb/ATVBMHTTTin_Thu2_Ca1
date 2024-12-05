<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Ogani | Template</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<style type="text/css">
.avatar-container {
	position: relative;
	display: inline-block;
}

#editButton {
	position: absolute;
	top: 0;
	right: 0;
	display: none;
	cursor: pointer;
}

.avatar-container:hover #editButton {
	display: block;
}
</style>

</head>
<body>
<!-- Page Preloder -->
<div id="preloder">
	<div class="loader"></div>
</div>

<jsp:include page="navbar.jsp"/>
	<div class="full_container">
		<div class="inner_container">
			<!-- right content -->
			<div id="content">

				<!-- end topbar -->
				<!-- dashboard inner -->
				<div class="midde_cont">
					<div class="container-fluid">
						<div class="row column_title">
							<div class="col-md-12">
								<div class="page_title">
									<h2 style="text-align: center; font-size: 70px">Hồ Sơ</h2>
								</div>
							</div>
						</div>
						<!-- row -->
						<div class="row column1">
							<div class="col-md-2"></div>
							<div class="col-md-8">
								<div class="white_shd full margin_bottom_30">
									<div class="full graph_head">
										<div class="heading1 margin_0">
											<h2>Hồ Sơ Của Tôi</h2>
										</div>
									</div>
									<div class="full price_table padding_infor_info">
										<div class="row">
											<!-- user profile section -->
											<!-- profile image -->
											<div class="col-lg-12">
		<jsp:useBean id="userDAO" class="database.UserDAO" />
         <c:set var="userId" value="${sessionScope.userC.userId}" />
        <c:set var="user" value="${userDAO.selectById(userId)}" />

   <c:choose>
    <c:when test="${not empty sessionScope.userC and not empty sessionScope.userC.avatar}">
        <div class="avatar-container" onmouseover="showEditButton()" onmouseout="hideEditButton()">
            <img  style="width: 180px; height: 180px" src="${pageContext.request.contextPath}/${sessionScope.userC.avatar}" alt="User Avatar">
            <button id="editAvatar" onclick="openFileExplorer()">Đổi hình đại diện</button>
        </div>
        <form id="uploadForm" style="display: none;" action="${pageContext.request.contextPath}/uploadimage" method="post" enctype="multipart/form-data">
            <input type="hidden" name="userId" value="${user.userId}" />
            <label >Thay đổi thông tin:</label>
            <input type="file" name="avatar" accept="image/*" onchange="uploadImage()">
            <button type="button" onclick="cancelUpload()">Hủy</button>
            <button type="button" onclick="submitUpload()">OK</button>
        </form>
    </c:when>
    <c:otherwise>
        <div class="avatar-container" onmouseover="showEditButton()" onmouseout="hideEditButton()">
            <img id="avatarImage" style="width: 180px; height: 180px" src="images/cool.png" alt="Default Avatar">
            <button id="editButton" onclick="openFileExplorer()">Thay đổi</button>
        </div>
        <form id="uploadForm" style="display: none;" action="${pageContext.request.contextPath}/uploadimage" method="post" enctype="multipart/form-data">
            <input type="hidden" name="userId" value="${user.userId}" />
            <label >Thay đổi:</label>
            <input type="file" name="avatar" accept="image/*" onchange="uploadImage()">
            <button type="button" onclick="cancelUpload()">Hủy</button>
            <button type="button" onclick="submitUpload()">OK</button>
        </form>
    </c:otherwise>
</c:choose>

<div class="profile_contant">
    <div class="contact_inner">
        <h3>${user.name}</h3>
        <p>
            <strong>Thông tin về: ${sessionScope.userC.name}</strong>
        </p>
		${sessionScope.userC.email}
<%--        <ul class="list-unstyled">
            <li><img src="/image/icons8-email-32 (1).png" alt=""> : ${sessionScope.userC.email}</li>
            <li><img src="/image/icons8-telephone-32.png" alt="">: ${sessionScope.userC.phoneNumber}</li>
            <li><img src="./image/birthday-cake (1).png" alt=""> : ${sessionScope.userC.birthday.toString()}</li>
            <li><img src="/image/sexual-harassment.png" alt=""> : ${sessionScope.userC.sexual}</li>
        </ul>--%>
    </div>
</div>

													<div class="user_progress_bar">
														<div class="progress_bar">
															<!-- Skill Bars -->
															<span class="skill" style="width: 85%;">Web
																Applications <span class="info_valume">85%</span>
															</span>
															<div class="progress skill-bar ">
																<div
																	class="progress-bar progress-bar-animated progress-bar-striped"
																	role="progressbar" aria-valuenow="85" aria-valuemin="0"
																	aria-valuemax="100" style="width: 85%;"></div>
															</div>
															<span class="skill" style="width: 78%;">Website
																Design <span class="info_valume">78%</span>
															</span>
															<div class="progress skill-bar">
																<div
																	class="progress-bar progress-bar-animated progress-bar-striped"
																	role="progressbar" aria-valuenow="78" aria-valuemin="0"
																	aria-valuemax="100" style="width: 78%;"></div>
															</div>
															<span class="skill" style="width: 47%;">Automation
																& Testing <span class="info_valume">47%</span>
															</span>
															<div class="progress skill-bar">
																<div
																	class="progress-bar progress-bar-animated progress-bar-striped"
																	role="progressbar" aria-valuenow="54" aria-valuemin="0"
																	aria-valuemax="100" style="width: 54%;"></div>
															</div>
															<span class="skill" style="width: 65%;">UI / UX <span
																class="info_valume">65%</span></span>
															<div class="progress skill-bar">
																<div
																	class="progress-bar progress-bar-animated progress-bar-striped"
																	role="progressbar" aria-valuenow="65" aria-valuemin="0"
																	aria-valuemax="100" style="width: 65%;"></div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- profile contant section -->

						<!-- end row -->
					</div>

					<!-- footer -->

				</div>
				<!-- end dashboard inner -->
			</div>
		</div>
	</div>

	<footer class="footer spad">
		<jsp:include page="footer.jsp" />
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>



</body>

</html>
