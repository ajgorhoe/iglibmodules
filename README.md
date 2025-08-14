
# IGLib Modules' Container Repository

This is the [IGLib modules' container repository](https://github.com/ajgorhoe/iglibmodules) used to clone and build the new IGLib modules (as opposed to the classical IGLib libraries, which are built by [this repository](https://github.com/ajgorhoe/iglibcontainer)). See also the readme files of the [IGLibCore repository](https://github.com/ajgorhoe/IGLib.modules.IGLibCore) and the basic [IGLib Framework repository](https://github.com/ajgorhoe/IGLib.workspace.base.iglib).

**Contents**:

* [About IGLib Container Repository](#about-the-iglib-container-repository)
* [Using with IGLib](#using-with-iglib)
* [Using with Legacy IGLib Framework](#using-with-legacy-iglib-framework)
* **External**:
  * [Wiki - IGLib](https://github.com/ajgorhoe/wiki.IGLib/tree/main/IGLib) (private repository)
    * [Wiki - Scripting (directory)](https://github.com/ajgorhoe/wiki.IGLib/tree/main/IGLib/scripting/)

## About the IGLib Container Repository

Copyright (c) Igor Grešovnik
See LICENSE.md at https://github.com/ajgorhoe/iglibmodules
Location in legacy container repository: .../other/iglibmodules

This repository is used for **cloning IGLib repositories** and for **developing, building, testing** and running  them **locally**. However, the repository can be [easily customized for other software projects](#customizing-the-repository-for-other-software-projects) involving **multiple source code repositories**.

The idea is that **development of software projects** consisting of many modules with their own source code repositories is much easier when **dependencies** where source code is under developers' control are referenced **directly via source control**, rather than via compiled binaries. This significantly **shortens code-build-test-debug cycles** in modern IDEs. For this to work, the source repositories for involved modules must exist at specific relative paths with respect to each other. This **container repository** helps **cloning individual repositories at correct relative paths**, which is achieved by the [cloning/updating scripts](#cloning-and-updating-repositories-using-scripts-in-the-container-repository) that are part of the repository. For more information, see the [Typical Workflows](#typical-workflows-with-this-repository) Section.

Initial cloning and sometimes updating the repositories is conveniently done by using predefined [PowerShell](https://github.com/PowerShell/PowerShell/blob/master/README.md) scripts, while **other git** source control-**related tasks** (such as branching, committing, pushing...) are performed by using normal Git clients such as Git command-line (git.exe) or a GUI client such as TortoiseGit (on MS Windows), GitKraken (multi-platform), or RabbitVCS (Linux, integrated with file managers).

### Prerequisites

* Installed [Git command-line client](https://git-scm.com/)
* Installed [PowerShell](https://learn.microsoft.com/en-us/powershell/) - [multi-platform pwsh](https://github.com/PowerShell/PowerShell) or Windows PowerShell (pre-installed on Windows)
* For building .NET projects, also:
  * [.NET SDK](https://dotnet.microsoft.com/en-us/download)
  * Preferably (optional), an IDE that can work with VS solutions (`.sln`) and .NET projects (such as `.csproj`), e.g.:
    * [Visual Studio](https://visualstudio.microsoft.com/) - the preferable choice on MS Windows
    * [Visual Studio Code]() with the [`C# Dev Kit` extension](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csdevkit) (and possibly `C#` Extension, which should normally be installed by the previous one) from Microsoft, available for major operating systems (MS Windows, Linux, macOS)
      * also check for other useful extensions
    * 

## Using this Repository with IGLib

* Clone [this repository](https://github.com/ajgorhoe/iglibmodules) to desired location on the target computer
  * Open the OS command shell or PowerShell on the target location
  * Run `git clone https://github.com/ajgorhoe/iglibmodules`
* Open the 'iglibmodules' directory where the repository was cloned
* Run the group cloning/updating PowerShell script for IGLib repositories,
  * `iglibmodules/UpdateRepos_Basic.ps1`
  * Some of the repositories cloned by this scripts may be private, and errors will be reported for the repositories for which you don't have access rights. This will just skip those repositories but will not break the script.
  * See the [Cloning and Updating Repositories](#cloning-and-updating-repositories-using-scripts-in-the-container-repository) Section
* Change directory to:
  `iglibmodules/IGLibCore/`
* Open (in a suitable IDE) one of the solutions in `iglibmodules/IGLibCore/`, either `IGLibCore.sln` (to build only the projects in IGLibCore) or 'IGLibCore_All.sln' (to build all IGLibCore libraries)
* Build the projects of choice, run the built applications, etc.
  * See the [Building .NET Projects](#building-net-projects-in-the-container-repository) Section

## Using this Repository with Legacy IGLib Framework

## Customizing the Repository for Other Software Projects

## Typical Workflows with this Repository

## Cloning and Updating Repositories Using Scripts in the Container Repository

## Building .NET Projects in the Container Repository

