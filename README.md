
# IGLib Modules' Container Repository

This is the [IGLib modules' container repository](https://github.com/ajgorhoe/iglibmodules) used to clone and build the new IGLib modules (as opposed to the legacy IGLib Framework libraries, which are built by [this repository](https://github.com/ajgorhoe/iglibcontainer)). See also the readme files of the [IGLibCore repository](https://github.com/ajgorhoe/IGLib.modules.IGLibCore) and the basic [IGLib Framework repository](https://github.com/ajgorhoe/IGLib.workspace.base.iglib).

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

This repository is primarily used for **cloning and building IGLib repositories** (the new [IGLib](https://github.com/ajgorhoe/IGLib.modules.IGLibCore/blob/main/README.md) and the legacy [IGLib Framework](https://github.com/ajgorhoe/IGLib.workspace.base.iglib/blob/master/README.md)) and for **developing, building, testing** and running  them **locally**. However, the repository can be **[easily customized](#customizing-the-repository-for-other-software-projects) for other software projects** involving **multiple source code repositories**.

The idea is that **development of software projects** consisting of many modules with their own source code repositories is much easier when **dependencies** are referenced **directly via source code**, rather than via compiled binaries. This significantly **shortens code-build-test-debug cycles** in modern IDEs. For this to work, the source repositories for involved modules must exist at specific relative paths with respect to each other. This **container repository** helps **cloning individual repositories at correct relative paths**, which is achieved by the [cloning/updating scripts](#cloning-and-updating-repositories-using-scripts-in-the-container-repository) that are part of the repository. For more information, see the [Typical Workflows](#typical-workflows-with-this-repository) Section.

Initial **cloning** and sometimes updating the repositories is conveniently done by using the included [cloning/updating scripts](#cloning-and-updating-repositories-using-scripts-in-the-container-repository). **Other git** source control-**related tasks** (such as branching, committing, pushing...) are performed by using usual Git clients such as Git command-line (git.exe) or a GUI client such as TortoiseGit (on MS Windows), GitKraken (multi-platform), or RabbitVCS (Linux, integrated with file managers), and countless others.

### Prerequisites for Using this Repository

* Installed [Git command-line client](https://git-scm.com/)
* Installed [PowerShell](https://learn.microsoft.com/en-us/powershell/) - [multi-platform pwsh](https://github.com/PowerShell/PowerShell) or Windows PowerShell (pre-installed on Windows)
* For *building .NET projects*, also:
  * [.NET SDK](https://dotnet.microsoft.com/en-us/download)
  * Preferably (optional), an IDE that can work with VS solutions (`.sln`) and .NET projects (such as `.csproj`), e.g.:
    * [Visual Studio](https://visualstudio.microsoft.com/) - the preferable choice on MS Windows (you may be eligible for the [free Community edition](https://visualstudio.microsoft.com/free-developer-offers/))
    * [Visual Studio Code](https://code.visualstudio.com/) with the [C# Dev Kit extension](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csdevkit) (and possibly `C#` Extension, which should normally be installed by the previous one); VS Code   is a free cross-platform IDE, available for major operating systems (MS Windows, Linux, macOS)
      * also check for other useful extensions
    * [JetBrains Rider](https://www.jetbrains.com/rider/), a popular IDE for MS Windows, Linux and macOS
* For *building projects in other languages* (e.g. when using a [customized container repository](#customizing-the-repository-for-other-software-projects)), also the necessary SDKs and IDEs for those languages

## Using this Repository with IGLib

For [IGLib](https://github.com/ajgorhoe/IGLib.modules.IGLibCore/blob/main/README.md), this container contains predefined scripts for cloning and updating all involved repositories that are worked on in source code. Downloading (cloning) and building the *IGLib* is therefore very easy:

* Clone [this repository](https://github.com/ajgorhoe/iglibmodules) to desired location on the target computer
  * Open the OS command shell or PowerShell on the target location
  * Run `git clone https://github.com/ajgorhoe/iglibmodules`
* Open the 'iglibmodules' directory where the repository was cloned
* Run the group cloning/updating PowerShell script to **clone IGLib repositories**,
  * `iglibmodules/UpdateRepos_Basic.ps1`
  * Some of the repositories cloned by this scripts may be private, and errors will be reported for the repositories for which you don't have access rights. This will just skip those repositories but will not break the script.
  * See the [Cloning and Updating Repositories](#cloning-and-updating-repositories-using-scripts-in-the-container-repository) Section
* Change directory to:
  `iglibmodules/IGLibCore/`
* Open (in a suitable IDE) one of the solutions in `iglibmodules/IGLibCore/`, either `IGLibCore.sln` (to build only the projects in IGLibCore) or 'IGLibCore_All.sln' (to build all IGLibCore libraries)
* **Build the projects of choice**, run the built applications, etc.
  * See the [Building .NET Projects](#building-net-projects-in-the-container-repository) Section
* To generate and view your local copy of **code documentation**:
  * Change directory to `iglibmodules/_doc/`
  * Run the script `UpdateRepo_codedoc.ps1` in this directory
  * Change directory to the newly created `iglibmodules/_doc/codedoc`
  * Run one of the documentation generating scripts for IGLib, such as `GenerateDocIGLib.ps1`, `GenerateDocIGLibAll.ps1`, `GenerateDocIGLibWithSources.ps1`, or `GenerateDocIGLibAllWithSources.ps1`
  * Open the `CodeDocumentation.html` file in a web browser (usually by double-clicking the file) and click the appropriate link to the specific code documentation (which you must have generated before, as described in the previous step)

## Using this Repository with Legacy IGLib Framework

This container repository can also be used for building and testing the [Legacy IGLib Framework](https://github.com/ajgorhoe/IGLib.workspace.base.iglib/blob/master/README.md), as the necessary scripts are already included in this repository and nested utility repositories (such as `_doc/codedoc` for generating code documentation). Usage is *almost identical [as for the new IGLib](#using-this-repository-with-iglib)*, except for the following **differences**:

* To clone the necessary repositories, run one of the following scripts:
  * `UpdateReposLegacy_Basic.ps1`
  * or
  * `UpdateReposLegacy_Extended.ps1`
* To build the code, go to `iglibmodules/iglib` and open one of the available solutions:
  * `IGLibWithDemoApps.sln` (preferable in most cases)
  * `ShellDevAll.sln` for heavy maintenance tasks
* To generate and view code documentation, follow similar steps as with the new IGLib, except run the generation scripts for the legacy IGLib Framework in `iglibmodules/_doc/codedoc/`:
  * `generate_iglib.ps1`, `generate_igliball.ps1`, `generate_iglib_with_sources.ps1`, or `generate_igliball_with_sources.ps1`

## Customizing the Repository for Other Software Projects

It is easy to customize this repository for other software projects: just adapt the [cloning/updating scripts](#cloning-and-updating-repositories-using-scripts-in-the-container-repository). This is true for any software where the source code under developers' control consists of multiple Git repositories, which must be located at the specified relative path with respect to each other.

Typically, customization would consist of the following steps:

* **Fork the [iglibmodules repository](https://github.com/ajgorhoe/iglibmodules)** (this repository) on a server accessible to all developers (public service like GitHub, GitLab or BitBucket, or a company's source control server)
  * If fork is not possible or desirable, simply create an empty Git repository under your control and push this repository's main branch to that repository
  * By starting from a fork or a compatible repository, you will be able to pull the eventual useful updates
* Create yor custom main branch from the main branch of this repository.
  * Make this custom branch main branch of your repository
  * If synchronization of new features from this repository to your fork is intended, define a remote in your local clones that points to the original repository
    * For additional safety, you can delete the branch called *main* in your fork and in your local clones of the fork; this can reduce the probability of unintended merge, push or pull attempts
* Adapt the script for cloning/updating individual repositories and groups of repositories
  * Leave the general cloning/updating script, `iglibmodules/_scripts/UpdateOrCloneRepository.ps1`  intact
  * Use updating/cloning scripts for specific repositories (from `iglibmodules/_scripts`), such as `UpdateRepo_IGLibScripts.ps1`, as template for your cloning/updating scripts; use group cloning/updating scripts from `iglibmodules/`, such as `UpdateRepos_Basic.ps1` and `UpdateRepos_Extended.ps1`, as templates for your own group cloning/updating scripts
  * Create the updating/cloning scripts for each repository that constitutes the software source code
  * Create group updating/cloning scripts for all of these repositories, or for different groups of repositories, whichever is suitable for the structure of your software sources
* If preferred, remove the existing cloning/updating scripts from the original repository on your customized fork's main branch

The [Cloning and Updating Section](#cloning-and-updating-repositories-using-scripts-in-the-container-repository) contains information on how to adapt specific cloning/updating scripts to match your own source code repositories.

## Cloning and Updating Repositories Using Scripts in the Container Repository

## Building .NET Projects in the Container Repository

## Typical Workflows with this Repository

