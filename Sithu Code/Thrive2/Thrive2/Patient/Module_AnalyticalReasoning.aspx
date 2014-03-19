<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Module_AnalyticalReasoning.aspx.cs" Inherits="Thrive2.Module_AnalyticalReasoning" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <title>Register Thoughts</title>
    <link rel="shortcut icon" type="image/x-icon" href="../style/images/favicon.png" />
    <link rel="stylesheet" type="text/css" href="../style.css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="../style/css/ie7.css" media="all" />
<![endif]-->
    <!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="../style/css/ie8.css" media="all" />
<![endif]-->
    <!--[if IE 9]>
<link rel="stylesheet" type="text/css" href="../style/css/ie9.css" media="all" />
<![endif]-->
    <script type="text/javascript" src="../style/js/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" src="../style/js/ddsmoothmenu.js"></script>
    <script type="text/javascript" src="../style/js/jquery.jcarousel.js"></script>
    <script type="text/javascript" src="../style/js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="../style/js/carousel.js"></script>
    <script type="text/javascript" src="../style/js/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="../style/js/jquery.masonry.min.js"></script>
    <script type="text/javascript" src="../style/js/jquery.slickforms.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Begin Wrapper -->
        <div id="wrapper">
            <!-- Begin Sidebar -->
            <div id="sidebar">
                <div id="logo">
                    <a href="../index.html">
                        <img src="../style/images/logo.png" alt="Thrive" /></a>
                </div>

                <!-- Begin Menu -->
                <div id="menu" class="menu-v">
                    <center>
                    <a><img src="../style/images/rachel.png" alt="" title="Rachel" /></a>
                    <a href="Profile.aspx" style="color: white">My Profile</a>
                        <br />
                        <a href="../Login.aspx" style="color: white">Logout</a>
                        </center>
                    <br />
                    <ul>
                        <%--<li><a href="../contact.html">Edit Profile</a></li>--%>
                        <li><a href="Home.aspx">Home</a></li>
                        <%--<li><a href="../">Notification <img id="image" class="showme" src="../style/images/notification.png" alt="some_text" style="border: none;" /> </a> </li>--%>
                        <li><a class="active">Module</a>
                            <ul>
                                <li><a href="Module_RegisteringPositiveThoughts.aspx">Moduole 1</a></li>
                                <li><a href="Module_AnalyticalReasoning.aspx">Module 2</a></li>
                                <li><a href="Module_AnIntroductiontoDepression.aspx">Module 3</a></li>
                            </ul>
                        </li>
                        <li><a>Assignment</a>
                            <ul>
                                <li><a href="Assignment_RegisteringPositiveThoughts.aspx">Assignment 1</a></li>
                                <li><a href="Assignment_AnalyticalReasoning.aspx">Assignment 2</a></li>
                                <li><a href="Assignment_AnIntroductiontoDepression.aspx">Assignment 3</a></li>
                            </ul>
                        </li>
                        <li><a href="faq.aspx">FAQ</a></li>
                    </ul>
                </div>
                <!-- End Menu -->


            </div>
            <!-- End Sidebar -->

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
            <!-- End Wrapper -->
        </div>
        <div class="clear"></div>
        <script type="text/javascript" src="../style/js/scripts.js"></script>
        <!--[if !IE]> -->
        <script type="text/javascript" src="../style/js/jquery.corner.js"></script>
        <!-- <![endif]-->
    </form>
</body>
</html>

