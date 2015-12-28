<%@ Page Language="C#" %>
<%
{
	string response = "InvalidKey";
	string key = Request.QueryString["Key"];
	if (key == "4790c425-7f6f-45e7-9dd5-047dfbd7f210" ||// WinRT
		key == "78e8db2a-3158-4f69-a191-020908adc739" ||// BB10
		key == "edac7648-2f51-41d2-97d0-8032670c7891" ||// iOS
		key == "56b5a281-c260-4b21-88ab-e614d8c88b25")// Android
	{
		response = "ValidKey";
	}
	
	Response.CacheControl = "no-cache";
	Response.AppendHeader("Access-Control-Allow-Origin", "*");
	Response.Write(response);
}
%>