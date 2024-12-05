<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="util.FormatCurrency"%>
<%@ page import="model.ImportDetail" %>
<%@ page import="model.Import" %>
<%@ page import="database.ProductDAO" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>


<html
        lang="en"
        class="light-style layout-menu-fixed"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="../assets/"
        data-template="vertical-menu-template-free"
>
<head>
  <meta charset="utf-8" />
  <meta
          name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
  />

  <title>Tables - Basic Tables | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

  <meta name="description" content="" />

  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="../assetsForAdmin/assets/img/favicon/favicon.ico"/>

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
          href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
          rel="stylesheet"
  />

  <!-- Icons. Uncomment required icon fonts -->
  <link rel="stylesheet" href="../assetsForAdmin/assets/vendor/fonts/boxicons.css" />

  <!-- Core CSS -->
  <link rel="stylesheet" href="../assetsForAdmin/assets/vendor/css/core.css" class="template-customizer-core-css" />
  <link rel="stylesheet" href="../assetsForAdmin/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
  <link rel="stylesheet" href="../assetsForAdmin/assets/css/demo.css" />

  <!-- Vendors CSS -->
  <link rel="stylesheet" href="../assetsForAdmin/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

  <!-- Page CSS -->

  <!-- Helpers -->
    <script src="https://kit.fontawesome.com/2b3abce4d1.js" crossorigin="anonymous"></script>
<%--  <script src="../assetsForAdmin/assets/vendor/js/script.js"></script>--%>
  <script src="../assetsForAdmin/assets/vendor/js/helpers.js"></script>

  <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
  <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
  <script src="../assetsForAdmin/assets/js/config.js"></script>
  <style>
    .hide{
      display: none;
    }
  </style>
</head>

<body>
<!-- Layout wrapper -->
<div class="layout-wrapper layout-content-navbar">
  <div class="layout-container">
    <!-- Menu -->
    <jsp:include page="menu.jsp"/>

    <!-- / Menu -->


    <!-- Layout container -->
    <div class="layout-page">
      <!-- Navbar -->

      <nav
              class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
              id="layout-navbar"
      >
        <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
          <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
            <i class="bx bx-menu bx-sm"></i>
          </a>
        </div>

        <jsp:useBean id="productDAO" class="database.ProductDAO"></jsp:useBean>
        <c:set var="listProduct" value="${productDAO.selectAll()}" ></c:set>
        <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
          <!-- Search -->
          <div class="navbar-nav align-items-center">
            <div class="nav-item d-flex align-items-center">
              <i class="bx bx-search fs-4 lh-0"></i>
              <input
                      type="text"
                      class="form-control border-0 shadow-none"
                      placeholder="Search..."
                      aria-label="Search..."
                      name="search"
                      oninput="search()"
              />
            </div>
          </div>
          <div id="searchResults" class="mt-4"></div>
          <div id="searchResultsContainer"></div>
          <!-- /Search -->



          <ul class="navbar-nav flex-row align-items-center ms-auto">
            <!-- Place this tag where you want the button to render. -->
            <li class="nav-item lh-1 me-3">
              <a
                      class="github-button"
                      href="https://github.com/themeselection/sneat-html-admin-template-free"
                      data-icon="octicon-star"
                      data-size="large"
                      data-show-count="true"
                      aria-label="Star themeselection/sneat-html-admin-template-free on GitHub"
              >Star</a
              >
            </li>

            <!-- User -->
            <li class="nav-item navbar-dropdown dropdown-user dropdown">
              <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                <div class="avatar avatar-online">
                  <img src="../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                </div>
              </a>
              <ul class="dropdown-menu dropdown-menu-end">
                <li>
                  <a class="dropdown-item" href="#">
                    <div class="d-flex">
                      <div class="flex-shrink-0 me-3">
                        <div class="avatar avatar-online">
                          <img src="../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                        </div>
                      </div>
                      <div class="flex-grow-1">
                        <span class="fw-semibold d-block">John Doe</span>
                        <small class="text-muted">Admin</small>
                      </div>
                    </div>
                  </a>
                </li>

                <li>
                    <i class="bx bx-user me-2"></i>
                    <span class="align-middle">My Profile</span>
                  </a>
                </li>
                <li>
                    <i class="bx bx-cog me-2"></i>
                    <span class="align-middle">Settings</span>
                  </a>
                </li>
                <li>
                  <a class="dropdown-item" href="#">
                        <span class="d-flex align-items-center align-middle">
                          <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                          <span class="flex-grow-1 align-middle">Billing</span>
                          <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                        </span>
                  </a>
                </li>
                <li>
                  <div class="dropdown-divider"></div>
                </li>
                <li>
                  <a class="dropdown-item" href="auth-login-basic.html">
                    <i class="bx bx-power-off me-2"></i>
                    <span class="align-middle">Log Out</span>
                  </a>
                </li>
              </ul>
            </li>
            <!--/ User -->
          </ul>
        </div>
      </nav>

      <!-- / Navbar -->

      <div class="card card11">
        <div class="table-responsive text-nowrap">
          <table class="table ">
            <thead>
            <tr class="hide">
              <th>Mã sách</th>
              <th>Tên sách</th>
              <th>Thể loại</th>
              <th>Giá nhập</th>
              <th> </th>
            </tr>
            </thead>

            <tbody class="list-product" id="listProductDOM" oninput="search()">
            <jsp:useBean id="productDao" class="database.ProductDAO"></jsp:useBean>
            <c:forEach var="product" items="${productDao.selectAll()}">
              <tr class="hide">
                <td name="productId" id="productId"><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong id="product_id">${product.productId}</strong></td>
                <td>
                  <strong id="product_name"
                          oninput="search()">${product.product_name}</strong>
