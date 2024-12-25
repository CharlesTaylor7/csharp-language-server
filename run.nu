#!/usr/bin/env nu
def --wrapped main [...args] {
  cd ~/repos/csharp-language-server/src/CSharpLanguageServer/
  dotnet build --nologo -v q --property WarningLevel=0 /clp:ErrorsOnly | ignore
  dotnet run --no-build -- ...$args
}
