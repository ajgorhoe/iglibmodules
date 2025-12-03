
# Customizaion Branch `swrepos/RecursiveIGLib/mainRecursiveIGLib` - Container of Software Repository Containers for IGLib

[This branch (`swrepos/RecursiveIGLib/mainRecursiveIGLib`)](https://github.com/ajgorhoe/iglibmodules/tree/swrepos/RecursiveIGLib/mainRecursiveIGLib) contains customization of the **[`iglibmodules` container repository](https://github.com/ajgorhoe/iglibmodules)** that serves as container of containers. It is used to **contain** and automate cloning and updating of **multiple repository containers**, each od which contains a set of software repositories and automates their cloning and updating. Container of software repository enables you to organize working clones of your software repository that you work on really easily.

## Use

* Clone this repository (container of repository containers)
  * You can copy the necessary form the `_scripts` directory (`.gitignore`, `UpdateOrCloneRepository.ps1`, `UpdateContainer_iglibmodules_Recursive.ps1`) to a directory in which the repository will be cloned, and run the `UpdateContainer_iglibmodules_Recursive.ps1` script to clone the current repository
* Within directory repository, run cloning / updating scripts for contained repositories and containers that you want to clone
  * Some of the scripts can clone or update a group of containers and repositories, some even recursively cloning / updating their own contained repositories

Some scripts in the repository root directory just clone individual repository containers meant to be contained within this repository. User can then run the script within these container repositories to clone the repositories contained within them.

The `UpdateContainerGroupAll.ps1` script clones / updates all containers contained in the current container. The `UpdateContainerGroupAll_Basic.ps1` script also clones these container repositories, but beside that it automatically clones the basic repositories contained within them. The `UpdateContainerGroupAll_Extended.ps1` script is similar but it clones some additional repositories that are recursively contained in the container repositories cloned within the current repo.

Cloning script will clone the specific repository at its specified place within the containing repository (container) if the repo has not yet been cloned. If it has been cloned, it will update the repository (especially by pulling the changed that have not yet been transferred form the main remote repo). The script will also checkout the intended branch or change/add addresses of remotes that were changed after since the last time the cloning / updating script has been run.

## Easy Customization

It is easy to customize this branch and repository for your own purposes. If you need your own **container of containers**, just start from this branch (`swrepos/RecursiveIGLib/mainRecursiveIGLib`) and adapt cloning / updating scripts for your own repository containers from the existing ones.

For your own **containers of software repositories**, you can take **[IOptLib's adaptation](https://github.com/IOptLib/iglibmodules)** on the **[branch `swrepos/GrLib/repoMain`](https://github.com/ajgorhoe/iglibmodules/tree/swrepos/GrLib/repoMain)**. In particular, see the [Customization Readme]() for that customization branch and customization steps should be very clear.

Normally you can customize the container repository for your needs **within hours**, and the repository can be used on any platform where `PowerShell` can be installed (it is installed by default on Windows). The repository has a very small footprint and enables efficient cloning and updating of your repositories, groups of repositories and groups of groups of repositories.

## License

Copyright © Igor Grešovnik.

See [LICENSE.md](https://github.com/ajgorhoe/iglibmodules/blob/main/LICENSE.md) ([local version](./LICENSE.md)) for license information.

Customizations on the swrepos/GrLib/repoMain branch done by [IOptLib](https://github.com/IOptLib), licensed under the same license.
