﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Presentation[]>" %>

<% for (int i = 0; i < Model.Length; i++) { %>

    <%= Html.DisplayFor(m => m[i]) %>

<% } %>
