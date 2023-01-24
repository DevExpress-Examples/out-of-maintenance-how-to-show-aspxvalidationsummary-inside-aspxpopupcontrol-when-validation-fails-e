﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript">
        function OnValidationCompleted(s, e) {
            if (e.isValid)
                alert("Validation Passed");
            else
                popup.Show();
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <dx:ASPxGlobalEvents ID="globalEvents" runat="server">
        <ClientSideEvents ValidationCompleted="OnValidationCompleted" />
    </dx:ASPxGlobalEvents>
    <dx:ASPxPopupControl ID="popupControl" runat="server" ClientInstanceName="popup"
        CloseAction="CloseButton" HeaderText="ValidationSummary" PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter">
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <dx:ASPxValidationSummary ID="validationSummary" runat="server">
                </dx:ASPxValidationSummary>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxTextBox ID="txtFirstName" runat="server" Width="170px">
        <ValidationSettings>
            <RequiredField IsRequired="true" ErrorText="FirstName Is Required" />
        </ValidationSettings>
    </dx:ASPxTextBox>
    <dx:ASPxTextBox ID="txtLastName" runat="server" Width="170px">
        <ValidationSettings>
            <RequiredField IsRequired="true" ErrorText="LastName Is Required" />
        </ValidationSettings>
    </dx:ASPxTextBox>
    <dx:ASPxButton ID="btn" runat="server" Text="Validate">
    </dx:ASPxButton>
    </form>
</body>
</html>
