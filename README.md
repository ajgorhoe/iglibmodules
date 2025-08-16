
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
  * Use updating/cloning scripts for specific repositories (from `iglibmodules/_scripts`), such as `UpdateRepo_IGLibScripts.ps1`, as template for your cloning/updating scripts; use group cloning/updating scripts from `iglibmodules/`, such as `UpdateRepos_Basic.ps1` and `UpdateRepos_Extended.ps1`, as templates for your own group cloning/updating scripts
  * Leave the general cloning/updating script, `iglibmodules/_scripts/UpdateOrCloneRepository.ps1`,  intact
  * Create the updating/cloning scripts for each repository that constitutes the software source code
  * Create group updating/cloning scripts for all of these repositories, or for different groups of repositories, whichever is suitable for the structure of your software sources
* If preferred, remove the existing cloning/updating scripts from the original repository on your customized fork's main branch
* If you also want to customize automatic generation of code documentation for your software, do the following:
  * Customize the [codedoc repository](https://github.com/ajgorhoe/IGLib.workspace.doc.codedoc)
    * The best way to do that is to fork the original directory, create a new main branch for the customized fork, and make the necessary adaptation on that branch
    * See the [codedoc readme file](https://github.com/ajgorhoe/IGLib.workspace.doc.codedoc/blob/master/README.md) for more information on the `codedoc` repository ind its customization
  * Adapt the script `iglibmodules/_doc/UpdateRepo_codedoc.ps1` accordingly: update remotes` addresses and names (point to your fork and your main branch), preferably also the clone directory, do distinguish it from the original repository

The [Cloning and Updating Section](#cloning-and-updating-repositories-using-scripts-in-the-container-repository) contains information on how to adapt specific cloning/updating scripts to match your own source code repositories.

## Cloning and Updating Repositories Using Scripts in the Container Repository

[Powershell](https://learn.microsoft.com/en-us/powershell/) scripts are used for cloning and updating repositories within this container repository (see [Running the Scripts](#running-the-scripts)). In this way, the same scripts can be used on different platforms.

The script *[iglibmodules/_scripts/UpdateOrCloneRepository.ps1](./_scripts/UpdateOrCloneRepository.ps1)* is the basis for cloning/updating scripts for individual repositories. These scripts just set the variables that define how the specific repository is cloned or updated (such as cloning directory, names and addresses of remotes, the checked out branch), and call the `UpdateOrCloneRepository.ps1`, which does the job. The correct relative location of the `UpdateOrCloneRepository.ps1` must also be specified in the cloning/updating scripts for individual repositories. The `UpdateOrCloneRepository.ps1` script was borrowed from the [IGLibScripts repository](https://github.com/ajgorhoe/IGLib.modules.IGLibScripts/blob/main/README.md), where it is developed, and new versions are copied to this repository every now and then.

When a **new repository** needs to be added to software sources, you can simply **create its cloning/updating script by adapting an existing script** (such as [UpdateRepo_IGLibScripts.ps1](./_scripts/UpdateRepo_IGLibScripts.ps1)) by simply setting the values of variables that determine how cloning/updating is performed:

* `UpdatingScriptPath` must be set to the relative path of the `UpdateOrCloneRepository.ps1` with respect to the new cloning/updating script
* `CurrentRepo_Directory` must be set to relative path of the cloning directory, relative to the script
* `CurrentRepo_Ref` must be set to the branch (or commit, or tag) from the primary remote repository that will be checked out or updated (pulled from the primary remote) when the script is run
* `CurrentRepo_Address` must be set to the primary remote repository to be cloned, and from which the new state is updated when the script is run
* `CurrentRepo_Remote` must contain the name of the primary remote (usually, this will be `origin`)
* `CurrentRepo_AddressSecondary` must be set to the address of the secondary remote, if one is specified.
  * When the script is run, the secondary and tertiary remotes are set, if specified, such that users can push to or pull from these remotes when needed
* `CurrentRepo_RemoteSecondary` must be set to the chosen name of the secondary remote
* `CurrentRepo_AddressTertiary` must be set to the address of the third remote, if one is specified
* `CurrentRepo_RemoteTertiary` must be set to the chosen name of the third remote, if one is specified
* `CurrentRepo_ThrowOnErrors` specifies whether exceptions are thrown on errors. Default (and recommended) is $false, which means that errors are reported but they don't end the execution of the cloning/updating script
* if certain variables are not defined for a specific repository (commonly, addresses of secondary and tertiary remotes), set them to `$null`

One important property of cloning/updating scripts is that **results** of their calls are **independent of the current directory**. Paths are specified as absolute paths, or are treated relative to the script directory. Besides, these scripts are run without arguments.

**Updating/cloning scripts** for individual repositories do the following:

* When the repository is not yet cloned:
  * Clone the repository at the specified location (variable `CurrentRepo_Directory`, relative to the script location)
  * Define the remotes as specified by the variables (`CurrentRepo_Address` / `CurrentRepo_Remote`, `CurrentRepo_AddressSecondary` / `CurrentRepo_RemoteSecondary`, `CurrentRepo_AddressTertiary` / `CurrentRepo_RemoteTertiary`)
  * Fetch from the primary remote
  * Check out the specified branch (or tag or commit) from the primary remote (variable `CurrentRepo_Ref`)
* When the repository clone already exists:
  * Fetch from the primary remote
  * Check out the specified branch (or tag or commit; variable `CurrentRepo_Ref`) if not already checked out
  * Pull to the checked out branch from the primary remote (if applicable, e.g., if not in detached state) to integrate the latest changes from the common server

**Group cloning/updating scripts** (such as [UpdateRepos_Basic.ps1](./UpdateRepos_Basic.ps1) or [UpdateRepos_Extended.ps1](./UpdateRepos_Extended.ps1)) simply run several cloning/updating scripts for individual repositories, to clone or update a group of related repositories. For each individual script, its absolute path is calculated from the relative path with respect to script location before it is run.

### Running the Scripts

Cloning/updating scripts run both in Windows [PowerShell](https://learn.microsoft.com/en-us/powershell/), which runs on MS Windows and is preinstalled on this operating system, or in the [cross-platform PowerShell](https://github.com/PowerShell/PowerShell/blob/master/README.md), available for Linux, macOS, and Windows. On operating systems other than MS Windows, install the cross-platform PowerShell [from here](https://learn.microsoft.com/en-us/powershell/) before using this repository.

On Windows, you can simply right-click the script in a file explorer and select "Run with PowerShell" from the context menu. 

On all systems, the PowerShell command-line interpreter can be started from system command-line shells:

* Type `PowerShell` to start the Windows PowerShell (Windows only)
* Type `pwsh` to start the cross-platform PowerShell

In order to run the cloning/updating script in PowerShell, just type its relative path and press <Enter>. For example, type:

* `./UpdateRepos` for a script located in the current directory; for scripts located in the current directory, teh `./` is compulsory
* `./_scripts/UpdateRepo_IGLibScripts.ps1` for a script located in another directory

## Building .NET Projects in the Container Repository

After cloning the source cod repositories by one of the cloning/updating scripts, the code can be built in several ways.

Solutions (`.sln`) and project files (such as `.csproj`) can be built using the `dotnet` command-line tool (multi-platform). In order to do that, you need to install the [.NET SDK](https://dotnet.microsoft.com/en-us/download) on your computer.

On MS Windows, one can use the [Visual Studio](https://visualstudio.microsoft.com/) IDE (integrated development enviroment). You may be eligible for the [free Community edition](https://visualstudio.microsoft.com/free-developer-offers/) if you are individual developer or when developing open source solutions. Building and running .NET applications is very easy in Visual Studio: open the solution or project file by double-clicking it, then use the context menu for building and running projects and solutions, or for modifying or adding source files.

On other platform, you can use one of the cross-platform IDEs - the [JetBrains Rider](https://www.jetbrains.com/rider/), or [Visual Studio Code](https://code.visualstudio.com/) with the [C# Dev Kit extension](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csdevkit).

In Visual Studio Code with C# Dev Kit extension:

* Open the directory containing the solution file (`.sln`)
* In the VS Code Activity Bar (the vertical bar on the left), right-click the "Explorer" icon (hover over icons to get their titles). This will open a panel showing directories and files
* In Explorer, find the solution file (`.sln`) you want to open, right-click it, and select "Open Solution". This opens the Solution Explorer panel below the Explorer panel.
* Use the Solution Explorer to browse projects and files.
* You can build, run, and debug your projects using the built-in commands and launch configurations.

## Typical Workflows with this Repository

A simple workflow using this container repository includes the following:

* Clone a set of relevant repositories by using a group cloning/updating script.
* Open source code in an appropriate integrated development environment (IDE)
* Edit, build, run and test the code
* Use Git (or the IDE's capabilities, if available) to commit changes and push them to a common remote repository
* Run the cloning/updating scripts in order to pull contributions from other users from the remote repository
* Repeat the cycle (from edit, build, ru and test) until the targeted tasks / features are complete

A common scenario is that implementation of a feature requires coordinated changes across several source code repositories cloned in this container. In this case, the workflow may consist of the following:

* Create dedicated feature branches in all affected repositories and psh them to the common remote repository
  * It is good practice to name these branches the same across all source repositories
* To simplify the workflow:
  * Also create a feature branch with the same name in the container repository
  * On this feature branch, update the cloning/updating scripts for the affected repositories, such that the checkout branch is sett to the corresponding feature branch; this enables the simple workflow, including running the cloning/updating scripts to pull changes from other developers from the common remote
* Repeat cycles similar to the above simple workflow
* Wen the feature is complete, create pull requests for the feature branches on all affected repositories (but not on the container repository)
* When code reviews are done and approved, simultaneously merge changes in affected repository
* Discard the feature branch on the container repository and switch to the main branch
  * Finally, run teh group cloning/updating script; this will check out the updated main branches (with the new feature merged) from the repositories

## License

© Copyright Igor Grešovnik.

See [LICENSE.md](https://github.com/ajgorhoe/iglibmodules/blob/main/LICENSE.md) ([local version](./LICENSE.md)) for license information.