<%--                  <input--%>
<%--                        type="text"--%>
<%--                        name="product_name"--%>
<%--                        id="product_name"--%>
<%--                        value="${product.product_name}"--%>
<%--                        oncanplay="search()"--%>
<%--                />--%>
                </td>
<%--                  <td><p name="product_name" class="productName" oninput="search()">${product.product_name} </p></td>--%>
                <td id="categoryName">${product.category.categoryName}</td>
                <td id="unitPrice"><span>${product.unitPrice}</span></td>>

                <td>
                  <button type="submit" class="btn btn-sm btn-outline-primary" onclick="add()">Thêm</button></td>
              </tr>
            </c:forEach>

            </tbody>

          </table>
        </div>
      </div>
      <!-- Content wrapper -->
      <div class="content-wrapper">
        <!-- Content -->

        <div class="container-xxl flex-grow-1 container-p-y">
          <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Tables /</span> Basic Tables</h4>

          <!-- Basic Bootstrap Table -->
          <div class="card">
            <h5 class="card-header">Table Basic</h5>
            <div class="table-responsive text-nowrap">
<%--              <form action="/ImportOrder" method="post">--%>
              <table class="table">
                <thead>
                <tr>
                  <th>Mã SP</th>
                  <th>Tên SP</th>
                  <th>Số lượng</th>
                  <th>Giá nhập</th>
                  <th>Tổng tiền</th>
                  <th>Actions</th>
                </tr>
                </thead>

                  <tbody class="table-border-bottom-0">

                  </tbody>
                  <div class="price-total"><p style="padding-left: 700px; padding-top: 15px; font-weight: bold">Tổng tiền: </p>
                    <span></span><sup>đ</sup></div>



              </table>
  <input type="submit" value="Complete Order" onclick="completeOrder()" formaction="/CompleteOrderServlet">
<%--              </form>--%>
            </div>

          </div>
          <!--/ Basic Bootstrap Table -->

          <hr class="my-5" />

          <!-- Bootstrap Dark Table -->

          <!--/ Striped Rows -->


        </div>
        <!-- / Content -->

        <!-- Footer -->
        <footer class="content-footer footer bg-footer-theme">
          <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
            <div class="mb-2 mb-md-0">
              ©
              <script>
                document.write(new Date().getFullYear());
              </script>
              , made with ❤️ by
              <a href="https://themeselection.com" target="_blank" class="footer-link fw-bolder">ThemeSelection</a>
            </div>
            <div>
              <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
              <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

              <a
                      href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/"
                      target="_blank"
                      class="footer-link me-4"
              >Documentation</a
              >

              <a
                      href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                      target="_blank"
                      class="footer-link me-4"
              >Support</a
              >
            </div>
          </div>
        </footer>
        <!-- / Footer -->

        <div class="content-backdrop fade"></div>
      </div>
      <!-- Content wrapper -->
    </div>
    <!-- / Layout page -->
  </div>

  <!-- Overlay -->
  <div class="layout-overlay layout-menu-toggle"></div>
