<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Reception_Sgs.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
			<meta http-equiv="X-UA-Compatible" content="IE=10.000" />
			<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />        
			<meta http-equiv="cache-control" content="no-cache,no-store" />
			<meta http-equiv="pragma" content="no-cache" />
			<meta http-equiv="expires" content="-1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Iniciar sesión</title>
    <link rel="stylesheet" type="text/css" href="Content/style.css" />
			<style>
				.illustrationClass {
					background-image:url('Content/illustration.jpg');
					}
			</style>
</head>
<body dir="ltr" class="body">

    <div id="fullPage">
        <div id="brandingWrapper" class="float">
            <div id="branding" class="illustrationClass"></div>
        </div>
        <div id="contentWrapper" class="float">
            <div id="content">
                <div id="header">
        |<asp:Image CssClass="logoImage" ImageUrl="~/Content/logo.png" ID="Image1" AlternateText="SGS SSO" runat="server" />
                </div>
                <div id="workArea">
                    
    <div id="authArea" class="groupMargin">
        
        
    <div id="loginArea">        
        <div id="loginMessage" class="groupMargin">Inicie sesión mediante su cuenta creada.</div>

        <form id="form1" runat="server">
            <div id="error" class="fieldMargin error smallText" style="display: none;">
                <label id="errorText" for=""></label>
            </div>

            <div id="formsAuthenticationArea">
                <div id="userNameArea">
                    <asp:TextBox ID="userNameInput" runat="server" CssClass="text fullWidth" placeholder="alguien@example.com"></asp:TextBox>
                </div>

                <div id="passwordArea">
                    <asp:TextBox ID="passwordInput" runat="server" CssClass="text fullWidth" placeholder="Contraseña"></asp:TextBox>                                 
                </div>
                <div id="submissionArea" class="submitMargin">
                    <asp:Button ID="submitButton" runat="server" Text="Iniciar sesión" CssClass="submit" OnClick="submitButton_Click"/>
                </div>
            </div>
        </form>

             <div id="authOptions">
        <form id="options" method="post" action="https://sts.sgs.net/adfs/ls/?login_hint=cl.web.testing%40sgs.com&amp;wfresh=0&amp;client-request-id=84c1e491-a2f3-4368-9987-95c2e23bc217&amp;username=cl.web.testing%40sgs.com&amp;wa=wsignin1.0&amp;wtrealm=urn%3afederation%3aMicrosoftOnline&amp;wctx=estsredirect%3d2%26estsrequest%3drQIIAdNiNtQztFIxsbRMsjBJTNY1NDYy1DUxMk_TTUw0NNc1MjNPTjSzNDc1t7TwYjM1MDQxNSkS4hKY-ORgy-dFGc4z26ceemR9SHwVo05GSUlBsZW-fmJBgV5ZcXFBsV5ZZnFpYk5xSWlKZr5ecn6ufnxxZnpeakpm3g5GxguMjC8YGRuYGCcxiSXn6JWnJumVpBaXZOalOxSnF4OUr2JSsTBJNkw1sTTUTTRKM9Y1MTaz0LW0tDDXtTRNNko1Mk5KNjI0v8XE7-9YWpJhBCLyizKrUj8xcablF-XGF-QXl8xi1srLz0tOtSXGqFXMKjBf5CbmJaan5qbmlQCdUpSqV56Zl5JfXqyXl1qiv4mZDei83Py8CyyMr1h4DJitODi4BBgkGBQYfrAwLmIFhs-BF6EvXRWd3WbIzNFLP8vKcIpV3zDIwymrLNk9OyCxIMfIPzQ0JbI029Cl1DMrz7e40tzL0cSj3Dg4KiQttNzW1MpwAhvjBDa2D2yMHewMuzhJCt1bXCJGBkYGuoZGugZGCkZGViZA8wyiDvAyAAA1">
            
            <input id="optionSelection" type="hidden" name="AuthMethod">
            <div class="groupMargin"></div>
        </form>
      </div>

        <div id="introduction" class="groupMargin">
            <p>Click <a href="https://changepassword.sgs.net/">here</a> to change your password.</p>                     
        </div>        
    </div>

    </div>

                </div>
                <div id="footerPlaceholder"></div>
            </div>
            <div id="footer">
                <div id="footerLinks" class="floatReverse">
                     <div><span id="copyright">© 2013 Microsoft</span></div>
                </div>
            </div>
        </div> 
    </div>
</body>
</html>