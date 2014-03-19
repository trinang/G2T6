<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Thrive2._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>The Retina Website Template | Portfolio :: w3layouts</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--nav-->
    <script src="js/jquery.min.js"></script>
    <script>
        $(function () {
            var pull = $('#pull');
            menu = $('nav ul');
            menuHeight = menu.height();

            $(pull).on('click', function (e) {
                e.preventDefault();
                menu.slideToggle();
            });

            $(window).resize(function () {
                var w = $(window).width();
                if (w > 320 && menu.is(':hidden')) {
                    menu.removeAttr('style');
                }
            });
        });
    </script>
    <!-- Add fancyBox main JS and CSS files -->
    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
    <link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
    <script>
        $(document).ready(function () {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });
        });
    </script>
</head>
<body>
    <form id="form1">
        <div class="header_bg" class="col-md-2">
            <div class="wrap">
                <div class="header">
                    <div class="logo">
                        <a href="index.html">
                            <img src="images/logo.png" alt="" /></a>
                    </div>
                    <div class="cssmenu">
                        <ul>
                            <li class="active"><a href="default.aspx">Home</a></li>
                            <li><a href="service.html">Modules</a>
                                <ul>
                                    <li class="has-sub"><a href="portfolio.html">Module 1</a></li>
                                    <li class="has-sub"><a href="service.html">Module 2</a></li>
                                    <li id="module3" class="has-sub" hidden="hidden"><a href="contact.html">Module 3</a></li>
                                </ul>
                            </li>
                            <li><a href="service.html">Assignment</a>
                                <ul>
                                    <li class="has-sub"><a href="portfolio.html">Assignment 1</a></li>
                                    <li class="has-sub"><a href="service.html">Assignment 2</a></li>
                                    <li id="assignment3" class="has-sub" hidden="hidden"><a href="contact.html">Assignment 3</a></li>
                                </ul>
                            </li>
                            <li><a href="blog.html">FAQ</a></li>
                            <li class="last"><a href="profile.aspx">
                                <img src="images/rachel.png" alt="" title="Rachel" /></a>
                                <ul>
                                    <li class="has-sub"><a href="staff.html">Profile</a></li>
                                    <li class="has-sub"><a href="staff.html">Log out</a></li>
                                </ul>
                            </li>
                            <div class="clear"></div>
                        </ul>
                    </div>
                    <div class="top-nav">
                        <nav class="clearfix">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li><a href="portfolio.html">Module 1</a></li>
                                <li><a href="service.html">Module 2</a></li>
                                <li><a href="staff.html">Assignment 1</a></li>
                                <li class="has-sub"><a href="index.html">Assignment 2</a></li>
                                <li><a href="feature.html">FAQ</a></li>
                                <li><a href="blog.html">Profile</a></li>
                                <li class="last"><a href="contact.html">Logout</a></li>
                            </ul>
                            <a href="#" id="pull">Menu</a>
                        </nav>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <div class="col-md-10">
            <h1 class="title">Welcome Rachel..</h1>
                <div class="line"></div>
                <div class="intro">
                    Quote of the Day
                    <br />
                    <br />
                    <ul class="testimonials">
                        <li>
                            <blockquote>
                                <p>What does it matter how many lovers you have if none of them gives you the universe?</p>
                            </blockquote>
                            <cite>&ndash; Jacques Lacan</cite>
                        </li>
                    </ul>
                </div>
                <h3>Notifications</h3>
                <div class="info-box">
                    <p>
                        <asp:Label ID="lblNotification" runat="server" Text="Label"></asp:Label>
                    </p>
        </div>
    </form>
</body>
</html>