</div>
<!-- / Layout wrapper -->

<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->

<script>

function add() {
  const btns = document.querySelectorAll('button'); // Lựa chọn tất cả các button có class là btn-outline-primary
  btns.forEach(function (button, index) {
    button.addEventListener("click", function (event) {
      var productId = this.parentElement.parentElement.querySelector("strong#product_id").innerText; // Lấy productId từ ô strong trong hàng chứa button được click
      var productName = this.parentElement.parentElement.querySelector("strong#product_name").textContent; // Lấy tên sản phẩm từ input có name là product_name trong hàng chứa button được click
      var unitPrice = this.parentElement.parentElement.querySelector("span").innerText; // Lấy giá nhập từ thẻ span trong hàng chứa button được click
      addTable(productId, productName, unitPrice)
      console.log("đã thêm sp")
        cartTotal();
    });
  });

}

function addTable(productId, productName, unitPrice) {
  var addtr = document.createElement("tr");
  var cartItem = document.querySelectorAll("tbody.table-border-bottom-0 tr ");
  var productNames = document.querySelectorAll(".titleProduct");

  for (var i = 0; i < productNames.length; i++) {
    if (productNames[i].textContent === productName) {
      alert("Sản phẩm của bạn đã có trong giỏ hàng");
        return;
    }
  }

  addtr.innerHTML = '<td><p name="productId" id="productId" class="form-control form-control-sm">' + productId + '</p></td>' +
          '<td><span name="product_name" class="titleProduct">' + productName + '</span></td>' +
          '<td><input name="numberOfWarehouses" id="numberOfWarehouses" type="number" class="input-value form-control form-control-sm" value="1"  onclick="inputchange()" oninput="calculateTotal()" ></td>' +
          '<td><input name="unitPrice" type="number" class="input-value form-control form-control-sm"  onclick="inputchange()" oninput="calculateTotal()" value="' + unitPrice + '"></td>' +
          '<td><input name="totalPrice" type="number" id="totalPrice" class="total-price form-control form-control-sm" readonly></td>' +
          '<td><button type="button" class="btn btn-sm btn-outline-primary"><span class="cart-delete">Xóa</span></button></td>';

  var cartTable = document.querySelector("tbody.table-border-bottom-0");
  cartTable.appendChild(addtr);

  deleteCart();
   // calculateTotal();
}

function cartTotal() {
    var cartItem = document.querySelectorAll("tbody.table-border-bottom-0 tr");
    var totalAll = 0;

    cartItem.forEach(function(row) {
        var numberOfWarehouses = parseFloat(row.querySelector('input[name="numberOfWarehouses"]').value);
        var unitPrice = parseFloat(row.querySelector('input[name="unitPrice"]').value);
        var totalPrice = numberOfWarehouses * unitPrice;
        totalAll += totalPrice;
    });

    var cartTotalA = document.querySelector(".price-total span");
    cartTotalA.innerHTML = totalAll.toLocaleString('de-DE') + '<sup>đ</sup>';
    //inputchange();

}

//-------------------------delete cart-------------------------
function deleteCart() {
  var cartItem = document.querySelectorAll("tbody.table-border-bottom-0 tr ");
  for (var i=0; i<cartItem.length; i++){
    var productT= document.querySelectorAll(".cart-delete")
    productT[i].addEventListener("click", function (even){
      var cartDelete = even.target
      var cartItemR = cartDelete.parentElement.parentElement.parentElement
      cartItemR.remove()
        cartTotal();
    })

  // console.log(productT)
  }

}

//thay doi so luong thi gia tien cung thay doi theo
function inputchange(){
    var cartItem = document.querySelectorAll("tbody.table-border-bottom-0 tr ");
    for (var i=0; i<cartItem.length; i++){
        var inputValue= document.querySelectorAll(".input-value")
        inputValue[i].addEventListener("change", function (){
            cartTotal();
        })

        // console.log(productT)
    }
}

