<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html
  lang="en"
  class="light-style layout-menu-fixed layout-compact"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="/assets/"
  data-template="horizontal-menu-template">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>User Profile - Projects | Vuexy - Bootstrap Admin Template</title>

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
        pages-profile-account

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="py-3 mb-4"><span class="text-muted fw-light">User Profile /</span> Projects</h4>

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

              <!-- Project Cards -->
              <div class="row g-4">
                <div class="col-xl-4 col-lg-6 col-md-6">
                  <div class="card">
                    <div class="card-header">
                      <div class="d-flex align-items-start">
                        <div class="d-flex align-items-start">
                          <div class="avatar me-2">
                            <img
                              src="/assets/img/icons/brands/social-label.png"
                              alt="Avatar"
                              class="rounded-circle" />
                          </div>
                          <div class="me-2 ms-1">
                            <h5 class="mb-0">
                              <a href="javascript:;" class="stretched-link text-body">Social Banners</a>
                            </h5>
                            <div class="client-info">
                              <span class="fw-medium">Client: </span><span class="text-muted">Christian Jimenez</span>
                            </div>
                          </div>
                        </div>
                        <div class="ms-auto">
                          <div class="dropdown zindex-2">
                            <button
                              type="button"
                              class="btn dropdown-toggle hide-arrow p-0"
                              data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <i class="ti ti-dots-vertical text-muted"></i>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li><a class="dropdown-item" href="javascript:void(0);">Rename project</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">View details</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">Add to favorites</a></li>
                              <li>
                                <hr class="dropdown-divider" />
                              </li>
                              <li><a class="dropdown-item text-danger" href="javascript:void(0);">Leave Project</a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="d-flex align-items-center flex-wrap">
                        <div class="bg-lighter px-3 py-2 rounded me-auto mb-3">
                          <h6 class="mb-0">$24.8k <span class="text-body fw-normal">/ $18.2k</span></h6>
                          <span>Total Budget</span>
                        </div>
                        <div class="text-end mb-3">
                          <h6 class="mb-0">Start Date: <span class="text-body fw-normal">14/2/21</span></h6>
                          <h6 class="mb-1">Deadline: <span class="text-body fw-normal">28/2/22</span></h6>
                        </div>
                      </div>
                      <p class="mb-0">We are Consulting, Software Development and Web Development Services.</p>
                    </div>
                    <div class="card-body border-top">
                      <div class="d-flex align-items-center mb-3">
                        <h6 class="mb-1">All Hours: <span class="text-body fw-normal">380/244</span></h6>
                        <span class="badge bg-label-success ms-auto">28 Days left</span>
                      </div>
                      <div class="d-flex justify-content-between align-items-center mb-2 pb-1">
                        <small>Task: 290/344</small>
                        <small>95% Completed</small>
                      </div>
                      <div class="progress mb-2" style="height: 8px">
                        <div
                          class="progress-bar"
                          role="progressbar"
                          style="width: 95%"
                          aria-valuenow="95"
                          aria-valuemin="0"
                          aria-valuemax="100"></div>
                      </div>
                      <div class="d-flex align-items-center pt-1">
                        <div class="d-flex align-items-center">
                          <ul class="list-unstyled d-flex align-items-center avatar-group mb-0 zindex-2 mt-1">
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Vinnie Mostowy"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/5.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Allen Rieske"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/12.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Julee Rossignol"
                              class="avatar avatar-sm pull-up me-2">
                              <img class="rounded-circle" src="/assets/img/avatars/6.png" alt="Avatar" />
                            </li>
                            <li><small class="text-muted">280 Members</small></li>
                          </ul>
                        </div>
                        <div class="ms-auto">
                          <a href="javascript:void(0);" class="text-body"
                            ><i class="ti ti-message-dots ti-sm"></i> 15</a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                  <div class="card">
                    <div class="card-header">
                      <div class="d-flex align-items-start">
                        <div class="d-flex align-items-start">
                          <div class="avatar me-2">
                            <img
                              src="/assets/img/icons/brands/react-label.png"
                              alt="Avatar"
                              class="rounded-circle" />
                          </div>
                          <div class="me-2 ms-1">
                            <h5 class="mb-0">
                              <a href="javascript:;" class="stretched-link text-body">Admin Template</a>
                            </h5>
                            <div class="client-info">
                              <span class="fw-medium">Client: </span><span class="text-muted">Jeffrey Phillips</span>
                            </div>
                          </div>
                        </div>
                        <div class="ms-auto">
                          <div class="dropdown zindex-2">
                            <button
                              type="button"
                              class="btn dropdown-toggle hide-arrow p-0"
                              data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <i class="ti ti-dots-vertical text-muted"></i>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li><a class="dropdown-item" href="javascript:void(0);">Rename project</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">View details</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">Add to favorites</a></li>
                              <li>
                                <hr class="dropdown-divider" />
                              </li>
                              <li><a class="dropdown-item text-danger" href="javascript:void(0);">Leave Project</a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="d-flex align-items-center flex-wrap">
                        <div class="bg-lighter px-3 py-2 rounded me-auto mb-3">
                          <h6 class="mb-0">$2.4k <span class="text-body fw-normal">/ 1.8k</span></h6>
                          <span>Total Budget</span>
                        </div>
                        <div class="text-end mb-3">
                          <h6 class="mb-0">Start Date: <span class="text-body fw-normal">18/8/21</span></h6>
                          <h6 class="mb-1">Deadline: <span class="text-body fw-normal">21/6/22</span></h6>
                        </div>
                      </div>
                      <p class="mb-0">
                        Time is our most valuable asset, that's why we want to help you save it by creating…
                      </p>
                    </div>
                    <div class="card-body border-top">
                      <div class="d-flex align-items-center mb-3">
                        <h6 class="mb-1">All Hours: <span class="text-body fw-normal">98/135</span></h6>
                        <span class="badge bg-label-warning ms-auto">15 Days left</span>
                      </div>
                      <div class="d-flex justify-content-between align-items-center mb-2 pb-1">
                        <small>Task: 12/90</small>
                        <small>42% Completed</small>
                      </div>
                      <div class="progress mb-2" style="height: 8px">
                        <div
                          class="progress-bar"
                          role="progressbar"
                          style="width: 42%"
                          aria-valuenow="42"
                          aria-valuemin="0"
                          aria-valuemax="100"></div>
                      </div>
                      <div class="d-flex align-items-center pt-1">
                        <div class="d-flex align-items-center">
                          <ul class="list-unstyled d-flex align-items-center avatar-group mb-0 zindex-2">
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Kaith D'souza"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/5.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="John Doe"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/1.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Alan Walker"
                              class="avatar avatar-sm pull-up me-2">
                              <img class="rounded-circle" src="/assets/img/avatars/6.png" alt="Avatar" />
                            </li>
                            <li><small class="text-muted">1.1k Members</small></li>
                          </ul>
                        </div>
                        <div class="ms-auto">
                          <a href="javascript:void(0);" class="text-body"
                            ><i class="ti ti-message-dots ti-sm"></i> 236</a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                  <div class="card">
                    <div class="card-header">
                      <div class="d-flex align-items-start">
                        <div class="d-flex align-items-start">
                          <div class="avatar me-2">
                            <img
                              src="/assets/img/icons/brands/vue-label.png"
                              alt="Avatar"
                              class="rounded-circle" />
                          </div>
                          <div class="me-2 ms-1">
                            <h5 class="mb-0"><a href="javascript:;" class="stretched-link text-body">App Design</a></h5>
                            <div class="client-info">
                              <span class="fw-medium">Client: </span><span class="text-muted">Ricky McDonald</span>
                            </div>
                          </div>
                        </div>
                        <div class="ms-auto">
                          <div class="dropdown zindex-2">
                            <button
                              type="button"
                              class="btn dropdown-toggle hide-arrow p-0"
                              data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <i class="ti ti-dots-vertical text-muted"></i>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li><a class="dropdown-item" href="javascript:void(0);">Rename project</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">View details</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">Add to favorites</a></li>
                              <li>
                                <hr class="dropdown-divider" />
                              </li>
                              <li><a class="dropdown-item text-danger" href="javascript:void(0);">Leave Project</a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="d-flex align-items-center flex-wrap">
                        <div class="bg-lighter px-3 py-2 rounded me-auto mb-3">
                          <h6 class="mb-0">$980 <span class="text-body fw-normal">/ $420</span></h6>
                          <span>Total Budget</span>
                        </div>
                        <div class="text-end mb-3">
                          <h6 class="mb-0">Start Date: <span class="text-body fw-normal">24/7/21</span></h6>
                          <h6 class="mb-1">Deadline: <span class="text-body fw-normal">8/10/21</span></h6>
                        </div>
                      </div>
                      <p class="mb-0">App design combines the user interface (UI) and user experience (UX).</p>
                    </div>
                    <div class="card-body border-top">
                      <div class="d-flex align-items-center mb-3">
                        <h6 class="mb-1">All Hours: <span class="text-body fw-normal">880/421</span></h6>
                        <span class="badge bg-label-danger ms-auto">45 Days left</span>
                      </div>
                      <div class="d-flex justify-content-between align-items-center mb-2 pb-1">
                        <small>Task: 22/140</small>
                        <small>68% Completed</small>
                      </div>
                      <div class="progress mb-2" style="height: 8px">
                        <div
                          class="progress-bar"
                          role="progressbar"
                          style="width: 68%"
                          aria-valuenow="68"
                          aria-valuemin="0"
                          aria-valuemax="100"></div>
                      </div>
                      <div class="d-flex align-items-center pt-1">
                        <div class="d-flex align-items-center">
                          <ul class="list-unstyled d-flex align-items-center avatar-group mb-0 zindex-2">
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Jimmy Ressula"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/4.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Kristi Lawker"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/2.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Danny Paul"
                              class="avatar avatar-sm pull-up me-2">
                              <img class="rounded-circle" src="/assets/img/avatars/7.png" alt="Avatar" />
                            </li>
                            <li><small class="text-muted">458 Members</small></li>
                          </ul>
                        </div>
                        <div class="ms-auto">
                          <a href="javascript:void(0);" class="text-body"
                            ><i class="ti ti-message-dots ti-sm"></i> 98</a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                  <div class="card">
                    <div class="card-header">
                      <div class="d-flex align-items-start">
                        <div class="d-flex align-items-start">
                          <div class="avatar me-2">
                            <img
                              src="/assets/img/icons/brands/html-label.png"
                              alt="Avatar"
                              class="rounded-circle" />
                          </div>
                          <div class="me-2 ms-1">
                            <h5 class="mb-0">
                              <a href="javascript:;" class="stretched-link text-body">Create Website</a>
                            </h5>
                            <div class="client-info">
                              <span class="fw-medium">Client: </span><span class="text-muted">Hulda Wright</span>
                            </div>
                          </div>
                        </div>
                        <div class="ms-auto">
                          <div class="dropdown zindex-2">
                            <button
                              type="button"
                              class="btn dropdown-toggle hide-arrow p-0"
                              data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <i class="ti ti-dots-vertical text-muted"></i>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li><a class="dropdown-item" href="javascript:void(0);">Rename project</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">View details</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">Add to favorites</a></li>
                              <li>
                                <hr class="dropdown-divider" />
                              </li>
                              <li><a class="dropdown-item text-danger" href="javascript:void(0);">Leave Project</a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="d-flex align-items-center flex-wrap">
                        <div class="bg-lighter px-3 py-2 rounded me-auto mb-3">
                          <h6 class="mb-0">$8.5k <span class="text-body fw-normal">/ $2.43k</span></h6>
                          <span>Total Budget</span>
                        </div>
                        <div class="text-end mb-3">
                          <h6 class="mb-0">Start Date: <span class="text-body fw-normal">10/2/19</span></h6>
                          <h6 class="mb-1">Deadline: <span class="text-body fw-normal">12/9/22</span></h6>
                        </div>
                      </div>
                      <p class="mb-0">Your domain name should reflect your products or services so that your...</p>
                    </div>
                    <div class="card-body border-top">
                      <div class="d-flex align-items-center mb-3">
                        <h6 class="mb-1">All Hours: <span class="text-body fw-normal">1.2k/820</span></h6>
                        <span class="badge bg-label-warning ms-auto">126 Days left</span>
                      </div>
                      <div class="d-flex justify-content-between align-items-center mb-2 pb-1">
                        <small>Task: 237/420</small>
                        <small>72% Completed</small>
                      </div>
                      <div class="progress mb-2" style="height: 8px">
                        <div
                          class="progress-bar"
                          role="progressbar"
                          style="width: 72%"
                          aria-valuenow="72"
                          aria-valuemin="0"
                          aria-valuemax="100"></div>
                      </div>
                      <div class="d-flex align-items-center pt-1">
                        <div class="d-flex align-items-center">
                          <ul class="list-unstyled d-flex align-items-center avatar-group mb-0 zindex-2">
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Andrew Tye"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/6.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Rishi Swaat"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/9.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Rossie Kim"
                              class="avatar avatar-sm pull-up me-2">
                              <img class="rounded-circle" src="/assets/img/avatars/12.png" alt="Avatar" />
                            </li>
                            <li><small class="text-muted">137 Members</small></li>
                          </ul>
                        </div>
                        <div class="ms-auto">
                          <a href="javascript:void(0);" class="text-body"
                            ><i class="ti ti-message-dots ti-sm"></i> 120</a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                  <div class="card">
                    <div class="card-header">
                      <div class="d-flex align-items-start">
                        <div class="d-flex align-items-start">
                          <div class="avatar me-2">
                            <img
                              src="/assets/img/icons/brands/figma-label.png"
                              alt="Avatar"
                              class="rounded-circle" />
                          </div>
                          <div class="me-2 ms-1">
                            <h5 class="mb-0">
                              <a href="javascript:;" class="stretched-link text-body">Figma Dashboard</a>
                            </h5>
                            <div class="client-info">
                              <span class="fw-medium">Client: </span><span class="text-muted">Jerry Greene</span>
                            </div>
                          </div>
                        </div>
                        <div class="ms-auto">
                          <div class="dropdown zindex-2">
                            <button
                              type="button"
                              class="btn dropdown-toggle hide-arrow p-0"
                              data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <i class="ti ti-dots-vertical text-muted"></i>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li><a class="dropdown-item" href="javascript:void(0);">Rename project</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">View details</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">Add to favorites</a></li>
                              <li>
                                <hr class="dropdown-divider" />
                              </li>
                              <li><a class="dropdown-item text-danger" href="javascript:void(0);">Leave Project</a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="d-flex align-items-center flex-wrap">
                        <div class="bg-lighter px-3 py-2 rounded me-auto mb-3">
                          <h6 class="mb-0">$52.7k <span class="text-body fw-normal">/ $28.4k</span></h6>
                          <span>Total Budget</span>
                        </div>
                        <div class="text-end mb-3">
                          <h6 class="mb-0">Start Date: <span class="text-body fw-normal">12/12/20</span></h6>
                          <h6 class="mb-1">Deadline: <span class="text-body fw-normal">25/12/21</span></h6>
                        </div>
                      </div>
                      <p class="mb-0">
                        Use this template to organize your design project. Some of the key features are…
                      </p>
                    </div>
                    <div class="card-body border-top">
                      <div class="d-flex align-items-center mb-3">
                        <h6 class="mb-1">All Hours: <span class="text-body fw-normal">142/420</span></h6>
                        <span class="badge bg-label-danger ms-auto">5 Days left</span>
                      </div>
                      <div class="d-flex justify-content-between align-items-center mb-2 pb-1">
                        <small>Task: 29/285</small>
                        <small>35% Completed</small>
                      </div>
                      <div class="progress mb-2" style="height: 8px">
                        <div
                          class="progress-bar"
                          role="progressbar"
                          style="width: 35%"
                          aria-valuenow="35"
                          aria-valuemin="0"
                          aria-valuemax="100"></div>
                      </div>
                      <div class="d-flex align-items-center pt-1">
                        <div class="d-flex align-items-center">
                          <ul class="list-unstyled d-flex align-items-center avatar-group mb-0 zindex-2">
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Kim Merchent"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/10.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Sam D'souza"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/13.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Nurvi Karlos"
                              class="avatar avatar-sm pull-up me-2">
                              <img class="rounded-circle" src="/assets/img/avatars/5.png" alt="Avatar" />
                            </li>
                            <li><small class="text-muted">82 Members</small></li>
                          </ul>
                        </div>
                        <div class="ms-auto">
                          <a href="javascript:void(0);" class="text-body"
                            ><i class="ti ti-message-dots ti-sm"></i> 20</a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                  <div class="card">
                    <div class="card-header">
                      <div class="d-flex align-items-start">
                        <div class="d-flex align-items-start">
                          <div class="avatar me-2">
                            <img src="/assets/img/icons/brands/xd-label.png" alt="Avatar" class="rounded-circle" />
                          </div>
                          <div class="me-2 ms-1">
                            <h5 class="mb-0">
                              <a href="javascript:;" class="stretched-link text-body">Logo Design</a>
                            </h5>
                            <div class="client-info">
                              <span class="fw-medium">Client: </span><span class="text-muted">Olive Strickland</span>
                            </div>
                          </div>
                        </div>
                        <div class="ms-auto">
                          <div class="dropdown zindex-2">
                            <button
                              type="button"
                              class="btn dropdown-toggle hide-arrow p-0"
                              data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <i class="ti ti-dots-vertical text-muted"></i>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li><a class="dropdown-item" href="javascript:void(0);">Rename project</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">View details</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">Add to favorites</a></li>
                              <li>
                                <hr class="dropdown-divider" />
                              </li>
                              <li><a class="dropdown-item text-danger" href="javascript:void(0);">Leave Project</a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="d-flex align-items-center flex-wrap">
                        <div class="bg-lighter px-3 py-2 rounded me-auto mb-3">
                          <h6 class="mb-0">$1.3k <span class="text-body fw-normal">/ $655</span></h6>
                          <span>Total Budget</span>
                        </div>
                        <div class="text-end mb-3">
                          <h6 class="mb-0">Start Date: <span class="text-body fw-normal">17/8/21</span></h6>
                          <h6 class="mb-1">Deadline: <span class="text-body fw-normal">02/11/21</span></h6>
                        </div>
                      </div>
                      <p class="mb-0">
                        Premium logo designs created by top logo designers. Create the branding of business.
                      </p>
                    </div>
                    <div class="card-body border-top">
                      <div class="d-flex align-items-center mb-3">
                        <h6 class="mb-1">All Hours: <span class="text-body fw-normal">580/445</span></h6>
                        <span class="badge bg-label-success ms-auto">4 Days left</span>
                      </div>
                      <div class="d-flex justify-content-between align-items-center mb-2 pb-1">
                        <small>Task: 290/290</small>
                        <small>100% Completed</small>
                      </div>
                      <div class="progress mb-2" style="height: 8px">
                        <div
                          class="progress-bar"
                          role="progressbar"
                          style="width: 100%"
                          aria-valuenow="100"
                          aria-valuemin="0"
                          aria-valuemax="100"></div>
                      </div>
                      <div class="d-flex align-items-center pt-1">
                        <div class="d-flex align-items-center">
                          <ul class="list-unstyled d-flex align-items-center avatar-group mb-0 zindex-2">
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Kim Karlos"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/3.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Katy Turner"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/9.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Peter Adward"
                              class="avatar avatar-sm pull-up me-2">
                              <img class="rounded-circle" src="/assets/img/avatars/6.png" alt="Avatar" />
                            </li>
                            <li><small class="text-muted">16 Members</small></li>
                          </ul>
                        </div>
                        <div class="ms-auto">
                          <a href="javascript:void(0);" class="text-body"
                            ><i class="ti ti-message-dots ti-sm"></i> 37</a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--/ Project Cards -->
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
                    <a href="https://themeforest.net/licenses/standard" class="footer-link me-4" target="_blank"
                      >License</a
                    >
                    <a href="https://1.envato.market/pixinvent_portfolio" target="_blank" class="footer-link me-4"
                      >More Themes</a
                    >

                    <a
                      href="https://demos.pixinvent.com/vuexy-html-admin-template/documentation/"
                      target="_blank"
                      class="footer-link me-4"
                      >Documentation</a
                    >

                    <a href="https://pixinvent.ticksy.com/" target="_blank" class="footer-link d-none d-sm-inline-block"
                      >Support</a
                    >
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

    <!-- Main JS -->
    <script src="/assets/js/main.js"></script>

    <!-- Page JS -->
  </body>
</html>
