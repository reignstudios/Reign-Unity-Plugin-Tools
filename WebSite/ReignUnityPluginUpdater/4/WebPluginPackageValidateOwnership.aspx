<%@ Page Language="C#" %>
<%
{
	string response = "InvalidKey";
	string key = Request.QueryString["Key"];
	if (key == "CE741583-83B9-4B18-A625-F13927EF1E19" ||// WinRT
		key == "7F7B3C83-4E98-4291-9DCC-1D0FF08C0739" ||// BB10
		key == "76E0548D-2374-4C17-8EFF-197172E7AE66" ||// iOS
		key == "C366CAA9-7AEF-4892-82BD-CCB0983F4C28")// Android
	{
		response = "ValidKey";
	}
	
	Response.CacheControl = "no-cache";
	Response.AppendHeader("Access-Control-Allow-Origin", "*");
	Response.Write(response);
}
%>