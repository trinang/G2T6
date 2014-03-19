<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Module3.aspx.cs" Inherits="Thrive2.Patient.Module3" %>

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
                <h3>An Introduction to Depression</h3>

                <p style="width: 720px">
                    Depression is the common cold of mental disorders — most people will be affected by depression in their lives 
                                    either directly or indirectly, through a friend or family member. Confusion is commonplace about depression, for 
                                    example, about what depression exactly is and what makes it different from just feeling down. There is also 
                                    confusion surrounding the many types of depression (e.g., unipolar depression, biological depression, manic 
                                    depression, seasonal affective disorder, dysthymia, etc.) that people may experience. 
                                    <br />
                    <br />
                    There have been so many terms used to describe this set of feelings we’ve all felt at one time or another in our lives, to one degree or another, that it is time to set the record straight.
                                    Depression is characterized by a number of common symptoms. These include a persistent sad, anxious, 
                                    or “empty” mood, and feelings of hopelessness or pessimism. 
                                    <br />
                    <br />
                    A person who is depressed also often has 
                                    feelings of guilt, worthlessness, and helplessness. They no longer take interest or pleasure in 
                                    hobbies and activities that were once enjoyed; this may include things like going out with friends or 
                                    even sex. Insomnia, early-morning awakening, and oversleeping are all common.
                                    <br />
                    <br />
                    Appetite and/or weight loss or overeating and weight gain may be symptoms of depression in some 
                                    people. Many others experience decreased energy, fatigue, and a constant feeling of being “slowed 
                                    down.” Thoughts of death or suicide are not uncommon in those suffering from severe depression. 
                                    Restlessness and irritability among those who have depression is common. A person who is depressed 
                                    also has difficulty concentrating, remembering, and trouble making decisions. And sometimes, 
                                    persistent physical symptoms that do not respond to traditional treatments — such as headaches, 
                                    digestive disorders, and chronic pain — may be signs of a depressive illness.
                </p>

                <!-- End Content -->
            </div>
        </div>
    </form>
</body>
</html>
