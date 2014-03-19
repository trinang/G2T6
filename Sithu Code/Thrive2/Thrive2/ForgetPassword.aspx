<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="Thrive2.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>hhhhh
<body>
    <form id="form1" runat="server">
        <script>
            function Back() {
                history.go(-1);
                return false;
            }

        </script>
        <div id="login">
            <table align="center">
                <tr>
                    <th>Forget Password</th>
                </tr>
                <tr>
                    <td>Please enter the email that you have registered with us below.</td>
                </tr>
                <tr>
                    <td>REGISTERED EMAIL 
                        <input type="text" name="user" /></td>
                </tr>
                <tr>
                    <td align="right">
                        <input type="submit" name="btnEdit" value="Back" onclick="return Back();" id="btnEdit" class="buttonstyle" />
                    </td>
                    <td>
                        <button onclick='window.location="Login.aspx"'>Send</button></td>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
