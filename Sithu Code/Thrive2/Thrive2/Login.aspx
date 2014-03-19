<%@ Page Title="" Language="C#"AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Thrive2.Login" %>

    <!-- Header -->
    <div id="header">
    </div>
    <!-- Header end-->

    <div id="login">
        <table align="center">
            <tr>
                <td>REGISTERED EMAIL  </td>
                <td><input type="text" id="username" name="user"/></td>
            </tr>
            <tr>
                <td>PASSWORD</td>
                <td><input type="password" name="pass"/></td>
            </tr>
            <tr>

                <td><a id="forget-password" href="ForgetPassword.aspx">Forgot Password</a></td>
                <td><a id="register-link" href="Register.aspx">Register New Account</a></td>
            </tr>
            <tr>
                <td>
                    <script>
                        function check() {
                            if (username.value.match("david@ktph.com"))
                                return window.location = "Therapist/Home.aspx";
                            else if (username.value.match("rachel@gmail.com"))
                                return window.location = "Patient/Home.aspx";
                        }
                    </script>
                    <input type="submit" name="btnEdit" value="Login" onclick="return check();" id="btnEdit" class="buttonstyle" />
                </td>
                <td></td>
            </tr>
        </table>
    </div>

               
          

