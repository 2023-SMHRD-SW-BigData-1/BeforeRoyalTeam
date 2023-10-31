<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" class="light-style layout-wide customizer-hide" dir="ltr" data-theme="theme-default"
  data-assets-path="/assets/" data-template="horizontal-menu-template">

<head>
  <meta charset="utf-8" />
  <meta name="viewport"
    content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

  <title>Forgot Password Basic - Pages | Vuexy - Bootstrap Admin Template</title>

  <meta name="description" content="" />

  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="/assets/img/favicon/favicon.ico" />

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
    href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
    rel="stylesheet" />

  <!-- Icons -->
  <link rel="stylesheet" href="/assets/vendor/fonts/fontawesome.css" />
  <link rel="stylesheet" href="/assets/vendor/fonts/tabler-icons.css" />
  <link rel="stylesheet" href="/assets/vendor/fonts/flag-icons.css" />

  <!-- Core CSS -->
  <link rel="stylesheet" href="/assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
  <link rel="stylesheet" href="/assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
  <link rel="stylesheet" href="/assets/css/demo.css" />

  <!-- Vendors CSS -->
  <link rel="stylesheet" href="/assets/vendor/libs/node-waves/node-waves.css" />
  <link rel="stylesheet" href="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
  <link rel="stylesheet" href="/assets/vendor/libs/typeahead-js/typeahead.css" />
  <!-- Vendor -->
  <link rel="stylesheet" href="/assets/vendor/libs/@form-validation/umd/styles/index.min.css" />

  <!-- Page CSS -->
  <!-- Page -->
  <link rel="stylesheet" href="/assets/vendor/css/pages/page-auth.css" />

  <!-- Helpers -->
  <script src="/assets/vendor/js/helpers.js"></script>
  <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
  <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
  <script src="/assets/vendor/js/template-customizer.js"></script>
  <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
  <script src="/assets/js/config.js"></script>
</head>

<body>
  <!-- Content -->

  <div class="container-xxl">
    <div class="authentication-wrapper authentication-basic container-p-y">
      <div class="authentication-inner py-4">
        <!-- Forgot Password -->
        <div class="card">
          <div class="card-body">
            <!-- Logo -->
            <div class="app-brand justify-content-center mb-4 mt-2">
              <a href="index.html" class="app-brand-link gap-2">
                <span class="app-brand-logo demo" style="width: 60px; height: 60px;">
                  <img src="/assets/img/branding/shinelogosm.png" class="w-100" alt="">
                </span>
                <span class="app-brand-text demo text-body fw-bold">SHINE</span>
              </a>
            </div>
            <!-- /Logo -->
            <h4 class="mb-1 pt-2">비밀번호를 잊으셨습니까? 🔒</h4>
            <p class="mb-4">이메일을 입력하세요</p>
            <form id="formAuthentication" class="mb-3" action="/user/findPw" method="POST">
              <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="text" class="form-control" id="email" name="userEmail" placeholder="이메일을 입력하세요"
                  autofocus />
              </div>
              <button class="btn btn-primary d-grid w-100">비밀번호 찾기</button>
            </form>
            <div class="text-center">
              <a href="/user/login/main" class="d-flex align-items-center justify-content-center">
                <i class="ti ti-chevron-left scaleX-n1-rtl"></i>
                Back to login
              </a>
            </div>
          </div>
        </div>
        <!-- /Forgot Password -->
      </div>
    </div>
  </div>

  <!-- / Content -->

  <!-- Core JS -->
  <!-- build:js assets/vendor/js/core.js -->

  <script src="/assets/vendor/libs/jquery/jquery.js"></script>
  <script src="/assets/vendor/libs/popper/popper.js"></script>
  <script src="/assets/vendor/js/bootstrap.js"></script>
  <script src="/assets/vendor/libs/node-waves/node-waves.js"></script>
  <script src="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
  <script src="/assets/vendor/libs/hammer/hammer.js"></script>
  <script src="/assets/vendor/libs/i18n/i18n.js"></script>
  <script src="/assets/vendor/libs/typeahead-js/typeahead.js"></script>
  <script src="/assets/vendor/js/menu.js"></script>

  <!-- endbuild -->

  <!-- Vendors JS -->
  <script src="/assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
  <script src="/assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
  <script src="/assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>

  <!-- Main JS -->
  <script src="/assets/js/main.js"></script>

  <!-- Page JS -->
  <script src="/assets/js/pages-auth.js"></script>
</body>

</html>