using System;
using System.Reflection;
using TestGitVersionCore;

namespace ConsoleApp1
{
	class Program
	{
		static void Main(string[] args)
		{
			var assembly = Assembly.GetExecutingAssembly();
			var assemblyName = assembly.GetName().Name;
			var gitVersionInformationType = assembly.GetType("GitVersionInformation");
			var versionField = gitVersionInformationType.GetField("InformationalVersion");
			Console.WriteLine(versionField.GetValue(null));
			Console.WriteLine(Class1.GetVersion());
		}
	}
}