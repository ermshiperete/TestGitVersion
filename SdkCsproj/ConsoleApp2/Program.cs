using System;
using System.Reflection;
using TestGitVersionCore;

namespace ConsoleApp2
{
	class Program
	{
		static void Main(string[] args)
		{
			var assembly = Assembly.GetExecutingAssembly();
			var gitVersionInformationType = assembly.GetType("GitVersionInformation");
			var versionField = gitVersionInformationType.GetField("InformationalVersion");
			Console.WriteLine(versionField.GetValue(null));
			Console.WriteLine(Class1.GetVersion());
		}
	}
}
