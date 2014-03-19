<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyPatientAssignment.aspx.cs" Inherits="Thrive2.Therapist.MyPatientAssignment" %>

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
                            <li><a href="MyPatient.aspx">My Patient</a>
                                
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
                                <li><a href="MyPatient.aspx">My Patient</a></li>
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
        <div class="col-md-10">
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
                <h1 class="title">My Patient</h1>
                <div class="line"></div>


                <div>
                    <asp:Table ID="Table2" runat="server">
                        <asp:TableRow>
                            <asp:TableCell Width="50px">
                        <img src="/img/user_avatar.png" style="width:50px; height:55px" />                        
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Left">
                                <asp:Label ID="lbl_pname" runat="server" Text="Patient Name"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="lbl_assignment" runat="server" Text="Assignment No."></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell RowSpan="2" VerticalAlign="Top" HorizontalAlign="Center">
                                <asp:Label ID="Label2" runat="server" Text="Label">Feedback</asp:Label>
                                <br />
                                <asp:TextBox ID="tbx_feedback" runat="server" TextMode="MultiLine"></asp:TextBox>
                                Score:
                        <asp:TextBox ID="tbx_score" runat="server" Width="50px"></asp:TextBox>/10    
                        <br />
                                <br />
                                <asp:Button ID="btn_back" runat="server" Text="Back" Width="75px" OnClick="btn_back_Click" CssClass="Button" />
                                <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="75px" OnClick="btn_submit_Click" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2">
                                <div class="sample">
                                    <asp:Table ID="Table3" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell>
                                                <asp:TextBox ID="tbx_assignment" runat="server" TextMode="MultiLine" Enabled="False" BorderStyle="None"></asp:TextBox>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </div>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>

                <!-- End Content -->
            </div>
        </div>
    </form>
</body>
</html>
