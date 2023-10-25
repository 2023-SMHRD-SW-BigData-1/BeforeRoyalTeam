<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" class="light-style layout-menu-fixed layout-compact" dir="ltr" data-theme="theme-default"
  data-assets-path="/assets/" data-template="horizontal-menu-template">

<head>
  <meta charset="utf-8" />
  <meta name="viewport"
    content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

  <title>User Profile - Profile | Vuexy - Bootstrap Admin Template</title>

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
  <link rel="stylesheet" href="/assets/vendor/css/rtl/theme-default.css"
    class="template-customizer-theme-css" />
  <link rel="stylesheet" href="/assets/css/demo.css" />

  <!-- Vendors CSS -->
  <link rel="stylesheet" href="/assets/vendor/libs/node-waves/node-waves.css" />
  <link rel="stylesheet" href="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
  <link rel="stylesheet" href="/assets/vendor/libs/typeahead-js/typeahead.css" />
  <link rel="stylesheet" href="/assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
  <link rel="stylesheet" href="/assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
  <link rel="stylesheet" href="/assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />

  <!-- Page CSS -->
  <link rel="stylesheet" href="/assets/vendor/css/pages/page-profile.css" />

  
  

  <!-- Helpers -->
  <script src="/assets/vendor/js/helpers.js"></script>
  <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
  <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
  <script src="/assets/vendor/js/template-customizer.js"></script>
  <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
  <script src="/assets/js/config.js"></script>
</head>

