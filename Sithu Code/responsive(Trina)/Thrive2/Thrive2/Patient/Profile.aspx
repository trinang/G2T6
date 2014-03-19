<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Thrive2.Patient.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--nav-->
    <script src="../js/jquery.min.js"></script>
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
    <form id="form1" runat="server">
        <div class="header_bg" class="col-md-2">
            <div class="wrap">
                <div class="header">
                    <div class="logo">
                        <a href="index.html">
                            <img src="../images/logo.png" alt="" /></a>
                    </div>
                    <div class="cssmenu">
                        <ul>
                            <li class="active"><a href="Home.aspx">Home</a></li>
                            <li><a href="service.html">Modules</a>
                                <ul>
                                    <li class="has-sub"><a href="Module1.aspx">Module 1</a></li>
                                    <li class="has-sub"><a href="Module2.aspx">Module 2</a></li>
                                    <li id="module3" class="has-sub" hidden="hidden"><a href="Module3.aspx">Module 3</a></li>
                                </ul>
                            </li>
                            <li><a href="service.html">Assignment</a>
                                <ul>
                                    <li class="has-sub"><a href="Assignment1.aspx">Assignment 1</a></li>
                                    <li class="has-sub"><a href="Assignment2.aspx">Assignment 2</a></li>
                                    <li id="assignment3" class="has-sub" hidden="hidden"><a href="Assignment3.aspx">Assignment 3</a></li>
                                </ul>
                            </li>
                            <li><a href="FAQ.aspx">FAQ</a></li>
                            <li class="last"><a href="Profile.aspx">
                                <img src="../images/rachel.png" alt="" title="Rachel" /></a>
                                <ul>
                                    <li class="has-sub"><a href="Profile.aspx">Profile</a></li>
                                    <li class="has-sub"><a href="../Login.aspx">Log out</a></li>
                                </ul>
                            </li>
                            <div class="clear"></div>
                        </ul>
                    </div>
                    <div class="top-nav">
                        <nav class="clearfix">
                            <ul>
                                <li><a href="Home.aspx">Home</a></li>
                                <li><a href="Module1.aspx">Module 1</a></li>
                                <li><a href="Module2.aspx">Module 2</a></li>
                                <li><a href="Assignment1.aspx">Assignment 1</a></li>
                                <li class="has-sub"><a href="Assignment2.aspx">Assignment 2</a></li>
                                <li><a href="FAQ.aspx">FAQ</a></li>
                                <li><a href="Profile.aspx">Profile</a></li>
                                <li class="last"><a href="../Login.aspx">Logout</a></li>
                            </ul>
                            <a href="#" id="pull">Menu</a>
                        </nav>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <div>
            <table align="center">
                <tr>
                    <td>First Name:</td>
                    <td> Rachel</td>
                    <td>Last Name: </td>
                    <td> Tan</td>
                </tr>
                <tr>
                    <td>Gender: </td>
                    <td> Female</td>
                    <td>Race: </td>
                    <td> Chinese</td>
                </tr>
                <tr>
                    <td>NRIC: </td>
                    <td> S1234567A</td>
                    <td>Birthday: </td>
                    <td> 24 Nov 1989</td>
                </tr>
                <tr>
                    <td>Mobile No.: </td>
                    <td> 99912345</td>
                    <td>Home No.: </td>
                    <td> 61234567</td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td> rachel@gmail.com</td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><asp:Button runat="server" Text="Change Password"/></td>
                </tr>
                <tr>
                </tr>
            </table>
            <br />
            <table>
                <tr>
                    <td><br /></td>
                    <td>Psychiatrist</td>
                    <td></td>
                    <td></td>
                    <td>Psychologist</td>
                </tr>
                <tr>
                    <td><br /></td>
                    <td></td>
                    <td><img src="../images/psychiatrist.jpg" alt="some_text"></td>
                    <td></td>
                    <td></td>
                    <td><img src="../images/psychologist.png" alt="some_text"></td>
                </tr>
                <tr><td> </td></tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td align="right"><button>Back</button></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
