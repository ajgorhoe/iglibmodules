
# `_external/README_scripts_external` Subdirectory of the `iglibcontainer` Repository

This directory contains cloning / updating scripts for external repositories used by various modules that are managed in the current container repository. Usually, these scripts are already contained in the `scripts/` subdirectories of individual modules (repositories), such as [IGLibCore/scripts](https://github.com/ajgorhoe/IGLib.modules.IGLibCore/tree/main/scripts) ([local](../../IGLibCore/scripts/)), [IGLibGraphics3D/scripts](https://github.com/ajgorhoe/IGLib.modules.IGLibGraphics3D/tree/main/scripts) ([local](../../IGLibGraphics3D/scripts/)), [IGLibScripting/scripts](https://github.com/ajgorhoe/IGLib.modules.IGLibScripting/tree/main/scripts) ([local](../../IGLibScripting/scripts/)),
[IGLibScriptingCs/scripts](https://github.com/ajgorhoe/IGLib.modules.IGLibScriptingCs/tree/main/scripts) ([local](../../IGLibScriptingCs/scripts/)), [IGLibSandbox/scripts](https://github.com/ajgorhoe/IGLib.modules.IGLibSandbox/tree/main/scripts) ([local](../../IGLibSandbox/scripts/)).

## Libraries Used

IGLib is based on .NET. The largest libraries used are the Standard Libraries of .NET. Beside that, several other libraries ae used. Below is a list of external libraries used by IGLib:

### Math.NET Numerics

A numerical library for .NET.

https://github.com/mathnet/mathnet-numerics
https://github.com/ajgorhoe/mathnet-numerics - clone for IGLib
https://numerics.mathdotnet.com/ - home page (documentation, contribution, etc.)

### Jint

Javascript interpreter for .NET.

https://github.com/sebastienros/jint

### Helix Toolkit

A 3D graphics library for .NET.

https://github.com/helix-toolkit/helix-toolkit
https://docs.helix-toolkit.org/en/latest - documentation

### Roslyn

C# and Visual Basic languages compiler with rich code analysis APIs.

https://github.com/dotnet/roslyn

### WestWind Scripting

Dynamica compilation and execution of C# Code and Expressions at runtime. Also includes a light weight script templating engine.

https://github.com/RickStrahl/Westwind.Scripting
https://weblog.west-wind.com/posts/2022/Jun/07/Runtime-C-Code-Compilation-Revisited-for-Roslyn - article "Runtime C# Code Compilation Revisited for Roslyn"
https://docs.west-wind.com/westwind.scripting/ - class reference