function calculateTotal() {
    var cartItems = document.querySelectorAll("tbody.table-border-bottom-0 tr");
    cartItems.forEach(function(row) {
        var numberOfWarehouses = parseFloat(row.querySelector('input[name="numberOfWarehouses"]').value);
        var unitPrice = parseFloat(row.querySelector('input[name="unitPrice"]').value);
        var totalPrice = numberOfWarehouses * unitPrice;
        row.querySelector('input[name="totalPrice"]').value = totalPrice.toFixed(2);
        cartTotal();
    });

}

function completeOrder() {
  var cartItems = document.querySelectorAll("tbody.table-border-bottom-0 tr");
  var ImportDetails = [];

  cartItems.forEach(function(row, index) {
    var productId = row.querySelector('p[name="productId"]').innerText;
    var productName = row.querySelector('.titleProduct').innerText;
    var numberOfWarehouses = row.querySelector('input[name="numberOfWarehouses"]').value;
    var unitPrice = row.querySelector('input[name="unitPrice"]').value;
    var totalPrice = row.querySelector('input[name="totalPrice"]').value;
    // var ImportDetail = {
    //   id: index + 1,
    //   productId: productId,
    //   productName: productName,
    //   numberOfWarehouses: numberOfWarehouses,
    //   unitPrice: unitPrice,
    //   totalPrice: totalPrice
    // };

    var valuee = productName + "/" + numberOfWarehouses + "/" + unitPrice + "/" + totalPrice + "/" + productId;
    ImportDetails.push(valuee);
    console.log(productName + "/" + numberOfWarehouses + "/" + unitPrice + "/" + totalPrice + "/" + productId);
  });

  sendDataToServlet(ImportDetails);
}

function sendDataToServlet(ImportDetails) {
  fetch('/CompleteOrderServlet', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(ImportDetails)
  })
          .then(response => {
            if (response.ok) {
              console.log('Order completed successfully');
              // Xử lý phản hồi từ server nếu cần
            } else {
              console.error('Error completing order:', response.statusText);
            }
          })
          .catch(error => {
            console.error('Error completing order:', error);
          });
}

</script>
<script>

  function search() {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', '/GetListProduct', true);
    xhr.onreadystatechange = function() {
      if (xhr.readyState === XMLHttpRequest.DONE) {
        if (xhr.status === 200) {
          var products = JSON.parse(xhr.responseText);
          filterProducts(products);
        } else {
          console.error('Error fetching products:', xhr.statusText);
        }
      }
    };
    xhr.send();
  }

  function filterProducts(products) {
    var searchInput = document.querySelector('input[name="search"]').value.trim().toLowerCase();
    if(searchInput===""){
      searchInput="@#$%^"
    }

    var listProductDOM = document.getElementById('listProductDOM');
    var searchResultsContainer = document.getElementById('searchResultsContainer'); // Thêm dòng này

    var rows = listProductDOM.getElementsByTagName('tr');
    for (var i = 0; i < rows.length; i++) {
      var row = rows[i];
      // var productName = row.querySelector('input[name="product_name"]').value.trim().toLowerCase();
      var productName = row.querySelector('strong#product_name').textContent.trim().toLowerCase();
      // console.error(productName+ "....prdn");
      if (productName.includes(searchInput)) { // Sử dụng includes() để kiểm tra chuỗi con
        row.classList.remove('hide');
      } else {
        row.classList.add('hide');
      }
    }
  }



</script>
<script src="../assetsForAdmin/assets/vendor/libs/jquery/jquery.js"></script>
<script src="../assetsForAdmin/assets/vendor/libs/popper/popper.js"></script>
<script src="../assetsForAdmin/assets/vendor/js/bootstrap.js"></script>
<script src="../assetsForAdmin/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

<script src="../assetsForAdmin/assets/vendor/js/menu.js"></script>
<%--<script src="../assetsForAdmin/assets/vendor/js/script.js"></script>--%>
<!-- endbuild -->

<!-- Vendors JS -->

<!-- Main JS -->
<script src="../assetsForAdmin/assets/js/main.js"></script>

<!-- Page JS -->

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>
