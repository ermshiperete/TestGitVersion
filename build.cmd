echo "Building old-style csproj"
msbuild /t:Restore;Build OldCsproj/TestGitVersion/TestGitVersion.csproj

echo "Building sdk-style (single framework) csproj with msbuild"
msbuild /t:Restore;Build SdkCsproj/ConsoleApp1/ConsoleApp1.csproj

echo "Building sdk-style (multi-framework) csproj with msbuild"
msbuild /t:Restore;Build SdkCsproj/TestGitVersionCore/TestGitVersionCore.csproj

echo "Building sdk-style (single framework) csproj with dotnet build"
dotnet build /t:Restore;Build SdkCsproj/ConsoleApp1/ConsoleApp1.csproj

echo "Building sdk-style (multi-framework) csproj with dotnet build"
dotnet build /t:Restore;Build SdkCsproj/TestGitVersionCore/TestGitVersionCore.csproj

echo "Building sdk-style (single framework) csproj with dotnet msbuild"
dotnet msbuild /t:Restore;Build SdkCsproj/ConsoleApp1/ConsoleApp1.csproj

echo "Building sdk-style (multi-framework) csproj with dotnet msbuild"
dotnet msbuild /t:Restore;Build SdkCsproj/TestGitVersionCore/TestGitVersionCore.csproj