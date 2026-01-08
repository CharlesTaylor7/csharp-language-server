# cleanup previous install
try {
  dotnet tool uninstall --global csharp-ls
  rm -r src/CSharpLanguageServer/release
}
# restore packages from nuget
# nuget.config is overridden to hide nuget when installing from source
# we temporarily hide the override while fetching dependencies then bring it back so there is no ambiguity about whether
# to install csharp-ls from source or nuget.org
mv nuget.config nuget.config.bkp
dotnet restore
mv nuget.config.bkp nuget.config

# adapted from .github/workflows/build.yaml
dotnet build -c Release
cd src/CSharpLanguageServer/
dotnet pack -c Release -o release --no-build
dotnet tool install --global csharp-ls --add-source release
