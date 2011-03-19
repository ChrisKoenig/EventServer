﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<AccountLogOnModel>" %>

<asp:Content ID="loginTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Log On
</asp:Content>

<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Log On</h2>

    <p>Please enter your email address and password. <%= Html.ActionLink<AccountController>(c => c.Register(), "Register") %> if you don't have an account.</p>

    <% using (Html.BeginForm()) { %>

        <%= Html.ValidationSummary(true, "Login was unsuccessful. Please correct the errors and try again.") %>

        <div>
            <fieldset>
                <legend>Account Information</legend>

                <div class="editor-label">
                    <%= Html.LabelFor(m => m.Email) %>
                </div>
                <div class="editor-field">
                    <%= Html.TextBoxFor(m => m.Email, new {@class = "focus"}) %>
                    <%= Html.ValidationMessageFor(m => m.Email)%>
                </div>

                <div class="editor-label">
                    <%= Html.LabelFor(m => m.Password) %>
                </div>
                <div class="editor-field">
                    <%= Html.PasswordFor(m => m.Password) %>
                    <%= Html.ValidationMessageFor(m => m.Password) %>
                </div>

                <div class="editor-label">
                    <%= Html.CheckBoxFor(m => m.RememberMe) %>
                    <%= Html.LabelFor(m => m.RememberMe) %>
                </div>

                <p><input type="submit" value="Log On" /></p>

            </fieldset>
        </div>

        <%= Html.HiddenFor(m => m.ReturnUrl) %>

    <% } %>

</asp:Content>
