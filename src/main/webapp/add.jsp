<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Responsive Bootstrap 5 Admin &amp; Dashboard Template">
    <meta name="author" content="Bootlab">

    <title>fund</title>

    <script src="https://res.doubleq666.cn/fund/fund_files/jquery.min.js"></script>
    <link href="https://res.doubleq666.cn/fund/fund_files/css2" rel="stylesheet">

    <!-- Choose your prefered color scheme -->
    <!-- <link href="css/light.css" rel="stylesheet"> -->
    <!-- <link href="css/dark.css" rel="stylesheet"> -->

    <!-- BEGIN SETTINGS -->
    <!-- Remove this after purchasing -->
    <link class="js-stylesheet" href="https://res.doubleq666.cn/fund/fund_files/dark.css" rel="stylesheet">

    <!--    <script src="./fund_files/settings.js"></script>-->
    <!--    <script async="" src="./fund_files/hotjar-2120269.js"></script>-->
    <!--    <script async="" src="./fund_files/js"></script>-->
    <!--    <script async="" src="./fund_files/modules.bcd9ade6b0bb9bdd0789.js" charset="utf-8"></script>-->

    <script src="https://res.doubleq666.cn/fund/fund_files/app1.js"></script>

    <script>
        (function (h, o, t, j, a, r) {
            h.hj = h.hj || function () {
                (h.hj.q = h.hj.q || []).push(arguments)
            };
            h._hjSettings = {hjid: 2120269, hjsv: 6};
            a = o.getElementsByTagName('head')[0];
            r = o.createElement('script');
            r.async = 1;
            r.src = t + h._hjSettings.hjid + j + h._hjSettings.hjsv;
            a.appendChild(r);
        })(window, document, 'https://static.hotjar.com/c/hotjar-', '.js?sv=');
    </script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }

        gtag('js', new Date());

        gtag('config', 'G-Q3ZYEKLQ68');
    </script>
    <style type="text/css">/* Chart.js */
    /*
     * DOM element rendering detection
     * https://davidwalsh.name/detect-node-insertion
     */
    @keyframes chartjs-render-animation {
        from {
            opacity: 0.99;
        }
        to {
            opacity: 1;
        }
    }

    .chartjs-render-monitor {
        animation: chartjs-render-animation 0.001s;
    }

    /*
     * DOM element resizing detection
     * https://github.com/marcj/css-element-queries
     */
    .chartjs-size-monitor,
    .chartjs-size-monitor-expand,
    .chartjs-size-monitor-shrink {
        position: absolute;
        direction: ltr;
        left: 0;
        top: 0;
        right: 0;
        bottom: 0;
        overflow: hidden;
        pointer-events: none;
        visibility: hidden;
        z-index: -1;
    }

    .chartjs-size-monitor-expand > div {
        position: absolute;
        width: 1000000px;
        height: 1000000px;
        left: 0;
        top: 0;
    }

    .chartjs-size-monitor-shrink > div {
        position: absolute;
        width: 200%;
        height: 200%;
        left: 0;
        top: 0;
    }
    </style>

    <style type="text/css">iframe#_hjRemoteVarsFrame {
        display: none !important;
        width: 1px !important;
        height: 1px !important;
        opacity: 0 !important;
        pointer-events: none !important;
    }</style>
</head>
<!--
  HOW TO USE:
  data-theme: default (default), dark, light
  data-layout: fluid (default), boxed
  data-sidebar-position: left (default), right
  data-sidebar-behavior: sticky (default), fixed, compact
-->

