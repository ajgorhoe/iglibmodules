
# The _scripts/ directory (Container Repository `iglibmodules`, branch `swrepos/RecursiveIGLib/mainRecursiveIGLib`)

This repository contains basic scripts for cloning/updating repositories:

* `UpdateOrCloneRepository.ps1` - generic script for updating and cloning repositories, used by other (specific) updating / cloning scripts
* `UpdateContainer_iglibmodules_Recursive.ps1`

Using the IGLib container repository, `iglibmodules`, is an easy way to clone and update all the repositories. The `swrepos/RecursiveIGLib/mainRecursiveIGLib` branch contains adaptation of the container repositories to contain other container repositories (i.e., one obtains container of containers of software reepositories), which enables easy organization of working copies (clones) of several groups of related repositories.

Instead of cloning the container of container repositories manually, you can simply copy the scripts `UpdateOrCloneRepository.ps1` and `UpdateContainer_iglibmodules_Recursive.ps1` plus `.gitignore` into directory where the container of containers should reside, then just run the `UpdateContainer_iglibmodules_Recursive.ps1` script. This script clones the container of containers into the `iglibmodules_Recursive` and can also be used for later updates of container of containers.

Within the cloned `iglibmodules_Recursive/` directory, just run various cloning / updating scripts in its root to clone further repositories. Some of these scripts clone whole groups of repositories by a single (double-) click.

## In Case of Customization

If you **customize** this repository for other software projects, and you replace or modify scripts in this directory, then update this README file on the customization branch (or several branches) with up-to-date information. See the [customization section](https://github.com/ajgorhoe/iglibmodules/blob/main/README.md#customizing-the-repository-for-other-software-projects) of the repository README for more information.
