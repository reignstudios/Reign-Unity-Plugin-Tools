<%@ Page Language="C#" %>
<%
{
	string key = Request.QueryString["Key"];
	Response.CacheControl = "no-cache";
	Response.AppendHeader("Access-Control-Allow-Origin", "*");

	// WinRT
	if (key == "4790c425-7f6f-45e7-9dd5-047dfbd7f210")
	{
		Response.WriteFile(@"\ReignUnityPluginUpdater\Packages\5\" + "WinRT.unitypackage", true);
	}
	// BB10
	else if (key == "78e8db2a-3158-4f69-a191-020908adc739")
	{
		Response.WriteFile(@"\ReignUnityPluginUpdater\Packages\5\" + "BB10.unitypackage", true);
	}
	// iOS
	else if (key == "edac7648-2f51-41d2-97d0-8032670c7891")
	{
		Response.WriteFile(@"\ReignUnityPluginUpdater\Packages\5\" + "iOS.unitypackage", true);
	}
	// Android
	else if (key == "56b5a281-c260-4b21-88ab-e614d8c88b25")
	{
		Response.WriteFile(@"\ReignUnityPluginUpdater\Packages\5\" + "Android.unitypackage", true);
	}
	// Ultimate
	else if (key == "fbaff080-cf8b-426e-bda7-ca4040c7665d")
	{
		Response.WriteFile(@"\ReignUnityPluginUpdater\Packages\5\" + "Ultimate.unitypackage", true);
	}
	// Invalid
	else
	{
		Response.Write("NotAuthenticated");
	}
}
%>