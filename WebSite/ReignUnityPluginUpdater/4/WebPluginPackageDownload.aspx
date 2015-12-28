<%@ Page Language="C#" %>
<%
{
	string key = Request.QueryString["Key"];
	Response.CacheControl = "no-cache";
	Response.AppendHeader("Access-Control-Allow-Origin", "*");

	// WinRT
	if (key == "CE741583-83B9-4B18-A625-F13927EF1E19")
	{
		Response.WriteFile(@"\ReignUnityPluginUpdater\Packages\4\" + "Windows.unitypackage", true);
	}
	// BB10
	else if (key == "7F7B3C83-4E98-4291-9DCC-1D0FF08C0739")
	{
		Response.WriteFile(@"\ReignUnityPluginUpdater\Packages\4\" + "BB10.unitypackage", true);
	}
	// iOS
	else if (key == "76E0548D-2374-4C17-8EFF-197172E7AE66")
	{
		Response.WriteFile(@"\ReignUnityPluginUpdater\Packages\4\" + "iOS.unitypackage", true);
	}
	// Android
	else if (key == "C366CAA9-7AEF-4892-82BD-CCB0983F4C28")
	{
		Response.WriteFile(@"\ReignUnityPluginUpdater\Packages\4\" + "Android.unitypackage", true);
	}
	// Ultimate
	else if (key == "AE00088D-9EB4-48DB-BF5A-7AFB3C88F3EF")
	{
		Response.WriteFile(@"\ReignUnityPluginUpdater\Packages\4\" + "Ultimate.unitypackage", true);
	}
	// Invalid
	else
	{
		Response.Write("NotAuthenticated");
	}
}
%>