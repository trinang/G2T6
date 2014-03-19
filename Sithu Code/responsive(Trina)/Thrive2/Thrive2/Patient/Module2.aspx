<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Module2.aspx.cs" Inherits="Thrive2.Patient.Module2" %>

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
    <script src="../js/jquery.magnific-popup.js" type="text/javascript"></script>
    <link href="../css/magnific-popup.css" rel="stylesheet" type="text/css">
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
                                    <li class="has-sub"><a href="../Login.aspx">Logout</a></li>
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
           <script>
               function f1() {
                   document.getElementById("n1").style.visibility = 'hidden';
               }
            </script>

            <script type='text/javascript'>//<![CDATA[ 
                $(window).load(function () {
                    // selects all the divs of class='sample',hides them, finds the first, and shows it
                    $('div.sample').hide().first().show();

                    // binds a click event-handler to a elements whose class='display'
                    $('a.display').on('click', function (e) {
                        // prevents the default action of the link
                        e.preventDefault();

                        // assigns the currently visible div.sample element to a variable
                        var that = $('div.sample:visible'),
                            // assigns the text of the clicked-link to a variable for comparison purposes
                            t = $(this).text();

                        // checks if it was the 'next' link, and ensures there's a div to show after the currently-shown one
                        if (t == 'next' && that.next('div.sample').length > 0) {
                            // hides all the div.sample elements
                            $('div.sample').hide();

                            // shows the 'next'
                            that.next('div.sample').show()
                        }
                            // exactly the same as above, but checking that it's the 'prev' link
                            // and that there's a div 'before' the currently-shown element.
                        else if (t == 'prev' && that.prev('div.sample').length > 0) {
                            $('div.sample').hide();
                            that.hide().prev('div.sample').show()
                        }
                    });
                });//]]>  

            </script>

            <!-- Begin Content -->
            <div id="content">
                <h1 class="title">Module</h1>
                <div class="line"></div>
                <h3>Analytical Reasoning</h3>

                <p>
                    Anita is a high school principal. She has been on the job for only a few weeks, and several teachers and students have already approached her for advice on solving some problems that they are dealing with in their classes and activities. Read the following scenarios and choose the best suggestion for a solution that Anita can offer.
                                    <br />
                    <br />
                    Sarah is teaching a classroom of 9 special needs children. She's having a tough year because certain children do not get along with others and some are having a little too much fun together and are completely distracted and rowdy. Unfortunately, she's the only teacher for special needs adolescents so none of the children can be moved to other classrooms. She's taken notes over the course of the last month, recording the problems and positive developments. She asks Anita to review her notes and identify what she can do to improve the situation. The names of the students in the class are as follows: Bob, Sally, Andrew, Billy, Trina, Kate, Elliot, Tim and Ian.
                                    <br />
                    <br />
                    Here are the notes:       
                </p>
                <ul>
                    <li>When Kate and Ian are sitting adjacent to each other (in any direction), they are very disruptive because they are constantly joking around.
                    </li>
                    <li>Trina is most attentive during math and tends to goof off during reading and writing tasks.
                    </li>
                    <li>When Kate and Sally sat in the front row, they were much more attentive than when sitting in the middle or back rows.
                    </li>
                    <li>After observations, students seem to be equally well-behaved (or not) in the mornings and afternoon.
                    </li>
                    <li>Billy is diabetic and has to sit in the chair closest to the back door and exit, on the left side of the back of the room.
                    </li>
                    <li>Billy doesn't get along with any of the girls and will bother them if they sit next to him, in front of him, behind him, or diagonal to him.
                    </li>
                    <li>Bob seems to get along with everyone, but does best when he is seated away from the window.
                    </li>
                    <li>Sally gets anxious if she is placed away from the windows.
                    </li>
                    <li>Andrew and Sally are good friends and their giggling is disruptive if they are sitting even remotely near one another. They need to be as far away from each other as possible.
                    </li>
                    <li>Billy and Elliot seem to encourage each other to work hard and concentrate and therefore, do best if seated next to each other.
                    </li>
                    <li>Elliot, Kate, and Trina were all out sick four times last month.
                    </li>
                </ul>
                <!-- End Content -->
            </div>            
        </div>
    </form>
</body>
</html>
