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

    <title>User Profile - Teams | Vuexy - Bootstrap Admin Template</title>

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
              <h4 class="py-3 mb-4"><span class="text-muted fw-light">User Profile /</span> Teams</h4>

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

              <!-- Teams Cards -->
              <div class="row g-4">
                <div class="col-xl-4 col-lg-6 col-md-6">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex align-items-center mb-3">
                        <a href="javascript:;" class="d-flex align-items-center">
                          <div class="avatar me-2">
                            <img
                              src="/assets/img/icons/brands/react-label.png"
                              alt="Avatar"
                              class="rounded-circle" />
                          </div>
                          <div class="me-2 text-body h5 mb-0">React Developers</div>
                        </a>
                        <div class="ms-auto">
                          <ul class="list-inline mb-0 d-flex align-items-center">
                            <li class="list-inline-item me-0">
                              <a href="javascript:void(0);" class="d-flex align-self-center text-body"
                                ><i class="ti ti-star text-muted me-1"></i
                              ></a>
                            </li>
                            <li class="list-inline-item">
                              <div class="dropdown">
                                <button
                                  type="button"
                                  class="btn dropdown-toggle hide-arrow p-0"
                                  data-bs-toggle="dropdown"
                                  aria-expanded="false">
                                  <i class="ti ti-dots-vertical text-muted"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-end">
                                  <li><a class="dropdown-item" href="javascript:void(0);">Rename Team</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">View Details</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">Add to favorites</a></li>
                                  <li>
                                    <hr class="dropdown-divider" />
                                  </li>
                                  <li>
                                    <a class="dropdown-item text-danger" href="javascript:void(0);">Delete Team</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </div>
                      <p class="mb-3">
                        We don’t make assumptions about the rest of your technology stack, so you can develop new
                        features in React.
                      </p>
                      <div class="d-flex align-items-center pt-1">
                        <div class="d-flex align-items-center">
                          <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
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
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/6.png" alt="Avatar" />
                            </li>
                            <li class="avatar avatar-sm">
                              <span
                                class="avatar-initial rounded-circle pull-up"
                                data-bs-toggle="tooltip"
                                data-bs-placement="top"
                                title="8 more"
                                >+8</span
                              >
                            </li>
                          </ul>
                        </div>
                        <div class="ms-auto">
                          <a href="javascript:;" class="me-2"><span class="badge bg-label-primary">React</span></a>
                          <a href="javascript:;"><span class="badge bg-label-warning">Vue.JS</span></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex align-items-center mb-3">
                        <a href="javascript:;" class="d-flex align-items-center">
                          <div class="avatar me-2">
                            <img
                              src="/assets/img/icons/brands/vue-label.png"
                              alt="Avatar"
                              class="rounded-circle" />
                          </div>
                          <div class="me-2 text-body h5 mb-0">Vue.js Dev Team</div>
                        </a>
                        <div class="ms-auto">
                          <ul class="list-inline mb-0 d-flex align-items-center">
                            <li class="list-inline-item me-0">
                              <a href="javascript:void(0);" class="d-flex align-self-center text-body"
                                ><i class="ti ti-star text-muted me-1"></i
                              ></a>
                            </li>
                            <li class="list-inline-item">
                              <div class="dropdown">
                                <button
                                  type="button"
                                  class="btn dropdown-toggle hide-arrow p-0"
                                  data-bs-toggle="dropdown"
                                  aria-expanded="false">
                                  <i class="ti ti-dots-vertical text-muted"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-end">
                                  <li><a class="dropdown-item" href="javascript:void(0);">Rename Team</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">View Details</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">Add to favorites</a></li>
                                  <li>
                                    <hr class="dropdown-divider" />
                                  </li>
                                  <li>
                                    <a class="dropdown-item text-danger" href="javascript:void(0);">Delete Team</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </div>
                      <p class="mb-3">
                        The development of Vue and its ecosystem is guided by an international team, some of whom have
                        chosen to be featured below.
                      </p>
                      <div class="d-flex align-items-center pt-1">
                        <div class="d-flex align-items-center">
                          <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
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
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/6.png" alt="Avatar" />
                            </li>
                            <li class="avatar avatar-sm">
                              <span
                                class="avatar-initial rounded-circle pull-up"
                                data-bs-toggle="tooltip"
                                data-bs-placement="top"
                                title="14 more"
                                >+14</span
                              >
                            </li>
                          </ul>
                        </div>
                        <div class="ms-auto">
                          <a href="javascript:;"><span class="badge bg-label-danger">Developer</span></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex align-items-center mb-3">
                        <a href="javascript:;" class="d-flex align-items-center">
                          <div class="avatar me-2">
                            <img src="/assets/img/icons/brands/xd-label.png" alt="Avatar" class="rounded-circle" />
                          </div>
                          <div class="me-2 text-body h5 mb-0">Creative Designers</div>
                        </a>
                        <div class="ms-auto">
                          <ul class="list-inline mb-0 d-flex align-items-center">
                            <li class="list-inline-item me-0">
                              <a href="javascript:void(0);" class="d-flex align-self-center text-body"
                                ><i class="ti ti-star text-muted me-1"></i
                              ></a>
                            </li>
                            <li class="list-inline-item">
                              <div class="dropdown">
                                <button
                                  type="button"
                                  class="btn dropdown-toggle hide-arrow p-0"
                                  data-bs-toggle="dropdown"
                                  aria-expanded="false">
                                  <i class="ti ti-dots-vertical text-muted"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-end">
                                  <li><a class="dropdown-item" href="javascript:void(0);">Rename Team</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">View Details</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">Add to favorites</a></li>
                                  <li>
                                    <hr class="dropdown-divider" />
                                  </li>
                                  <li>
                                    <a class="dropdown-item text-danger" href="javascript:void(0);">Delete Team</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </div>
                      <p class="mb-3">
                        A design or product team is more than just the people on it. A team includes the people, the
                        roles they play.
                      </p>
                      <div class="d-flex align-items-center pt-1">
                        <div class="d-flex align-items-center">
                          <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
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
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/7.png" alt="Avatar" />
                            </li>
                            <li class="avatar avatar-sm">
                              <span
                                class="avatar-initial rounded-circle pull-up"
                                data-bs-toggle="tooltip"
                                data-bs-placement="top"
                                title="19 more"
                                >+19</span
                              >
                            </li>
                          </ul>
                        </div>
                        <div class="ms-auto">
                          <a href="javascript:;" class="me-2"><span class="badge bg-label-warning">Sketch</span></a>
                          <a href="javascript:;"><span class="badge bg-label-danger">XD</span></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex align-items-center mb-3">
                        <a href="javascript:;" class="d-flex align-items-center">
                          <div class="avatar me-2">
                            <img
                              src="/assets/img/icons/brands/support-label.png"
                              alt="Avatar"
                              class="rounded-circle" />
                          </div>
                          <div class="me-2 text-body h5 mb-0">Support Team</div>
                        </a>
                        <div class="ms-auto">
                          <ul class="list-inline mb-0 d-flex align-items-center">
                            <li class="list-inline-item me-0">
                              <a href="javascript:void(0);" class="d-flex align-self-center text-body"
                                ><i class="ti ti-star text-muted me-1"></i
                              ></a>
                            </li>
                            <li class="list-inline-item">
                              <div class="dropdown">
                                <button
                                  type="button"
                                  class="btn dropdown-toggle hide-arrow p-0"
                                  data-bs-toggle="dropdown"
                                  aria-expanded="false">
                                  <i class="ti ti-dots-vertical text-muted"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-end">
                                  <li><a class="dropdown-item" href="javascript:void(0);">Rename Team</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">View Details</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">Add to favorites</a></li>
                                  <li>
                                    <hr class="dropdown-divider" />
                                  </li>
                                  <li>
                                    <a class="dropdown-item text-danger" href="javascript:void(0);">Delete Team</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </div>
                      <p class="mb-3">
                        Support your team. Your customer support team is fielding the good, the bad, and the ugly day in
                        and day out.
                      </p>
                      <div class="d-flex align-items-center pt-1">
                        <div class="d-flex align-items-center">
                          <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
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
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/12.png" alt="Avatar" />
                            </li>
                            <li class="avatar avatar-sm">
                              <span
                                class="avatar-initial rounded-circle pull-up"
                                data-bs-toggle="tooltip"
                                data-bs-placement="top"
                                title="14 more"
                                >+21</span
                              >
                            </li>
                          </ul>
                        </div>
                        <div class="ms-auto">
                          <a href="javascript:;"><span class="badge bg-label-info">Zendesk</span></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex align-items-center mb-3">
                        <a href="javascript:;" class="d-flex align-items-center">
                          <div class="avatar me-2">
                            <img
                              src="/assets/img/icons/brands/social-label.png"
                              alt="Avatar"
                              class="rounded-circle" />
                          </div>
                          <div class="me-2 text-body h5 mb-0">Digital Marketing</div>
                        </a>
                        <div class="ms-auto">
                          <ul class="list-inline mb-0 d-flex align-items-center">
                            <li class="list-inline-item me-0">
                              <a href="javascript:void(0);" class="d-flex align-self-center text-body"
                                ><i class="ti ti-star text-muted me-1"></i
                              ></a>
                            </li>
                            <li class="list-inline-item">
                              <div class="dropdown">
                                <button
                                  type="button"
                                  class="btn dropdown-toggle hide-arrow p-0"
                                  data-bs-toggle="dropdown"
                                  aria-expanded="false">
                                  <i class="ti ti-dots-vertical text-muted"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-end">
                                  <li><a class="dropdown-item" href="javascript:void(0);">Rename Team</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">View Details</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">Add to favorites</a></li>
                                  <li>
                                    <hr class="dropdown-divider" />
                                  </li>
                                  <li>
                                    <a class="dropdown-item text-danger" href="javascript:void(0);">Delete Team</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </div>
                      <p class="mb-3">
                        Digital marketing refers to advertising delivered through digital channels such as search
                        engines, websites…
                      </p>
                      <div class="d-flex align-items-center pt-1">
                        <div class="d-flex align-items-center">
                          <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
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
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/5.png" alt="Avatar" />
                            </li>
                            <li class="avatar avatar-sm">
                              <span
                                class="avatar-initial rounded-circle pull-up"
                                data-bs-toggle="tooltip"
                                data-bs-placement="top"
                                title="53 more"
                                >+53</span
                              >
                            </li>
                          </ul>
                        </div>
                        <div class="ms-auto">
                          <a href="javascript:;" class="me-2"><span class="badge bg-label-primary">Twitter</span></a>
                          <a href="javascript:;"><span class="badge bg-label-success">Email</span></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex align-items-center mb-3">
                        <a href="javascript:;" class="d-flex align-items-center">
                          <div class="avatar me-2">
                            <img
                              src="/assets/img/icons/brands/event-label.png"
                              alt="Avatar"
                              class="rounded-circle" />
                          </div>
                          <div class="me-2 text-body h5 mb-0">Event</div>
                        </a>
                        <div class="ms-auto">
                          <ul class="list-inline mb-0 d-flex align-items-center">
                            <li class="list-inline-item me-0">
                              <a href="javascript:void(0);" class="d-flex align-self-center text-body"
                                ><i class="ti ti-star text-muted me-1"></i
                              ></a>
                            </li>
                            <li class="list-inline-item">
                              <div class="dropdown">
                                <button
                                  type="button"
                                  class="btn dropdown-toggle hide-arrow p-0"
                                  data-bs-toggle="dropdown"
                                  aria-expanded="false">
                                  <i class="ti ti-dots-vertical text-muted"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-end">
                                  <li><a class="dropdown-item" href="javascript:void(0);">Rename Team</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">View Details</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">Add to favorites</a></li>
                                  <li>
                                    <hr class="dropdown-divider" />
                                  </li>
                                  <li>
                                    <a class="dropdown-item text-danger" href="javascript:void(0);">Delete Team</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </div>
                      <p class="mb-3">
                        Event is defined as a particular contest which is part of a program of contests. An example of
                        an event is the long…
                      </p>
                      <div class="d-flex align-items-center pt-1">
                        <div class="d-flex align-items-center">
                          <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Vinnie Mostowy"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/9.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Allen Rieske"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/8.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Julee Rossignol"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/7.png" alt="Avatar" />
                            </li>
                            <li class="avatar avatar-sm">
                              <span
                                class="avatar-initial rounded-circle pull-up"
                                data-bs-toggle="tooltip"
                                data-bs-placement="top"
                                title="32 more"
                                >+32</span
                              >
                            </li>
                          </ul>
                        </div>
                        <div class="ms-auto">
                          <a href="javascript:;"><span class="badge bg-label-success">Hubilo</span></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex align-items-center mb-3">
                        <a href="javascript:;" class="d-flex align-items-center">
                          <div class="avatar me-2">
                            <img
                              src="/assets/img/icons/brands/figma-label.png"
                              alt="Avatar"
                              class="rounded-circle" />
                          </div>
                          <div class="me-2 text-body h5 mb-0">Figma Resources</div>
                        </a>
                        <div class="ms-auto">
                          <ul class="list-inline mb-0 d-flex align-items-center">
                            <li class="list-inline-item me-0">
                              <a href="javascript:void(0);" class="d-flex align-self-center text-body"
                                ><i class="ti ti-star text-muted me-1"></i
                              ></a>
                            </li>
                            <li class="list-inline-item">
                              <div class="dropdown">
                                <button
                                  type="button"
                                  class="btn dropdown-toggle hide-arrow p-0"
                                  data-bs-toggle="dropdown"
                                  aria-expanded="false">
                                  <i class="ti ti-dots-vertical text-muted"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-end">
                                  <li><a class="dropdown-item" href="javascript:void(0);">Rename Team</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">View Details</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">Add to favorites</a></li>
                                  <li>
                                    <hr class="dropdown-divider" />
                                  </li>
                                  <li>
                                    <a class="dropdown-item text-danger" href="javascript:void(0);">Delete Team</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </div>
                      <p class="mb-3">
                        Explore, install, use, and remix thousands of plugins and files published to the Figma Community
                        by designers and developers.
                      </p>
                      <div class="d-flex align-items-center pt-1">
                        <div class="d-flex align-items-center">
                          <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Andrew Mostowy"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/5.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Micky Ressula"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/1.png" alt="Avatar" />
                            </li>
                            <li
                              data-bs-toggle="tooltip"
                              data-popup="tooltip-custom"
                              data-bs-placement="top"
                              title="Michel Pal"
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/6.png" alt="Avatar" />
                            </li>
                            <li class="avatar avatar-sm">
                              <span
                                class="avatar-initial rounded-circle pull-up"
                                data-bs-toggle="tooltip"
                                data-bs-placement="top"
                                title="22 more"
                                >+22</span
                              >
                            </li>
                          </ul>
                        </div>
                        <div class="ms-auto">
                          <a href="javascript:;" class="me-2"><span class="badge bg-label-success">UI/UX</span></a>
                          <a href="javascript:;"><span class="badge bg-label-secondary">Figma</span></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex align-items-center mb-3">
                        <a href="javascript:;" class="d-flex align-items-center">
                          <div class="avatar me-2">
                            <img
                              src="/assets/img/icons/brands/html-label.png"
                              alt="Avatar"
                              class="rounded-circle" />
                          </div>
                          <div class="me-2 text-body h5 mb-0">Only Beginners</div>
                        </a>
                        <div class="ms-auto">
                          <ul class="list-inline mb-0 d-flex align-items-center">
                            <li class="list-inline-item me-0">
                              <a href="javascript:void(0);" class="d-flex align-self-center text-body"
                                ><i class="ti ti-star text-muted me-1"></i
                              ></a>
                            </li>
                            <li class="list-inline-item">
                              <div class="dropdown">
                                <button
                                  type="button"
                                  class="btn dropdown-toggle hide-arrow p-0"
                                  data-bs-toggle="dropdown"
                                  aria-expanded="false">
                                  <i class="ti ti-dots-vertical text-muted"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-end">
                                  <li><a class="dropdown-item" href="javascript:void(0);">Rename Team</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">View Details</a></li>
                                  <li><a class="dropdown-item" href="javascript:void(0);">Add to favorites</a></li>
                                  <li>
                                    <hr class="dropdown-divider" />
                                  </li>
                                  <li>
                                    <a class="dropdown-item text-danger" href="javascript:void(0);">Delete Team</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </div>
                      <p class="mb-3">
                        Learn the basics of how websites work, front-end vs back-end, and using a code editor. Learn
                        basic HTML, CSS, and…
                      </p>
                      <div class="d-flex align-items-center pt-1">
                        <div class="d-flex align-items-center">
                          <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
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
                              class="avatar avatar-sm pull-up">
                              <img class="rounded-circle" src="/assets/img/avatars/5.png" alt="Avatar" />
                            </li>
                            <li class="avatar avatar-sm">
                              <span
                                class="avatar-initial rounded-circle pull-up"
                                data-bs-toggle="tooltip"
                                data-bs-placement="top"
                                title="41 more"
                                >+41</span
                              >
                            </li>
                          </ul>
                        </div>
                        <div class="ms-auto">
                          <a href="javascript:;" class="me-2"><span class="badge bg-label-info">CSS</span></a>
                          <a href="javascript:;"><span class="badge bg-label-warning">HTML</span></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--/ Teams Cards -->
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
