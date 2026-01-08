# dotnet tool uninstall --global csharp-ls
# adapted from .github/workflows/build.yaml
rm -r src/CSharpLanguageServer/release
dotnet build -c Release
cd src/CSharpLanguageServer/
dotnet pack -c Release -o release --no-build
dotnet tool install --global csharp-ls --add-source release
