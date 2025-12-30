
# `_external` Directory of the `iglibmodules` Container Repository

This directory is used to **clone repositories of external dependencies** that are used by the modules contained in the current container repository.

In ***[IGLib](https://github.com/ajgorhoe/IGLib.modules.IGLibCore/blob/main/README.md)***, each module will typically contain its own scripts for cloning external dependencies into this directory in its `scripts/` subdirectory.

Beside that, external repositories used by different modules have their cloning / updating scripts in the [_scripts_external](./_scripts_external/) subdirectory of the current directory (see the [readme file](./_scripts_external/README_scripts_external.md)). In this way, cloning and updating of external dependency repository can be done in one place.

