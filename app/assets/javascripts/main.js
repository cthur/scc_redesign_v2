$(function() {
    // set opacity to nill on page load
    $("ul#menu span").css("opacity","0");
    // on mouse over
    $("ul#menu span").hover(function () {
            // animate opacity to full
            $(this).stop().animate({
                opacity: 1
            }, 'slow');
        },
        // on mouse out
        function () {
            // animate opacity to nill
            $(this).stop().animate({
                opacity: 0
            }, 'slow');
        });
});
$(document).ready(function() {
    $('#featured').orbit();
});
(function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
    function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
    e=o.createElement(i);r=o.getElementsByTagName(i)[0];
    e.src='//www.google-analytics.com/analytics.js';
    r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
ga('create','UA-XXXXX-X');ga('send','pageview');