<body data-theme="dark" data-layout="fluid" data-sidebar-position="left" data-sidebar-behavior="sticky" class="">
<div class="wrapper">
    <nav id="sidebar" class="sidebar">
        <div class="sidebar-content js-simplebar" data-simplebar="init">
            <div class="simplebar-wrapper" style="margin: 0px;">
                <div class="simplebar-height-auto-observer-wrapper">
                    <div class="simplebar-height-auto-observer"></div>
                </div>
                <div class="simplebar-mask">
                    <div class="simplebar-offset" style="right: 0px; bottom: 0px;">
                        <div class="simplebar-content-wrapper" tabindex="0" role="region"

                             aria-label="scrollable content" style="height: 100%; overflow: hidden scroll;">
                            <div class="simplebar-content" style="padding: 0px;">
                                <a class="sidebar-brand" href="https://appstack.bootlab.io/index.html">
                                    <img width="60%" src="https://res.doubleq666.cn/fund/image/logo666.png">
                                    <br><br>
                                    <a class="sidebar-brand" href="https://appstack.bootlab.io/index.html">
                                        <img width="80%" src="https://res.doubleq666.cn/fund/image/logo3.png">
                                    </a>
                                </a>

                                <ul class="sidebar-nav">
                                    <li class="sidebar-item active">
                                        <a data-bs-target="#dashboards" data-bs-toggle="collapse" class="sidebar-link">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-sliders align-middle">
                                                <line x1="4" y1="21" x2="4" y2="14"></line>
                                                <line x1="4" y1="10" x2="4" y2="3"></line>
                                                <line x1="12" y1="21" x2="12" y2="12"></line>
                                                <line x1="12" y1="8" x2="12" y2="3"></line>
                                                <line x1="20" y1="21" x2="20" y2="16"></line>
                                                <line x1="20" y1="12" x2="20" y2="3"></line>
                                                <line x1="1" y1="14" x2="7" y2="14"></line>
                                                <line x1="9" y1="8" x2="15" y2="8"></line>
                                                <line x1="17" y1="16" x2="23" y2="16"></line>
                                            </svg>
                                            <span class="align-middle">持有基金</span>
                                            <span class="badge badge-sidebar-primary">${requestScope.funds_cnt}</span>
                                        </a>
                                        <ul id="dashboards" class="sidebar-dropdown list-unstyled collapse show"
                                            data-bs-parent="#sidebar">
                                            <c:forEach items="${requestScope.funds_list}" var="fund" varStatus="s">
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link sidebar-fundlist"
                                                       fundID=${fund.fid}>${fund.fname}<br>${fund.fid}</a>
                                                </li>
                                            </c:forEach>
                                            <script>
                                                $(function () {
                                                    $(".sidebar-fundlist").click(function (e) {
                                                        window.location.href = "./fund?fundID=" + $(e.target).eq(0).attr('fundID');
                                                        // var v = $(e.target);
                                                        // // $(this).
                                                        // // alert($(this).index(this));
                                                        // alert(v.eq(0).attr('fundID'));
                                                    })
                                                })
                                            </script>
                                        </ul>
                                    </li>
                                    <li class="sidebar-item">
                                        <a class="sidebar-link" href="addFund">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-list align-middle">
                                                <line x1="8" y1="6" x2="21" y2="6"></line>
                                                <line x1="8" y1="12" x2="21" y2="12"></line>
                                                <line x1="8" y1="18" x2="21" y2="18"></line>
                                                <line x1="3" y1="6" x2="3.01" y2="6"></line>
                                                <line x1="3" y1="12" x2="3.01" y2="12"></line>
                                                <line x1="3" y1="18" x2="3.01" y2="18"></line>
                                            </svg>
                                            <span class="align-middle">添加基金</span>
                                        </a>
                                    </li>
                                    <li class="sidebar-item">
                                        <a class="sidebar-link" href="./gain">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-layout align-middle">
                                                <rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect>
                                                <line x1="3" y1="9" x2="21" y2="9"></line>
                                                <line x1="9" y1="21" x2="9" y2="9"></line>
                                            </svg>
                                            <span class="align-middle">总收益</span>
                                        </a>
                                    </li>
                                    <li class="sidebar-item">
                                        <a data-bs-target="#auth" data-bs-toggle="collapse"
                                           class="sidebar-link collapsed">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-users align-middle">
                                                <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="9" cy="7" r="4"></circle>
                                                <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                                <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                                            </svg>
                                            <span class="align-middle">使用说明</span>
                                            <span class="badge badge-sidebar-secondary">Special</span>
                                        </a>
                                        <ul id="auth" class="sidebar-dropdown list-unstyled collapse "
                                            data-bs-parent="#sidebar">
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="https://appstack.bootlab.io/pages-sign-in.html">Sign
                                                In</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="https://appstack.bootlab.io/pages-sign-up.html">Sign
                                                Up</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="https://appstack.bootlab.io/pages-reset-password.html">Reset
                                                Password</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="https://appstack.bootlab.io/pages-404.html">404
                                                Page</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="https://appstack.bootlab.io/pages-500.html">500
                                                Page</a></li>
                                        </ul>
                                    </li>
                                    <li class="sidebar-item">
                                        <a data-bs-target="#documentation" data-bs-toggle="collapse"
                                           class="sidebar-link collapsed">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-book-open align-middle">
                                                <path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path>
                                                <path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path>
                                            </svg>
                                            <span class="align-middle">基金博客</span>
                                        </a>
                                        <ul id="documentation" class="sidebar-dropdown list-unstyled collapse "
                                            data-bs-parent="#sidebar">
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="https://appstack.bootlab.io/docs-introduction.html">Introduction</a>
                                            </li>
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="https://appstack.bootlab.io/docs-installation.html">Getting
                                                Started</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="https://appstack.bootlab.io/docs-customization.html">Customization</a>
                                            </li>
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="https://appstack.bootlab.io/docs-plugins.html">Plugins</a>
                                            </li>
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="https://appstack.bootlab.io/docs-changelog.html">Changelog</a>
                                            </li>
                                        </ul>
                                    </li>

                                </ul>

                                <div class="sidebar-cta">
                                    <div class="sidebar-cta-content">
                                        <strong class="d-inline-block mb-2">下载数据</strong>
                                        <div class="mb-3 text-sm">
                                            打包下载所有持有基金和总收益的表格
                                        </div>

                                        <div class="d-grid">
                                            <a href="https://themes.getbootstrap.com/product/appstack-responsive-admin-template/"
                                               class="btn btn-primary" target="_blank">下载</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="simplebar-placeholder" style="width: auto; height: 1263px;"></div>
            </div>
            <div class="simplebar-track simplebar-horizontal" style="visibility: hidden;">
                <div class="simplebar-scrollbar" style="width: 0px; display: none;"></div>
            </div>
            <div class="simplebar-track simplebar-vertical" style="visibility: visible;">
                <div class="simplebar-scrollbar"
                     style="height: 291px; transform: translate3d(0px, 0px, 0px); display: block;"></div>
            </div>
        </div>
    </nav>
    <div class="main">
        <nav class="navbar navbar-expand navbar-light navbar-bg">
            <a class="sidebar-toggle">
                <i class="hamburger align-self-center"></i>
            </a>

            <ul class="navbar-nav">
                <li class="nav-item px-2 dropdown">
                    <a class="nav-link dropdown-toggle" href="#"
                       id="servicesDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false">
                        导航
                    </a>
                    <div class="dropdown-menu dropdown-menu-start dropdown-mega" aria-labelledby="servicesDropdown">
                        <div class="d-md-flex align-items-start justify-content-start">
                            <div class="dropdown-mega-list">
                                <div class="dropdown-header">UI Elements</div>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Alerts</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Buttons</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Cards</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Carousel</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">General</a>
                                <a class="dropdown-item"
                                   href="https://appstack.bootlab.io/dashboard-default.html#">Grid</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Modals</a>
                                <a class="dropdown-item"
                                   href="https://appstack.bootlab.io/dashboard-default.html#">Tabs</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Typography</a>
                            </div>
                            <div class="dropdown-mega-list">
                                <div class="dropdown-header">Forms</div>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Layouts</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Basic
                                    Inputs</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Input
                                    Groups</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Advanced
                                    Inputs</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Editors</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Validation</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Wizard</a>
                            </div>
                            <div class="dropdown-mega-list">
                                <div class="dropdown-header">Tables</div>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Basic
                                    Tables</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Responsive
                                    Table</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Table
                                    with Buttons</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Column
                                    Search</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Muulti
                                    Selection</a>
                                <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">Ajax
                                    Sourced Data</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>

            <div class="navbar-collapse collapse">
                <ul class="navbar-nav navbar-align">
                    <li class="nav-item dropdown">
                        <a class="nav-icon dropdown-toggle" href="https://appstack.bootlab.io/dashboard-default.html#"
                           id="messagesDropdown" data-bs-toggle="dropdown">
                            <div class="position-relative">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-message-circle align-middle">
                                    <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path>
                                </svg>
                                <span class="indicator">4</span>
                            </div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0"
                             aria-labelledby="messagesDropdown">
                            <div class="dropdown-menu-header">
                                <div class="position-relative">
                                    4 New Messages
                                </div>
                            </div>
                            <div class="list-group">
                                <a href="https://appstack.bootlab.io/dashboard-default.html#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <img src="https://res.doubleq666.cn/fund/fund_files/avatar-5.jpg"
                                                 class="avatar img-fluid rounded-circle"
                                                 alt="Ashley Briggs">
                                        </div>
                                        <div class="col-10 ps-2">
                                            <div class="text-dark">Ashley Briggs</div>
                                            <div class="text-muted small mt-1">Nam pretium turpis et arcu. Duis arcu
                                                tortor.
                                            </div>
                                            <div class="text-muted small mt-1">15m ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://appstack.bootlab.io/dashboard-default.html#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <img src="https://res.doubleq666.cn/fund/fund_files/avatar-2.jpg"
                                                 class="avatar img-fluid rounded-circle"
                                                 alt="Carl Jenkins">
                                        </div>
                                        <div class="col-10 ps-2">
                                            <div class="text-dark">Carl Jenkins</div>
                                            <div class="text-muted small mt-1">Curabitur ligula sapien euismod vitae.
                                            </div>
                                            <div class="text-muted small mt-1">2h ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://appstack.bootlab.io/dashboard-default.html#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <img src="https://res.doubleq666.cn/fund/fund_files/avatar-4.jpg"
                                                 class="avatar img-fluid rounded-circle"
                                                 alt="Stacie Hall">
                                        </div>
                                        <div class="col-10 ps-2">
                                            <div class="text-dark">Stacie Hall</div>
                                            <div class="text-muted small mt-1">Pellentesque auctor neque nec urna.</div>
                                            <div class="text-muted small mt-1">4h ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://appstack.bootlab.io/dashboard-default.html#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <img src="https://res.doubleq666.cn/fund/fund_files/avatar-3.jpg"
                                                 class="avatar img-fluid rounded-circle"
                                                 alt="Bertha Martin">
                                        </div>
                                        <div class="col-10 ps-2">
                                            <div class="text-dark">Bertha Martin</div>
                                            <div class="text-muted small mt-1">Aenean tellus metus, bibendum sed,
                                                posuere ac, mattis non.
                                            </div>
                                            <div class="text-muted small mt-1">5h ago</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="dropdown-menu-footer">
                                <a href="https://appstack.bootlab.io/dashboard-default.html#" class="text-muted">Show
                                    all messages</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-icon dropdown-toggle" href="https://appstack.bootlab.io/dashboard-default.html#"
                           id="alertsDropdown" data-bs-toggle="dropdown">
                            <div class="position-relative">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-bell-off align-middle">
                                    <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                                    <path d="M18.63 13A17.89 17.89 0 0 1 18 8"></path>
                                    <path d="M6.26 6.26A5.86 5.86 0 0 0 6 8c0 7-3 9-3 9h14"></path>
                                    <path d="M18 8a6 6 0 0 0-9.33-5"></path>
                                    <line x1="1" y1="1" x2="23" y2="23"></line>
                                </svg>
                            </div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0"
                             aria-labelledby="alertsDropdown">
                            <div class="dropdown-menu-header">
                                4 New Notifications
                            </div>
                            <div class="list-group">
                                <a href="https://appstack.bootlab.io/dashboard-default.html#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-alert-circle text-danger">
                                                <circle cx="12" cy="12" r="10"></circle>
                                                <line x1="12" y1="8" x2="12" y2="12"></line>
                                                <line x1="12" y1="16" x2="12.01" y2="16"></line>
                                            </svg>
                                        </div>
                                        <div class="col-10">
                                            <div class="text-dark">Update completed</div>
                                            <div class="text-muted small mt-1">Restart server 12 to complete the
                                                update.
                                            </div>
                                            <div class="text-muted small mt-1">2h ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://appstack.bootlab.io/dashboard-default.html#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-bell text-warning">
                                                <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                                                <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                                            </svg>
                                        </div>
                                        <div class="col-10">
                                            <div class="text-dark">Lorem ipsum</div>
                                            <div class="text-muted small mt-1">Aliquam ex eros, imperdiet vulputate
                                                hendrerit et.
                                            </div>
                                            <div class="text-muted small mt-1">6h ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://appstack.bootlab.io/dashboard-default.html#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-home text-primary">
                                                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                                                <polyline points="9 22 9 12 15 12 15 22"></polyline>
                                            </svg>
                                        </div>
                                        <div class="col-10">
                                            <div class="text-dark">Login from 192.186.1.1</div>
                                            <div class="text-muted small mt-1">8h ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://appstack.bootlab.io/dashboard-default.html#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-user-plus text-success">
                                                <path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="8.5" cy="7" r="4"></circle>
                                                <line x1="20" y1="8" x2="20" y2="14"></line>
                                                <line x1="23" y1="11" x2="17" y2="11"></line>
                                            </svg>
                                        </div>
                                        <div class="col-10">
                                            <div class="text-dark">New connection</div>
                                            <div class="text-muted small mt-1">Anna accepted your request.</div>
                                            <div class="text-muted small mt-1">12h ago</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="dropdown-menu-footer">
                                <a href="https://appstack.bootlab.io/dashboard-default.html#" class="text-muted">Show
                                    all notifications</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-icon dropdown-toggle d-inline-block d-sm-none"
                           href="https://appstack.bootlab.io/dashboard-default.html#" data-bs-toggle="dropdown">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                 fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                 stroke-linejoin="round" class="feather feather-settings align-middle">
                                <circle cx="12" cy="12" r="3"></circle>
                                <path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path>
                            </svg>
                        </a>

                        <a class="nav-link dropdown-toggle d-none d-sm-inline-block"
                           href="https://appstack.bootlab.io/dashboard-default.html#" data-bs-toggle="dropdown">
                            <img src="https://res.doubleq666.cn/fund/fund_files/avatar.jpg"
                                 class="avatar img-fluid rounded-circle me-1"
                                 alt="Chris Wood"> <span class="text-dark">${requestScope.name}</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end">
                            <a class="dropdown-item" href="https://appstack.bootlab.io/pages-profile.html">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-user align-middle me-1">
                                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                    <circle cx="12" cy="7" r="4"></circle>
                                </svg>
                                个人资料</a>
                            <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-pie-chart align-middle me-1">
                                    <path d="M21.21 15.89A10 10 0 1 1 8 2.83"></path>
                                    <path d="M22 12A10 10 0 0 0 12 2v10z"></path>
                                </svg>
                                Analytics</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="https://appstack.bootlab.io/pages-settings.html">Settings
                                &amp; Privacy</a>
                            <a class="dropdown-item" href="https://appstack.bootlab.io/dashboard-default.html#">帮助</a>
                            <a class="dropdown-item" id="logoutButton">登出</a>
                            <script>
                                $(function () {
                                    $("#logoutButton").click(function () {
                                        $.ajax({
                                            url: "./logout",
                                            type: "post",
                                            data: {
                                                uid: ${requestScope.uid}
                                            },
                                            success: function (data) {
                                                window.location.href = "./fund"
                                            }
                                        })
                                    })
                                })
                            </script>
                            <%--                            <script>--%>
                            <%--                                --%>
                            <%--                            </script>--%>
                            <%--
                            requestScope.uid}--%>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <main class="content">
            <div class="container-fluid p-0">
                <div class="row">

                    <div class="col-12 col-lg-6 col-xl-4 <%--d-flex--%>">
                        <div class="card flex-fill">
                            <div class="card-header">
                                <div class="card-actions float-end">
                                    <div class="dropdown position-relative">
                                        <a href="https://appstack.bootlab.io/dashboard-default.html#"
                                           data-bs-toggle="dropdown" data-bs-display="static">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-more-horizontal align-middle">
                                                <circle cx="12" cy="12" r="1"></circle>
                                                <circle cx="19" cy="12" r="1"></circle>
                                                <circle cx="5" cy="12" r="1"></circle>
                                            </svg>
                                        </a>

                                        <div class="dropdown-menu dropdown-menu-end">
                                            <a class="dropdown-item"
                                               href="https://appstack.bootlab.io/dashboard-default.html#">Action</a>
                                            <a class="dropdown-item"
                                               href="https://appstack.bootlab.io/dashboard-default.html#">Another
                                                action</a>
                                            <a class="dropdown-item"
                                               href="https://appstack.bootlab.io/dashboard-default.html#">Something else
                                                here</a>
                                        </div>
                                    </div>
                                </div>
                                <h5 class="card-title mb-0">查找基金</h5>
                            </div>
                            <div class="card-body">
                                <div class="mb-3"   >
                                    <label class="form-label">基金ID</label>
                                    <div class="row">
                                        <div class="col-12 col-lg-9">
                                            <input id="IDinputBox" class="form-control"
                                                   placeholder="基金ID（请输入完整的基金编号）">
                                        </div>
                                        <div class="col-12 col-lg-3">
                                            <button class="btn btn-primary" id="search1">查询</button>
                                            <script>
                                                $(function () {
                                                    $("#search1").click(function () {
                                                        $.ajax({
                                                            url: "./searchFund",
                                                            type: "post",
                                                            data: {
                                                                op: "1",
                                                                fid: $("#IDinputBox").val()
                                                            },
                                                            success: function (data) {
                                                                $("tbody").html(data)
                                                            }
                                                        })
                                                    })
                                                })
                                            </script>
                                        </div>
                                    </div>

                                    <span class="font-13 text-muted">例如 003096</span>
                                </div>
                                <div class="mb-3">
                                    <label id="NameInputBox" class="form-label">基金名称</label>
                                    <div class="row">
                                        <div class="col-12 col-lg-9">
                                            <input type="email" class="form-control"
                                                   placeholder="基金名称（支持模糊搜索）">
                                        </div>
                                        <div class="col-12 col-lg-3">
                                            <button id="search2" class="btn btn-primary">查询</button>
                                            <script>
                                                $("#search2").click(function () {
                                                    $.ajax({
                                                        url: "./searchFund",
                                                        type: "post",
                                                        data: {
                                                            op: "2",
                                                            fname: $("#NameInputBox").val()
                                                        },
                                                        success: function (data) {
                                                            $("tbody").html(data)
                                                        }
                                                    })
                                                })
                                            </script>
                                        </div>
                                    </div>

                                    <span class="font-13 text-muted">例如 中欧医疗健康混合C</span>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">基金公司</label>
                                    <div class="row">
                                        <div class="col-12 col-lg-9">
                                            <input type="email" class="form-control"
                                                   placeholder="基金公司（支持模糊搜索）">
                                        </div>
                                        <div class="col-12 col-lg-3">
                                            <button type="submit" class="btn btn-primary">查询</button>
                                        </div>
                                    </div>

                                    <span class="font-13 text-muted">例如 葛兰</span>
                                </div>
                                <div class="mb-3 text-md-center">
                                    <button type="button" class="btn btn-success" aria-haspopup="true"
                                            id="submitFund">
                                        添加
                                    </button>
                                    <script>
                                        $(function () {
                                            $("#submitFund").click(function() {
                                                $("#bodyBox tr").each(function() {
                                                    if ($(this).children("td").children("input").is(":checked") === true) {
                                                        $.ajax({
                                                            url: "./addFundList",
                                                            type: "post",
                                                            data: {
                                                                fid: $(this).children("td")[2].innerText
                                                            }
                                                        })
                                                    }
                                                })
                                                window.location.href = "./addFund";
                                            })
                                        })
                                    </script>
                                    <br><br>
                                    <span>点击查找列表选择要添加的基金</span><br>
                                    <span>共选择 0 条基金</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--                    <div class="col-12 col-lg-6 col-xl-4 d-flex"></div>-->
                    <div class="col-12 col-lg-6 col-xl-8 d-flex">
                        <div class="card flex-fill w-100">
                            <div class="card-header">
                                <div class="card-actions float-end">
                                    <div class="dropdown position-relative">
                                        <a href="https://appstack.bootlab.io/dashboard-default.html#"
                                           data-bs-toggle="dropdown" data-bs-display="static">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-more-horizontal align-middle">
                                                <circle cx="12" cy="12" r="1"></circle>
                                                <circle cx="19" cy="12" r="1"></circle>
                                                <circle cx="5" cy="12" r="1"></circle>
                                            </svg>
                                        </a>

                                        <div class="dropdown-menu dropdown-menu-end">
                                            <a class="dropdown-item"
                                               href="https://appstack.bootlab.io/dashboard-default.html#">Action</a>
                                            <a class="dropdown-item"
                                               href="https://appstack.bootlab.io/dashboard-default.html#">Another
                                                action</a>
                                            <a class="dropdown-item"
                                               href="https://appstack.bootlab.io/dashboard-default.html#">Something else
                                                here</a>
                                        </div>
                                    </div>
                                </div>
                                <h5 class="card-title mb-0">查询结果</h5>
                            </div>
                            <div class="dataTables_wrapper dt-bootstrap5 no-footer">
                                <form action="">
                                    <table id="datatables-multi"
                                           class="table table-striped dataTable no-footer dtr-inline"
                                           style="width: 100%;" aria-describedby="datatables-multi_info">
                                        <thead>
                                        <tr>
                                            <th class="sorting sorting_asc" tabindex="0"
                                                aria-controls="datatables-multi" rowspan="1" colspan="1"
                                                style="width: 50px;" aria-sort="ascending"
                                                aria-label="Name: activate to sort column descending">选择
                                            </th>
                                            <th class="sorting sorting_asc" tabindex="0"
                                                aria-controls="datatables-multi" rowspan="1" colspan="1"
                                                style="width: 200px;" aria-sort="ascending"
                                                aria-label="Name: activate to sort column descending">基金名称
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="datatables-multi"
                                                rowspan="1" colspan="1" style="width: 100px;"
                                                aria-label="Position: activate to sort column ascending">基金编号
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="datatables-multi"
                                                rowspan="1" colspan="1" style="width: 141px;"
                                                aria-label="Office: activate to sort column ascending">基金经理
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="datatables-multi"
                                                rowspan="1" colspan="1" style="width: 63px;"
                                                aria-label="Age: activate to sort column ascending">基金公司
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody id="bodyBox">
                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <footer class="footer">
            <div class="container-fluid">
                <div class="row text-muted">
                    <!--                    <div class="col-6 text-md-center" >-->
                    <div align="center">
                        <a class="text-muted" href="https://beian.miit.gov.cn/">蜀ICP备2021022086号-1</a>
                    </div>

                    <!--                    </div>-->
                </div>
            </div>
        </footer>
    </div>
