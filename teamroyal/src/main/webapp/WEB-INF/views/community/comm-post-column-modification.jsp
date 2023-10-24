<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <link rel="stylesheet" href="../../../assets/vendor/css/rtl/theme-default.css"class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../../../assets/css/demo.css" />

    <!--Shine Css-->
    <link rel="stylesheet" href="../../../assets/vendor/css/rtl/Shine-Comm.css" />
    <link rel="stylesheet" href="../../../assets/vendor/css/scss/Shine-comm-post-colmn.css">

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../../../assets/vendor/libs/node-waves/node-waves.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/typeahead-js/typeahead.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/apex-charts/apex-charts.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/swiper/swiper.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />
    <title>comm-ctt</title>
    <link rel="stylesheet" href="comm-list.css">

</head>

<body>
    <section class="notice Sh-notice">
        <div class="page-title">
            <div class="container">
                <h3>수정</h3>
            </div>
        </div>

        <div class="Shine-post-column-outBox">
            <ul class="Shine-post-column-innerBox">
                <li class="Shine-post-column-ctt">
                    <ul class="d-flex Shine-post-column-ctt-title">
                        <li>
                            <div class="d-flex justify-content-center mt-5" >
                                <p class="p-1 reddot">[*]</p>
                                <h3>제목</h3>
                            </div>
                        </li>
                        <li><input type="text" class="Shine-post-column-ctt-input"></li>
                    </ul>
                </li>
                <li class="Shine-post-column-ctt Shine-post-column-ctt-second">
                    <ul class="d-flex Shine-post-column-ctt-ctt ">
                        <li>
                            <div class="d-flex justify-content-center mt-5" >
                                <p class="p-1 reddot">[*]</p>
                                <h3>제목</h3>
                            </div>
                        </li>
                        <li><input type="text" class="Shine-post-column-ctt-input"></li>
                    </ul>
                </li>
                <li class="Shine-post-column-ctt">
                    <ul class="d-flex Shine-post-column-ctt-title Shine-post-column-ctt-imageinput">
                        <li >
                          <div class="d-flex justify-content-center mt-4" >
                                <p class="p-1 reddot">[*]</p>
                                <h3>제목</h3>
                            </div>
                        </li>
                        <li class="w-50 Shine-post-column-ctt-img" >
                            <div class="filebox mt-5" >
                                <input class="upload-name" value="첨부파일" placeholder="첨부파일" >
                                <label for="file">파일찾기</label> 
                                <input type="file" id="file">
                            </div>
                        </li>
                    </ul>
                    
                </li>
                
            </ul>
        </div>
    </section>
</body>

</html>