<body>
  <!-- Layout wrapper -->
  <div class="layout-wrapper layout-navbar-full layout-horizontal layout-without-menu">
    <div class="layout-container">
       <!---------------------------------------------------------------------------------- navi --------------------------------------------------------------------------------->
      <nav class="layout-navbar navbar navbar-expand-xl align-items-center bg-navbar-theme" id="layout-navbar">
        <div class="container-xxl">
          <div class="navbar-brand app-brand demo d-none d-xl-flex py-0 me-4">
            <a href="index.html" class="app-brand-link gap-2">
              <span class="app-brand-logo demo">
                <svg width="32" height="22" viewBox="0 0 32 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M0.00172773 0V6.85398C0.00172773 6.85398 -0.133178 9.01207 1.98092 10.8388L13.6912 21.9964L19.7809 21.9181L18.8042 9.88248L16.4951 7.17289L9.23799 0H0.00172773Z"
                    fill="#7367F0" />
                  <path opacity="0.06" fill-rule="evenodd" clip-rule="evenodd"
                    d="M7.69824 16.4364L12.5199 3.23696L16.5541 7.25596L7.69824 16.4364Z" fill="#161616" />
                  <path opacity="0.06" fill-rule="evenodd" clip-rule="evenodd"
                    d="M8.07751 15.9175L13.9419 4.63989L16.5849 7.28475L8.07751 15.9175Z" fill="#161616" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M7.77295 16.3566L23.6563 0H32V6.88383C32 6.88383 31.8262 9.17836 30.6591 10.4057L19.7824 22H13.6938L7.77295 16.3566Z"
                    fill="#7367F0" />
                </svg>
              </span>
              <span class="app-brand-text demo menu-text fw-bold">Vuexy</span>
            </a>
            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-xl-none">
              <i class="ti ti-x ti-sm align-middle"></i>
            </a>
          </div>
          <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
            <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
              <i class="ti ti-menu-2 ti-sm"></i>
            </a>
          </div>
          <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
            <ul class="navbar-nav flex-row align-items-center ms-auto">

              <!-- Search -->
              <li class="nav-item navbar-search-wrapper me-2 me-xl-0">
                <a class="nav-link search-toggler" href="javascript:void(0);">
                  <i class="ti ti-search ti-md"></i>
                </a>
              </li>
              <!-- /Search -->

              <!-- Column -->
              <li class="Sh-slide-comm-thumb  nav-item navbar-search-wrapper me-2 me-xl-0" style="cursor: pointer;">
                <i class="ti ti-book ti-md "></i>
              </li>
              <!-- /Column -->

              <!-- Notification -->
              <li class="nav-item dropdown-notifications navbar-dropdown dropdown me-3 me-xl-1">
                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown"
                  data-bs-auto-close="outside" aria-expanded="false">
                  <i class="ti ti-bell ti-md"></i>
                  <span class="badge bg-danger rounded-pill badge-notifications">5</span>
                </a>
                <ul class="dropdown-menu dropdown-menu-end py-0">
                  <li class="dropdown-menu-header border-bottom">
                    <div class="dropdown-header d-flex align-items-center py-3">
                      <h5 class="text-body mb-0 me-auto">Notification</h5>
                      <a href="javascript:void(0)" class="dropdown-notifications-all text-body" data-bs-toggle="tooltip"
                        data-bs-placement="top" title="Mark all as read"><i class="ti ti-mail-opened fs-4"></i></a>
                    </div>
                  </li>
                  <li class="dropdown-notifications-list scrollable-container">
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item list-group-item-action dropdown-notifications-item">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <img src="../../../assets/img/avatars/1.png" alt class="h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">Congratulation Lettie 🎉</h6>
                            <p class="mb-0">Won the monthly best seller gold badge</p>
                            <small class="text-muted">1h ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <span class="avatar-initial rounded-circle bg-label-danger">CF</span>
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">Charles Franklin</h6>
                            <p class="mb-0">Accepted your connection</p>
                            <small class="text-muted">12hr ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <img src="../../../assets/img/avatars/2.png" alt class="h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">New Message ✉️</h6>
                            <p class="mb-0">You have new message from Natalie</p>
                            <small class="text-muted">1h ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <span class="avatar-initial rounded-circle bg-label-success"><i
                                  class="ti ti-shopping-cart"></i></span>
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">Whoo! You have new order 🛒</h6>
                            <p class="mb-0">ACME Inc. made new order $1,154</p>
                            <small class="text-muted">1 day ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <img src="../../../assets/img/avatars/9.png" alt class="h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">Application has been approved 🚀</h6>
                            <p class="mb-0">Your ABC project application has been approved.</p>
                            <small class="text-muted">2 days ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <span class="avatar-initial rounded-circle bg-label-success"><i
                                  class="ti ti-chart-pie"></i></span>
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">Monthly report is generated</h6>
                            <p class="mb-0">July monthly financial report is generated</p>
                            <small class="text-muted">3 days ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <img src="../../../assets/img/avatars/5.png" alt class="h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">Send connection request</h6>
                            <p class="mb-0">Peter sent you connection request</p>
                            <small class="text-muted">4 days ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <img src="../../../assets/img/avatars/6.png" alt class="h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">New message from Jane</h6>
                            <p class="mb-0">Your have new message from Jane</p>
                            <small class="text-muted">5 days ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <span class="avatar-initial rounded-circle bg-label-warning"><i
                                  class="ti ti-alert-triangle"></i></span>
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">CPU is running high</h6>
                            <p class="mb-0">CPU Utilization Percent is currently at 88.63%,</p>
                            <small class="text-muted">5 days ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                    </ul>
                  </li>
                  <li class="dropdown-menu-footer border-top">
                    <a href="javascript:void(0);"
                      class="dropdown-item d-flex justify-content-center text-primary p-2 h-px-40 mb-1 align-items-center">
                      View all notifications
                    </a>
                  </li>
                </ul>
              </li>
              <!--/ Notification -->

              <!-- Style Switcher -->
              <li class="nav-item dropdown-style-switcher dropdown me-2 me-xl-0">
                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                  <i class="ti ti-md"></i>
                </a>
                <ul class="dropdown-menu dropdown-menu-end dropdown-styles">
                  <li>
                    <a class="dropdown-item" href="javascript:void(0);" data-theme="light">
                      <span class="align-middle"><i class="ti ti-sun me-2"></i>Light</span>
                    </a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="javascript:void(0);" data-theme="dark">
                      <span class="align-middle"><i class="ti ti-moon me-2"></i>Dark</span>
                    </a>
                  </li>
                </ul>
              </li>
              <!-- / Style Switcher-->

              <!-- User --><!-- Sh-slide-profile-thumb -->
              <li class="nav-item navbar-dropdown dropdown-user dropdown ">
                <div class="avatar avatar-online">
                  <img src="../../../assets/img/avatars/1.png" alt class="h-auto rounded-circle" />
                </div>
              </li>
              <!--/ User -->
              <!--/ Login, LogOut -->
              <li>
                <a href="auth-login-cover.html" class="btn btn-primary" target="_blank">
                  <i class="ti ti-logout me-2 ti-sm"></i>
                  <span class="d-none d-md-block">Log Out</span></a>
              </li>
              <li class="Sh-Login-thumb btn btn-primary">
                <span class="tf-icons ti ti-login scaleX-n1-rtl me-md-1"></span><span
                  class="d-none d-md-block">Login/Register</span>
              </li>
              <!--/ Login, LogOut -->
            </ul>
          </div>

          <!-- Search Small Screens -->
          <div class="navbar-search-wrapper search-input-wrapper container-xxl d-none">
            <input type="text" class="form-control search-input border-0" placeholder="Search..."
              aria-label="Search..." />
            <i class="ti ti-x ti-sm search-toggler cursor-pointer"></i>
          </div>
        </div>
      </nav>
      <!---------------------------------------------------------------------------------- navi ---------------------------------------------------------------------------------->

      <!-- Layout container -->
      <div class="layout-page" >
        <!-- Content wrapper -->
        <div class="content-wrapper" >
          <!-- Content -->
          <div class="container-xxl flex-grow-1 container-p-y" >
            <h4 class="py-3 mb-4"><span class="text-muted fw-light">User Profile /</span> Profile</h4>

            

            <!-- Navbar pills -->
            <div class="row">
              <div class="col-md-12">
                <ul class="nav nav-pills flex-column flex-sm-row mb-4">
                  <li class="nav-item">
                    <a class="nav-link active" href="/user/login/userProfile"><i class="ti-xs ti ti-user-check me-1"></i>
                      Profile</a>
                  </li>
                  <li class="nav-item" >
                    <a class="nav-link" href="/user/login/userProfile/modify"><i class="ti-xs ti ti-link me-1"></i>
                      Account</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/user/login/userProfile/email"><i
                        class="ti-xs ti ti-mail me-1"></i> email</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/user/login/userProfile/notification"><i
                        class="ti-xs ti ti-bell me-1"></i> notification</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/user/login/userProfile/Teams"><i 
                      class="ti-xs ti ti-users me-1"></i> Teams</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/user/login/userProfile/Projects"><i 
                      class="ti-xs ti ti-layout-grid me-1"></i>Projects</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/user/login/userProfile/Manager"><i 
                      class="ti-xs ti ti-map-pins me-1"></i>Manager</a>
                  </li>
                </ul>
              </div>
            </div>
            <!--/ Navbar pills -->

            <!-- Header -->
            <div class="row mt-5">
              <div class="col-12">
                <div class="card mb-4">
                  <div class="user-profile-header d-flex flex-column flex-sm-row text-sm-start text-center mb-4">
                    <div class="flex-shrink-0 mt-n2 mx-sm-0 mx-auto">
                      <img src="/assets/img/avatars/14.png" alt="user image"
                        class="d-block h-auto ms-0 ms-sm-4 rounded user-profile-img" />
                    </div>
                    <div class="flex-grow-1 mt-3 mt-sm-5">
                      <div
                        class="d-flex align-items-md-end align-items-sm-start align-items-center justify-content-md-between justify-content-start mx-4 flex-md-row flex-column gap-4">
                        <div class="user-profile-info">
                          <h4>John Doe</h4>
                          <ul
                            class="list-inline mb-0 d-flex align-items-center flex-wrap justify-content-sm-start justify-content-center gap-2">
                            <li class="list-inline-item d-flex gap-1">
                              <i class="ti ti-color-swatch"></i> UX Designer
                            </li>
                            <li class="list-inline-item d-flex gap-1"><i class="ti ti-map-pin"></i> Vatican City</li>
                            <li class="list-inline-item d-flex gap-1">
                              <i class="ti ti-calendar"></i> Joined April 2021
                            </li>
                          </ul>
                        </div>
                        <a href="javascript:void(0)" class="btn btn-primary">
                          <i class="ti ti-check me-1"></i>Connected
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!--/ Header -->

            <!-- User Profile Content -->
            <div class="row">
              <div class="col-xl-4 col-lg-5 col-md-5">
                <!-- About User -->
                <div class="card mb-4">
                  <div class="card-body">
                    <small class="card-text text-uppercase">About</small>
                    <ul class="list-unstyled mb-4 mt-3">
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-user text-heading"></i><span class="fw-medium mx-2 text-heading">Full
                          Name:</span> <span>John Doe</span>
                      </li>
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-check text-heading"></i><span class="fw-medium mx-2 text-heading">Status:</span>
                        <span>Active</span>
                      </li>
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-crown text-heading"></i><span class="fw-medium mx-2 text-heading">Role:</span>
                        <span>Developer</span>
                      </li>
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-flag text-heading"></i><span class="fw-medium mx-2 text-heading">Country:</span>
                        <span>USA</span>
                      </li>
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-file-description text-heading"></i><span
                          class="fw-medium mx-2 text-heading">Languages:</span> <span>English</span>
                      </li>
                    </ul>
                    <small class="card-text text-uppercase">Contacts</small>
                    <ul class="list-unstyled mb-4 mt-3">
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-phone-call"></i><span class="fw-medium mx-2 text-heading">Contact:</span>
                        <span>(123) 456-7890</span>
                      </li>
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-brand-skype"></i><span class="fw-medium mx-2 text-heading">Skype:</span>
                        <span>john.doe</span>
                      </li>
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-mail"></i><span class="fw-medium mx-2 text-heading">Email:</span>
                        <span>john.doe@example.com</span>
                      </li>
                    </ul>
                    <small class="card-text text-uppercase">Teams</small>
                    <ul class="list-unstyled mb-0 mt-3">
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-brand-angular text-danger me-2"></i>
                        <div class="d-flex flex-wrap">
                          <span class="fw-medium me-2 text-heading">Backend Developer</span><span>(126 Members)</span>
                        </div>
                      </li>
                      <li class="d-flex align-items-center">
                        <i class="ti ti-brand-react-native text-info me-2"></i>
                        <div class="d-flex flex-wrap">
                          <span class="fw-medium me-2 text-heading">React Developer</span><span>(98 Members)</span>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
                <!--/ About User -->
                <!-- Profile Overview -->
                <div class="card mb-4">
                  <div class="card-body">
                    <p class="card-text text-uppercase">Overview</p>
                    <ul class="list-unstyled mb-0">
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-check"></i><span class="fw-medium mx-2">Task Compiled:</span>
                        <span>13.5k</span>
                      </li>
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-layout-grid"></i><span class="fw-medium mx-2">Projects Compiled:</span>
                        <span>146</span>
                      </li>
                      <li class="d-flex align-items-center">
                        <i class="ti ti-users"></i><span class="fw-medium mx-2">Connections:</span> <span>897</span>
                      </li>
                    </ul>
                  </div>
                </div>
                <!--/ Profile Overview -->
              </div>
              <div class="col-xl-8 col-lg-7 col-md-7">
                <!-- Activity Timeline -->
                <div class="card card-action mb-4">
                  <div class="card-header align-items-center">
                    <h5 class="card-action-title mb-0">Activity Timeline</h5>
                    <div class="card-action-element">
                      <div class="dropdown">
                        <button type="button" class="btn dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown"
                          aria-expanded="false">
                          <i class="ti ti-dots-vertical text-muted"></i>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end">
                          <li><a class="dropdown-item" href="javascript:void(0);">Share timeline</a></li>
                          <li><a class="dropdown-item" href="javascript:void(0);">Suggest edits</a></li>
                          <li>
                            <hr class="dropdown-divider" />
                          </li>
                          <li><a class="dropdown-item" href="javascript:void(0);">Report bug</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="card-body pb-0">
                    <ul class="timeline ms-1 mb-0">
                      <li class="timeline-item timeline-item-transparent">
                        <span class="timeline-point timeline-point-primary"></span>
                        <div class="timeline-event">
                          <div class="timeline-header">
                            <h6 class="mb-0">Client Meeting</h6>
                            <small class="text-muted">Today</small>
                          </div>
                          <p class="mb-2">Project meeting with john @10:15am</p>
                          <div class="d-flex flex-wrap">
                            <div class="avatar me-2">
                              <img src="/assets/img/avatars/3.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="ms-1">
                              <h6 class="mb-0">Lester McCarthy (Client)</h6>
                              <span>CEO of Infibeam</span>
                            </div>
                          </div>
                        </div>
                      </li>
                      <li class="timeline-item timeline-item-transparent">
                        <span class="timeline-point timeline-point-success"></span>
                        <div class="timeline-event">
                          <div class="timeline-header">
                            <h6 class="mb-0">Create a new project for client</h6>
                            <small class="text-muted">2 Day Ago</small>
                          </div>
                          <p class="mb-0">Add files to new design folder</p>
                        </div>
                      </li>
                      <li class="timeline-item timeline-item-transparent">
                        <span class="timeline-point timeline-point-danger"></span>
                        <div class="timeline-event">
                          <div class="timeline-header">
                            <h6 class="mb-0">Shared 2 New Project Files</h6>
                            <small class="text-muted">6 Day Ago</small>
                          </div>
                          <p class="mb-2">
                            Sent by Mollie Dixon
                            <img src="/assets/img/avatars/4.png" class="rounded-circle me-3" alt="avatar"
                              height="24" width="24" />
                          </p>
                          <div class="d-flex flex-wrap gap-2 pt-1">
                            <a href="javascript:void(0)" class="me-3">
                              <img src="/assets/img/icons/misc/doc.png" alt="Document image" width="15"
                                class="me-2" />
                              <span class="fw-medium text-heading">App Guidelines</span>
                            </a>
                            <a href="javascript:void(0)">
                              <img src="/assets/img/icons/misc/xls.png" alt="Excel image" width="15"
                                class="me-2" />
                              <span class="fw-medium text-heading">Testing Results</span>
                            </a>
                          </div>
                        </div>
                      </li>
                      <li class="timeline-item timeline-item-transparent border-transparent">
                        <span class="timeline-point timeline-point-info"></span>
                        <div class="timeline-event">
                          <div class="timeline-header">
                            <h6 class="mb-0">Project status updated</h6>
                            <small class="text-muted">10 Day Ago</small>
                          </div>
                          <p class="mb-0">Woocommerce iOS App Completed</p>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
                <!--/ Activity Timeline -->
                <div class="row">
                  <!-- Connections -->
                  <div class="col-lg-12 col-xl-6">
                    <div class="card card-action mb-4">
                      <div class="card-header align-items-center">
                        <h5 class="card-action-title mb-0">Connections</h5>
                        <div class="card-action-element">
                          <div class="dropdown">
                            <button type="button" class="btn dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <i class="ti ti-dots-vertical text-muted"></i>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li><a class="dropdown-item" href="javascript:void(0);">Share connections</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">Suggest edits</a></li>
                              <li>
                                <hr class="dropdown-divider" />
                              </li>
                              <li><a class="dropdown-item" href="javascript:void(0);">Report bug</a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div class="card-body">
                        <ul class="list-unstyled mb-0">
                          <li class="mb-3">
                            <div class="d-flex align-items-start">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="/assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">Cecilia Payne</h6>
                                  <small class="text-muted">45 Connections</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <button class="btn btn-label-primary btn-icon btn-sm">
                                  <i class="ti ti-user-check ti-xs"></i>
                                </button>
                              </div>
                            </div>
                          </li>
                          <li class="mb-3">
                            <div class="d-flex align-items-start">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="/assets/img/avatars/3.png" alt="Avatar" class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">Curtis Fletcher</h6>
                                  <small class="text-muted">1.32k Connections</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <button class="btn btn-primary btn-icon btn-sm">
                                  <i class="ti ti-user-x ti-xs"></i>
                                </button>
                              </div>
                            </div>
                          </li>
                          <li class="mb-3">
                            <div class="d-flex align-items-start">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="/assets/img/avatars/10.png" alt="Avatar" class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">Alice Stone</h6>
                                  <small class="text-muted">125 Connections</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <button class="btn btn-primary btn-icon btn-sm">
                                  <i class="ti ti-user-x ti-xs"></i>
                                </button>
                              </div>
                            </div>
                          </li>
                          <li class="mb-3">
                            <div class="d-flex align-items-start">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="/assets/img/avatars/7.png" alt="Avatar" class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">Darrell Barnes</h6>
                                  <small class="text-muted">456 Connections</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <button class="btn btn-label-primary btn-icon btn-sm">
                                  <i class="ti ti-user-check ti-xs"></i>
                                </button>
                              </div>
                            </div>
                          </li>

                          <li class="mb-3">
                            <div class="d-flex align-items-start">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="/assets/img/avatars/12.png" alt="Avatar" class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">Eugenia Moore</h6>
                                  <small class="text-muted">1.2k Connections</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <button class="btn btn-label-primary btn-icon btn-sm">
                                  <i class="ti ti-user-check ti-xs"></i>
                                </button>
                              </div>
                            </div>
                          </li>
                          <li class="text-center">
                            <a href="javascript:;">View all connections</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <!--/ Connections -->
                  <!-- Teams -->
                  <div class="col-lg-12 col-xl-6">
                    <div class="card card-action mb-4">
                      <div class="card-header align-items-center">
                        <h5 class="card-action-title mb-0">Teams</h5>
                        <div class="card-action-element">
                          <div class="dropdown">
                            <button type="button" class="btn dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <i class="ti ti-dots-vertical text-muted"></i>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li><a class="dropdown-item" href="javascript:void(0);">Share teams</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">Suggest edits</a></li>
                              <li>
                                <hr class="dropdown-divider" />
                              </li>
                              <li><a class="dropdown-item" href="javascript:void(0);">Report bug</a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div class="card-body">
                        <ul class="list-unstyled mb-0">
                          <li class="mb-3">
                            <div class="d-flex align-items-center">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="/assets/img/icons/brands/react-label.png" alt="Avatar"
                                    class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">React Developers</h6>
                                  <small class="text-muted">72 Members</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <a href="javascript:;"><span class="badge bg-label-danger">Developer</span></a>
                              </div>
                            </div>
                          </li>
                          <li class="mb-3">
                            <div class="d-flex align-items-center">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="/assets/img/icons/brands/support-label.png" alt="Avatar"
                                    class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">Support Team</h6>
                                  <small class="text-muted">122 Members</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <a href="javascript:;"><span class="badge bg-label-primary">Support</span></a>
                              </div>
                            </div>
                          </li>
                          <li class="mb-3">
                            <div class="d-flex align-items-center">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="/assets/img/icons/brands/figma-label.png" alt="Avatar"
                                    class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">UI Designers</h6>
                                  <small class="text-muted">7 Members</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <a href="javascript:;"><span class="badge bg-label-info">Designer</span></a>
                              </div>
                            </div>
                          </li>
                          <li class="mb-3">
                            <div class="d-flex align-items-center">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="/assets/img/icons/brands/vue-label.png" alt="Avatar"
                                    class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">Vue.js Developers</h6>
                                  <small class="text-muted">289 Members</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <a href="javascript:;"><span class="badge bg-label-danger">Developer</span></a>
                              </div>
                            </div>
                          </li>
                          <li class="mb-3">
                            <div class="d-flex align-items-center">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="/assets/img/icons/brands/twitter-label.png" alt="Avatar"
                                    class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">Digital Marketing</h6>
                                  <small class="text-muted">24 Members</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <a href="javascript:;"><span class="badge bg-label-secondary">Marketing</span></a>
                              </div>
                            </div>
                          </li>
                          <li class="text-center">
                            <a href="javascript:;">View all teams</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <!--/ Teams -->
                </div>
                <!-- Projects table -->
                <div class="card mb-4">
                  <div class="card-datatable table-responsive">
                    <table class="datatables-projects table border-top">
                      <thead>
                        <tr>
                          <th></th>
                          <th></th>
                          <th>Name</th>
                          <th>Leader</th>
                          <th>Team</th>
                          <th class="w-px-200">Status</th>
                          <th>Action</th>
                        </tr>
                      </thead>
                    </table>
                  </div>
                </div>
                <!--/ Projects table -->
              </div>
            </div>
            <!--/ User Profile Content -->
          </div>
          <!--/ Content -->

          <!-- Footer -->
          <footer class="content-footer footer bg-footer-theme">
            <div class="container-xxl">
              <div
                class="footer-container d-flex align-items-center justify-content-between py-2 flex-md-row flex-column">
                <div>
                  ©
                  <script>
                    document.write(new Date().getFullYear());
                  </script>
                  , made with ❤️ by <a href="https://pixinvent.com" target="_blank" class="fw-medium">Pixinvent</a>
                </div>
                <div class="d-none d-lg-inline-block">
                  <a href="https://themeforest.net/licenses/standard" class="footer-link me-4"
                    target="_blank">License</a>
                  <a href="https://1.envato.market/pixinvent_portfolio" target="_blank" class="footer-link me-4">More
                    Themes</a>

                  <a href="https://demos.pixinvent.com/vuexy-html-admin-template/documentation/" target="_blank"
                    class="footer-link me-4">Documentation</a>

                  <a href="https://pixinvent.ticksy.com/" target="_blank"
                    class="footer-link d-none d-sm-inline-block">Support</a>
                </div>
              </div>
            </div>
          </footer>
          <!-- / Footer -->

          <div class="content-backdrop fade"></div>
        </div>
        <!--/ Content wrapper -->
      </div>

      <!--/ Layout container -->
    </div>
  </div>

  <!-- Overlay -->
  <div class="layout-overlay layout-menu-toggle"></div>

  <!-- Drag Target Area To SlideIn Menu On Small Screens -->
  <div class="drag-target"></div>

  <!--/ Layout wrapper -->

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
  <script src="/assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>

  <!-- Main JS -->
  <script src="/assets/js/main.js"></script>

  <!-- Page JS -->
  <script src="/assets/js/pages-profile.js"></script>
</body>

</html>