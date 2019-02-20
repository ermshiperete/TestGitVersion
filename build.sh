#!/bin/bash
echo "Building old-style csproj"
msbuild OldCsproj/TestGitVersion.sln

echo "Building sdk-style (single framework) csproj with msbuild"
msbuild SdkCsproj/ConsoleApp1/ConsoleApp1.csproj

echo "Building sdk-style (multi-framework) csproj with msbuild"
msbuild SdkCsproj/TestGitVersionCore/TestGitVersionCore.csproj

echo "Building sdk-style (single framework) csproj with dotnet build"
dotnet build SdkCsproj/ConsoleApp1/ConsoleApp1.csproj

echo "Building sdk-style (multi-framework) csproj with dotnet build"
dotnet build SdkCsproj/TestGitVersionCore/TestGitVersionCore.csproj

echo "Building sdk-style (single framework) csproj with dotnet msbuild"
dotnet msbuild SdkCsproj/ConsoleApp1/ConsoleApp1.csproj

echo "Building sdk-style (multi-framework) csproj with dotnet msbuild"
dotnet msbuild SdkCsproj/TestGitVersionCore/TestGitVersionCore.csproj