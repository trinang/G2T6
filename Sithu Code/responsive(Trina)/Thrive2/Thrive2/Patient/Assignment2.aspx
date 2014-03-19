<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment2.aspx.cs" Inherits="Thrive2.Patient.Assignment2" %>

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

        $(document).ready(function btn_back_OnClick() {
            window.history.back();
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
                <h1 class="title">Assignment 2</h1>
                <div class="line"></div>
                <h3>Assignment_AnalyticalReasoning</h3>

                <asp:Table ID="Table2" runat="server">
                    <asp:TableRow Height="50px">
                        <asp:TableCell VerticalAlign="Top">
                            <asp:TextBox runat="server" ID="tbx_assignment" TextMode="MultiLine" Width="500px" Height="300px" Enabled="False" BackColor="White" Visible="False"></asp:TextBox>
                            <asp:Label runat="server" ID="lbl_q1">
                                    Q1. Based on the information provided, what do you think Anita should do to help Sarah?
                            </asp:Label>
                            <br />
                            <asp:TextBox ID="tbx_q1" runat="server" TextMode="MultiLine" Width="400px" Height="100px"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox runat="server" ID="tbx_feedback" TextMode="MultiLine" Width="100px" Height="300px" Enabled="False" BackColor="White" Visible="False"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ID="cell_q2">
                            <p>
                                Q2. Select all the items on the list of notes that you feel are relevant to solving this problem.
                            </p>
                            <ul>
                                <li>1. When Kate and Ian are sitting adjacent to each other (in any direction), they are very disruptive because they are constantly joking around.
                                </li>
                                <li>2. Trina is most attentive during math and tends to goof off during reading and writing tasks.
                                </li>
                                <li>3. After observations, students seem to be equally well-behaved (or not) in the mornings and afternoon.
                                </li>
                                <li>4. Billy is diabetic and has to sit in the chair closest to the back door and exit, on the left side of the back of the room.
                                </li>
                                <li>5. Billy doesn't get along with any of the girls and will bother them if they sit next to him, in front of him, behind him, or diagonal to him.
                                </li>
                                <li>6. Bob seems to get along with everyone, but does best when he is seated away from the window.
                                </li>
                            </ul>
                            <asp:TextBox ID="tbx_q2" runat="server" TextMode="MultiLine" Width="400px" Height="100px"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ID="cell_q3">
                            <p>
                                Q3. If you are Anita, how will you handle the sitation?
                            </p>
                            <asp:TextBox ID="tbx_q3" runat="server" TextMode="MultiLine" Width="400px" Height="100px"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow HorizontalAlign="Center" VerticalAlign="Top">
                        <asp:TableCell ColumnSpan="2">
                            <input type="submit" name="submit" value="Back" class="button" onclick="btn_back_OnClick()" />
                            <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" Height="35px" Width="80px" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                <!-- End Content -->
            </div>
        </div>
    </form>
</body>
</html>
