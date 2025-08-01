
# IGLib Code Documentation Repository

Copyright (c) Igor Grešovnik  \
See LICENSE.md at https://github.com/ajgorhoe/CodeDocumentation

## About this Repository

This repository is part of the [Investigative Generic Library (IGLib)](https://github.com/ajgorhoe/IGLib.modules.IGLibCore/blob/main/README.md). It is a container repository that contains various types of generated code documentation for IGLib.

## Using the Repository

The legacy IGLib Framework can also be cloned by the new IGLib container used for cloning and building the new IGLib. Clone the container repository at:

> *https://github.com/ajgorhoe/iglibmodules*

In the cloned container repository, run the update/clone scripts as necessary to clone the desired IGLib repositories, for example,

> *iglibmodules/UpdateRepos_Extended.ps1*

Change to `iglibmodules/_doc/` and run the script

> *UpdateRepo_codedoc.ps1*

This clones the [`codedoc`](https://github.com/ajgorhoe/IGLib.workspace.doc.codedoc) repository containing scripts and other tools for generating code documentation. Run the appropriate scripts in `iglibmodules/_doc/codedoc/` for generation of different kinds of code documentation, such as:

* `generate_iglib.ps1` - basic IGLib documentaton
* `generate_igliball.ps1` - extended IGLib documentation
* `generate_iglib_with_sources.ps1` - basic IGLib documentation with source code included
* `generate_iglib_all_with_sources.ps1` - extended IGLib documentation with source code included

The generated documentation can be browsed via the `code_documentation.html` omdex file. See the [codedoc readme](https://github.com/ajgorhoe/IGLib.workspace.doc.codedoc/blob/master/README.md) for more details.
