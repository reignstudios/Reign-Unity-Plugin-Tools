<%@ Page Language="C#" %>
<%
{
	Response.CacheControl = "no-cache";
	Response.AppendHeader("Access-Control-Allow-Origin", "*");
	Response.Write(Request.QueryString["Version"] == "1.0.1.0" ? "CurrentVersion" : "OldVersion");
}
%>