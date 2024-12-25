dotnet build
dotnet pack
dotnet tool install --global --add-source ./src/CSharpLanguageServer/nupkg/ csharp-ls
