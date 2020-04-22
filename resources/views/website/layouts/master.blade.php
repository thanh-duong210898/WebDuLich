<!DOCTYPE html>
<html class="no-js">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>PURE LUXE | AESTHETICS @yield("title")</title>
    <link rel="shortcut icon" href="{{ asset('website/favicon.png') }}">
    <meta name="description" content="Aqua | Spa and Beauty HTML5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="{{ asset('') }}">
    <link rel="stylesheet" href="{{ asset('website/assets/fonts/icon-fonts/styles.css') }}">
    <link rel="stylesheet" href="{{ asset('website/assets/styles/plugins.css') }}">
    <link rel="stylesheet" href="{{ asset('website/vendors/flexslider/flexslider.css') }}">
    <link rel="stylesheet" href="{{ asset('website/vendors/FancyBox/source/jquery.fancybox.css') }}">
    <link rel="stylesheet" href="{{ asset('website/vendors/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css') }}">
    <link rel="stylesheet" href="{{ asset('website/assets/styles/main.css') }}">
    <script src="{{ asset('website/vendors/modernizr/modernizr.js') }}"></script>
    @yield("styles")
</head>

<body>
    @include("website.layouts.header")
    <div id="ro-main" class="ro-main clearfix">
        @yield("content")
        @include("website.layouts.footer")
        <div id="ro-backtop"><i class="icon-up"></i></div>
    </div>
    <script src='{{ asset('website/vendors/jquery/dist/jquery.min.js') }}'></script>
    <script src='{{ asset('website/vendors/bootstrap/dist/js/bootstrap.min.js') }}'></script>
    <script src='{{ asset('website/vendors/flexslider/jquery.flexslider-min.js') }}'></script>
    <script src='{{ asset('website/vendors/jssor-slider/js/jssor.slider.mini.js') }}'></script>
    <script src='{{ asset('website/vendors/jquery-ui/ui/minified/datepicker.min.js') }}'></script>
    <script src='{{ asset('website/vendors/countdown/jquery.plugin.min.js') }}'></script>
    <script src='{{ asset('website/vendors/countdown/jquery.countdown.min.js') }}'></script>
    <script src='{{ asset('website/vendors/jquery-mousewheel/jquery.mousewheel.min.js') }}'></script>
    <script src='{{ asset('website/vendors/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.js') }}'></script>
    <script src='{{ asset('website/vendors/jQuery.dotdotdot/src/js/jquery.dotdotdot.min.js') }}'></script>
    <script src='{{ asset('website/vendors/elevatezoom-master/jquery.elevatezoom.js') }}'></script>
    <script src='{{ asset('website/vendors/FancyBox/source/jquery.fancybox.js') }}'></script>
    <script src='{{ asset('website/assets/scripts/main.js') }}'></script>
    @yield("scripts")
</body>

</html>