</div>


<div class="notyf"></div>
<div class="notyf-announcer" aria-atomic="true" aria-live="polite"
     style="border: 0px; clip: rect(0px, 0px, 0px, 0px); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; width: 1px; outline: 0px;"></div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Bar chart
        new Chart(document.getElementById("chartjs-dashboard-bar"), {
            type: "bar",
            data: {
                labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                datasets: [{
                    label: "Last year",
                    backgroundColor: window.theme.primary,
                    borderColor: window.theme.primary,
                    hoverBackgroundColor: window.theme.primary,
                    hoverBorderColor: window.theme.primary,
                    data: [54, 67, 41, 55, 62, 45, 55, 73, 60, 76, 48, 79],
                    barPercentage: .325,
                    categoryPercentage: .5
                }, {
                    label: "This year",
                    backgroundColor: window.theme["primary-light"],
                    borderColor: window.theme["primary-light"],
                    hoverBackgroundColor: window.theme["primary-light"],
                    hoverBorderColor: window.theme["primary-light"],
                    data: [69, 66, 24, 48, 52, 51, 44, 53, 62, 79, 51, 68],
                    barPercentage: .325,
                    categoryPercentage: .5
                }]
            },
            options: {
                maintainAspectRatio: false,
                cornerRadius: 15,
                legend: {
                    display: false
                },
                scales: {
                    yAxes: [{
                        gridLines: {
                            display: false
                        },
                        ticks: {
                            stepSize: 20
                        },
                        stacked: true,
                    }],
                    xAxes: [{
                        gridLines: {
                            color: "transparent"
                        },
                        stacked: true,
                    }]
                }
            }
        });
    });
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        $("#datetimepicker-dashboard").datetimepicker({
            inline: true,
            sideBySide: false,
            format: "L"
        });
    });
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Pie chart
        new Chart(document.getElementById("chartjs-dashboard-pie"), {
            type: "pie",
            data: {
                labels: ["Direct", "Affiliate", "E-mail", "Other"],
                datasets: [{
                    data: [2602, 1253, 541, 1465],
                    backgroundColor: [
                        window.theme.primary,
                        window.theme.warning,
                        window.theme.danger,
                        "#E8EAED"
                    ],
                    borderWidth: 5,
                    borderColor: window.theme.white
                }]
            },
            options: {
                responsive: !window.MSInputMethodContext,
                maintainAspectRatio: false,
                cutoutPercentage: 70,
                legend: {
                    display: false
                }
            }
        });
    });
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        $("#datatables-dashboard-projects").DataTable({
            pageLength: 6,
            lengthChange: false,
            bFilter: false,
            autoWidth: false
        });
    });
</script>
<script src="https://res.doubleq666.cn/fund/fund_files/app.js"></script>

<%--<svg id="SvgjsSvg1001" width="2" height="0" xmlns="http://www.w3.org/2000/svg" version="1.1"--%>
<%--     style="overflow: hidden; top: -100%; left: -100%; position: absolute; opacity: 0;">--%>
<%--    <defs id="SvgjsDefs1002"></defs>--%>
<%--    <polyline id="SvgjsPolyline1003" points="0,0"></polyline>--%>
<%--    <path id="SvgjsPath1004" d="M0 0 "></path>--%>
<%--</svg>--%>
<iframe id="_hjSafeContext_18983286" src="https://res.doubleq666.cn/fund/fund_files/saved_resource.html"
        style="display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;"></iframe>
<iframe name="_hjRemoteVarsFrame" title="_hjRemoteVarsFrame" id="_hjRemoteVarsFrame"
        src="https://res.doubleq666.cn/fund/fund_files/box-69edcc3187336f9b0a3fbb4c73be9fe6.html"
        style="display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;"></iframe>
</body>
</html>