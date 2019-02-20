using System;
using System.Reflection;

namespace TestGitVersionCore
{
	public class Class1
	{
		public static string GetVersion()
		{
			var assembly = Assembly.GetExecutingAssembly();
			var assemblyName = assembly.GetName().Name;
			var gitVersionInformationType = assembly.GetType("GitVersionInformation");
			var versionField = gitVersionInformationType.GetField("FullSemVer");
			return (string)versionField.GetValue(null);
		}
	}
}