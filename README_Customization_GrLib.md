
# Customizaion Branch `swrepos/GrLib/repoMain`

This branch contains customization of the `iglibmodules` repository for 3D graphics libraries and applications of my interest. I will use the repository at this branch to automate cloning and updating of these reposioried, prepare contributions and possibly customize some of these repositories to my needs. The GRLib `iglibmodules` repository seemed ideal as starting point for such a container repository because it seems to provide everything I need for my purpose.

## Adaptation Procedure

### Part 1 - Scripts for Cloning and Updating the necessary Repositories

1. Cloned the [IGLib modules' container repository](https://github.com/ajgorhoe/iglibmodules).
2. Created a customization branch, `swrepos/GrLib/repoMain`. It will be used to clone, update and customize repositories of interest (mainly some graphical libraries that interest me).
    * This branch was modelled after the `iglibrepo/IGLibCore/repoMain` branch of the [codedoc repository](https://github.com/ajgorhoe/IGLib.workspace.doc.codedoc/tree/iglibrepo/IGLibCore/repoMain), which I would also like to use later for generating code documentation.
3. Tagged my first commit with `tags/swrepos/GrLib/BeginCustomization`, such that It remains clear at which point I branched off.
4. Added this document where I am writing down customization steps.
5. Added script for cloning & updating the [Helix Toolkit](https://github.com/helix-toolkit/helix-toolkit), the `GrLibUpdateRepo_HelixToolkit.ps1`, a capable 3D .NET Graphic library based on on WPF.
    * Adaptation was simple: just copied `_scripts/UpdateRepo_IGLibCore.ps1` to the root directory and renamed it; then changed configuration (remote origin to be cloned, branch to be checked out, directory where the repository is cloned, also needed to change relative path to `UpdateOrCloneRepository.ps1` because the script changed location), it's very simple and cloning works flawlessly. Also added the clone directory (`helix-toolkit/`) into `.gitignore`.
      * P.S. Later, I changed the primary remote (origin) to [my clone of the Helix Toolkit](https://github.com/IOptLib/helix-toolkit) and configured the [original Helix Toolkit repo](https://github.com/helix-toolkit/helix-toolkit) as secondary remote called `remoteUpstream`. Since the primary remote address has changed, I needed to remove the cloned repository and run the cloning script again.
6. Added cloning/updating script for the [RobotArmHelix repository](https://github.com/IOptLib/RobotArmHelix), `GrLibUpdateRepo_RobotArmHelix.ps1`: simply copied the previously created `GrLibUpdateRepo_HelixToolkit.ps1` and adapted the settings in a similar manner. Also added the clone directory to .gitignore, and the primary remote is also set to my fork and the secondary remote is set to the [original (upstream) repository](https://github.com/Gabryxx7/RobotArmHelix).
7. Added scripts for updating the whole group of repositories involved: `GrLibUpdateRepoGroup_Basic.ps1` for the basic repositories, and `GrLibUpdateRepoGroup_Extended.ps1` for extended set with additional repositories (currently no repositories here, so it just runs the basic scripts, but additional repositories may be added in the future). These scripts were copied and adapted from `UpdateRepos_Basic.ps1` and `UpdateRepos_Extended.ps1`;
    * These group cloning / updating scripts are very handy because one can have all the work done with a single double-click (dependent on the system settings for running PowerShell scripts).
8. As necessary, add additional scripts for updating/cloning repositories that are needed, and add calls to these scripts in the group updating scripts.


## License

Copyright © Igor Grešovnik.

See [LICENSE.md](https://github.com/ajgorhoe/iglibmodules/blob/main/LICENSE.md) ([local version](./LICENSE.md)) for license information.

Customizations on the swrepos/GrLib/repoMain branch done by [IOptLib](https://github.com/IOptLib), licensed under the same license.
