<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Thrive2.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <div id="header">
        </div>
        <!-- Header end-->
        <script>
            function Back() {
                history.go(-1);
                return false;
            }

        </script>
        <div id="login">
            <table align="center">
                <tr>
                    <th>Registration</th>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td>
                        <input type="text" name="user" /></td>
                    <td>Last Name</td>
                    <td>
                        <input type="text" name="user" /></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="text" name="user" /></td>
                    <td>Race</td>
                    <td>
                        <input type="text" name="user" /></td>
                </tr>
                <tr>
                    <td>NRIC</td>
                    <td>
                        <input type="text" name="user" /></td>
                    <td>Birth Date</td>
                    <td>
                        <input type="text" name="user" /></td>
                </tr>
                <tr>
                    <td>Mobile No.</td>
                    <td>
                        <input type="text" name="user" /></td>
                    <td>Home No.</td>
                    <td>
                        <input type="text" name="user" /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="text" name="user" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input type="text" name="user" /></td>
                    <td>Confirm Password</td>
                    <td>
                        <input type="text" name="user" /></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right">
                        <input type="submit" name="btnEdit" value="Back" onclick="return Back();" id="btnEdit" class="buttonstyle" />
                    </td>
                    <td>
                        <button onclick='window.location="../Login.aspx"'>Register</button></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
