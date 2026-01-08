# dotnet build -c Release
# dotnet pack -c Release
# dotnet tool install --global csharp-ls --add-source ./bin/Release

dotnet build -c Release
dotnet pack src/CSharpLanguageServer/CSharpLanguageServer.fsproj -o . --no-build
dotnet tool install --global csharp-ls --add-source nupkg
