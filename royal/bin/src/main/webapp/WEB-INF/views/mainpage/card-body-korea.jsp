<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html
  lang="en"
  class="light-style layout-menu-fixed layout-compact"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../../../assets/"
  data-template="horizontal-menu-template">
<head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Dashboard - Analytics | Vuexy - Bootstrap Admin Template</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../../../assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
      rel="stylesheet" />

    <!-- Icons -->
    <link rel="stylesheet" href="../../../assets/vendor/fonts/fontawesome.css" />
    <link rel="stylesheet" href="../../../assets/vendor/fonts/tabler-icons.css" />
    <link rel="stylesheet" href="../../../assets/vendor/fonts/flag-icons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../../../assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../../../assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../../../assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../../../assets/vendor/libs/node-waves/node-waves.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/typeahead-js/typeahead.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/apex-charts/apex-charts.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/swiper/swiper.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />

    <!-- Page CSS -->
    <link rel="stylesheet" href="../../../assets/vendor/css/pages/cards-advance.css" />

    <!-- Helpers -->
    <script src="../../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../../assets/js/config.js"></script>
  </head>

  <body>
    <!-- Support Tracker -->
    <div class="col-md-6 mb-4">
      <div class="card h-100" >
        <div class="card-header d-flex justify-content-between pb-0"   >
          <div class="card-title mb-0 w-100 text-xl-center"  >
            <h3 class="mb-0" >2023년 11월 10일</h3>
          </div>
          <div class="dropdown">
            <button
              class="btn p-0"
              type="button"
              id="supportTrackerMenu"
              data-bs-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false">
              <i class="ti ti-dots-vertical ti-sm text-muted"></i>
            </button>
            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="supportTrackerMenu">
              <a class="dropdown-item" href="javascript:void(0);">View More</a>
              <a class="dropdown-item" href="javascript:void(0);">Delete</a>
            </div>
          </div>
        </div>
        <div class="w-100">
          <h3 class="mx-lg-3">대한민국</h3>
        </div>
        <div class="card-body pt-0">
          <div class="row" >
            <div class="col-12 col-sm-4 col-md-12 col-lg-4">
              <div class="mt-lg-4 mt-lg-2 mb-lg-4 mb-2 pt-1" >
                <h1 class="mb-0">164</h1>
                <p class="mb-0">Total Tickets</p>
              </div>
              <ul class="p-0 m-0">
                <li class="d-flex gap-3 align-items-center mb-lg-3 pt-2 pb-1">
                  <div class="badge rounded bg-label-primary p-1"><i class="ti ti-ticket ti-sm"></i></div>
                  <div>
                    <h6 class="mb-0 text-nowrap">발전소 수</h6>
                    <small class="text-muted">32,000개</small>
                  </div>
                </li>
                <li class="d-flex gap-3 align-items-center mb-lg-3 pb-1">
                  <div class="badge rounded bg-label-info p-1">
                    <i class="ti ti-circle-check ti-sm"></i>
                  </div>
                  <div>
                    <h6 class="mb-0 text-nowrap">현재 발전량</h6>
                    <small class="text-muted">10,100kw</small>
                  </div>
                </li>
                <li class="d-flex gap-3 align-items-center pb-1">
                  <div class="badge rounded bg-label-warning p-1"><i class="ti ti-clock ti-sm"></i></div>
                  <div>
                    <h6 class="mb-0 text-nowrap">예측 발전량</h6>
                    <small class="text-muted">15,100kw</small>
                  </div>
                </li>
              </ul>
            </div>
            <div class="col-12 col-sm-8 col-md-12 col-lg-8">
              <div id="weeklyEarningReports" ></div>
            </div>
          </div>
          <!--Profit-->
          <div class="card-header d-flex justify-content-between pb-0"   >
            <div class="card-title mb-0 w-100 text-xl-center"  >
              <h3 class="mb-0" >실시간 SMP</h3>
              <h3 class="mb-0" >101.15</h3>
            </div>
            <div class="card-title mb-0 w-100 text-xl-center"  >
              <h3 class="mb-0" >실시간 REC</h3>
              <h3 class="mb-0" >73,500원</h3>
            </div>
          </div>
          <div class="row" style="border: 1px solid red;">
            <div class="w-100" style=" margin : 0 auto; border: 1px solid green;">
              <div id="profitLastMonth" style="min-height: 90px;">
                <div id="apexcharts0cn4v6ix" class="apexcharts-canvas apexcharts0cn4v6ix apexcharts-theme-light" style="margin: 0; width: 164px; height: 90px; border: 1px solid blue;">
                  <svg id="SvgjsSvg3088" width="164" height="90" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg apexcharts-zoomable" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG3090" class="apexcharts-inner apexcharts-graphical" transform="translate(6, 12)"><defs id="SvgjsDefs3089"><clipPath id="gridRectMask0cn4v6ix"><rect id="SvgjsRect3095" width="157" height="75" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMask0cn4v6ix"></clipPath><clipPath id="nonForecastMask0cn4v6ix"></clipPath><clipPath id="gridRectMarkerMask0cn4v6ix"><rect id="SvgjsRect3096" width="169" height="91" x="-9" y="-9" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><line id="SvgjsLine3094" x1="0" y1="0" x2="0" y2="73" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="73" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG3113" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG3114" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g></g><g id="SvgjsG3123" class="apexcharts-grid"><g id="SvgjsG3124" class="apexcharts-gridlines-horizontal"></g><g id="SvgjsG3125" class="apexcharts-gridlines-vertical"><line id="SvgjsLine3126" x1="0" y1="0" x2="0" y2="73" stroke="#dbdade" stroke-dasharray="6" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3127" x1="30.2" y1="0" x2="30.2" y2="73" stroke="#dbdade" stroke-dasharray="6" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3128" x1="60.4" y1="0" x2="60.4" y2="73" stroke="#dbdade" stroke-dasharray="6" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3129" x1="90.6" y1="0" x2="90.6" y2="73" stroke="#dbdade" stroke-dasharray="6" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3130" x1="120.8" y1="0" x2="120.8" y2="73" stroke="#dbdade" stroke-dasharray="6" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3131" x1="151" y1="0" x2="151" y2="73" stroke="#dbdade" stroke-dasharray="6" stroke-linecap="butt" class="apexcharts-gridline"></line></g><line id="SvgjsLine3133" x1="0" y1="73" x2="151" y2="73" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine3132" x1="0" y1="1" x2="0" y2="73" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG3097" class="apexcharts-line-series apexcharts-plot-series"><g id="SvgjsG3098" class="apexcharts-series" seriesName="seriesx1" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath3112" d="M 0 73L 30.2 42.58333333333333L 60.4 60.83333333333333L 90.6 24.33333333333333L 120.8 42.58333333333333L 151 6.083333333333329" fill="none" fill-opacity="1" stroke="rgba(0,207,232,0.85)" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-line" index="0" clip-path="url(#gridRectMask0cn4v6ix)" pathTo="M 0 73L 30.2 42.58333333333333L 60.4 60.83333333333333L 90.6 24.33333333333333L 120.8 42.58333333333333L 151 6.083333333333329" pathFrom="M -1 73L -1 73L 30.2 73L 60.4 73L 90.6 73L 120.8 73L 151 73"></path><g id="SvgjsG3099" class="apexcharts-series-markers-wrap" data:realIndex="0"><g id="SvgjsG3101" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask0cn4v6ix)"><circle id="SvgjsCircle3102" r="3.5" cx="0" cy="73" class="apexcharts-marker no-pointer-events wmxukq4hk" stroke="transparent" fill="#00cfe8" fill-opacity="1" stroke-width="3.2" stroke-opacity="0.9" rel="0" j="0" index="0" default-marker-size="3.5"></circle><circle id="SvgjsCircle3103" r="3.5" cx="30.2" cy="42.58333333333333" class="apexcharts-marker no-pointer-events w2ujqybvef" stroke="transparent" fill="#00cfe8" fill-opacity="1" stroke-width="3.2" stroke-opacity="0.9" rel="1" j="1" index="0" default-marker-size="3.5"></circle></g><g id="SvgjsG3104" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask0cn4v6ix)"><circle id="SvgjsCircle3105" r="3.5" cx="60.4" cy="60.83333333333333" class="apexcharts-marker no-pointer-events wgs1k79nw" stroke="transparent" fill="#00cfe8" fill-opacity="1" stroke-width="3.2" stroke-opacity="0.9" rel="2" j="2" index="0" default-marker-size="3.5"></circle></g><g id="SvgjsG3106" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask0cn4v6ix)"><circle id="SvgjsCircle3107" r="3.5" cx="90.6" cy="24.33333333333333" class="apexcharts-marker no-pointer-events w8to4okej" stroke="transparent" fill="#00cfe8" fill-opacity="1" stroke-width="3.2" stroke-opacity="0.9" rel="3" j="3" index="0" default-marker-size="3.5"></circle></g><g id="SvgjsG3108" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask0cn4v6ix)"><circle id="SvgjsCircle3109" r="3.5" cx="120.8" cy="42.58333333333333" class="apexcharts-marker no-pointer-events w09ukyn9m" stroke="transparent" fill="#00cfe8" fill-opacity="1" stroke-width="3.2" stroke-opacity="0.9" rel="4" j="4" index="0" default-marker-size="3.5"></circle></g><g id="SvgjsG3110" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask0cn4v6ix)"><circle id="SvgjsCircle3111" r="5" cx="151" cy="6.083333333333329" class="apexcharts-marker no-pointer-events w4t0bni6h" stroke="#00cfe8" fill="#ffffff" fill-opacity="1" stroke-width="3.2" stroke-opacity="0.9" rel="5" j="5" index="0" default-marker-size="5"></circle></g></g></g><g id="SvgjsG3100" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine3134" x1="0" y1="0" x2="151" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine3135" x1="0" y1="0" x2="151" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG3136" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG3137" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG3138" class="apexcharts-point-annotations"></g><rect id="SvgjsRect3139" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect id="SvgjsRect3140" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></g><rect id="SvgjsRect3093" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG3121" class="apexcharts-yaxis" rel="0" transform="translate(-8, 0)"><g id="SvgjsG3122" class="apexcharts-yaxis-texts-g"></g></g><g id="SvgjsG3091" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 45px;"></div></div></div>
            </div>
          </div>
          <!--Profit-->
        </div>
      </div>
    </div>
      <!--/ Support Tracker -->
    

    <!-- Overlay -->
    <div class="layout-overlay layout-menu-toggle"></div>

    <!-- Drag Target Area To SlideIn Menu On Small Screens -->
    <div class="drag-target"></div>

    <!--/ Layout wrapper -->

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->

    <script src="../../../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../../../assets/vendor/libs/popper/popper.js"></script>
    <script src="../../../assets/vendor/js/bootstrap.js"></script>
    <script src="../../../assets/vendor/libs/node-waves/node-waves.js"></script>
    <script src="../../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="../../../assets/vendor/libs/hammer/hammer.js"></script>
    <script src="../../../assets/vendor/libs/i18n/i18n.js"></script>
    <script src="../../../assets/vendor/libs/typeahead-js/typeahead.js"></script>
    <script src="../../../assets/vendor/js/menu.js"></script>

    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="../../../assets/vendor/libs/apex-charts/apexcharts.js"></script>
    <script src="../../../assets/vendor/libs/swiper/swiper.js"></script>
    <script src="../../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>

    <!-- Main JS -->
    <script src="../../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../../assets/js/dashboards-analytics.js"></script>
  </body>
</html>
>