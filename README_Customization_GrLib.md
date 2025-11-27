
# Customization for Investigation of Interesting Graphical libraries

This branch on the [IGLib modules' container repository](https://github.com/ajgorhoe/iglibmodules) (the `swrepos/GrLib/repoMain`) is used to customize the `iglibmodules` repository for cloning and updating of graphical libraries of my interest, such that I can investigate and adapt them.

## Adaptation Procedure

1. Cloned the [IGLib modules' container repository](https://github.com/ajgorhoe/iglibmodules).
1. Created a customization branch, `swrepos/GrLib/repoMain`. It will be used to clone, update and customize repositories of interest (mainly some graphical libraries that interest me).
    * This branch was modelled after the `iglibrepo/IGLibCore/repoMain` branch of the [codedoc repository](https://github.com/ajgorhoe/IGLib.workspace.doc.codedoc/tree/iglibrepo/IGLibCore/repoMain), which I would also like to use later for generating code documentation.
2. Tagged my first commit with `tags/swrepos/GrLib/BeginCustomization`, such that It remains clear at which point I branched off.
3. Added this document where I am writing down customization steps.
4. Added script for cloning & updating the [Helix Toolkit](https://github.com/helix-toolkit/helix-toolkit), the `GrLibUpdateRepo_HelixToolkit.ps1`, a capable 3D .NET Graphic library based on on WPF.
    * Adaptation was simple: just copied `_scripts/UpdateRepo_IGLibCore.ps1` to the root directory and renamed it; then changed configuration (remote origin to be cloned, branch to be checked out, directory where the repository is cloned, also needed to change relative path to `UpdateOrCloneRepository.ps1` because the script changed location), it's very simple and cloning works flawlessly. Also added the clone directory (`helix-toolkit/`) into `.gitignore`.
      * P.S. Later, I changed the primary remote (origin) to [my clone of the Helix Toolkit](https://github.com/IOptLib/helix-toolkit) and configured the [original Helix Toolkit repo](https://github.com/helix-toolkit/helix-toolkit) as secondary remote called `remoteUpstream`. Since the primary remote address has changed, I needed to remove the cloned repository and run the cloning script again.
3. 

## License

Copyright © Igor Grešovnik.

See [LICENSE.md](https://github.com/ajgorhoe/iglibmodules/blob/main/LICENSE.md) ([local version](./LICENSE.md)) for license information.

Customizations on the swrepos/GrLib/repoMain branch done by [IOptLib](https://github.com/IOptLib), licensed under the same license.
