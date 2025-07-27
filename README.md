
# Anka's Container Repository

This is the [Anka's container repository](https://github.com/ajgorhoe/iglibmodules_anka), based on the newer [IGLib's container repository](https://github.com/ajgorhoe/iglibmodules).

## How to Use the Repository

* Clone [this containner repository](https://github.com/ajgorhoe/iglibmodules_anka) to a desired location on the local system.
* Run any of the PowerShell scripts in the root directory of the cloned container repository in order to clone a specific repository within the container.
  * All repositories can be cloned in one step by running the .

In the update / clone scripts, varialbes specify which repository are cloned, to which location, the branch checked out, and the remotes. Meaning of these variables are defined in `UpdateRepo_learn_anka_igor.ps1`. In order to create a new clone / update script, just copy an existing one and adapt the variables. If appropriate, also call the script in the script for group cloning, `UpdateRepoGroup_AnkasRepositories.ps1`. The meaning of variables is as follows:

* `UpdatingScriptPath`: Path to the UpdateOrCloneRepository.ps1, which all clone / update scripts call to do the job
* `global:CurrentRepo_Directory`: Directory where the repository will be cloned (relative to ththe location of the cloning script)
* `global:CurrentRepo_Ref`: Branch of the repository that is checked out
* `global:CurrentRepo_Address`: Address of the primary remote repository
* `global:CurrentRepo_Remote`: Name of the primary remote repository
* `global:CurrentRepo_AddressSecondary`: Address of the secondary remote
* `global:CurrentRepo_RemoteSecondary`: Name of the secondary remote
* `global:CurrentRepo_AddressTertiary`: Address of the tertiary remote
* `global:CurrentRepo_RemoteTertiary`: Name of the tertiary remote:
* `global:CurrentRepo_ThrowOnErrors`: Flag specifying whether exception should be thrown on errors (false means script will just report an error and continue)

## About the Container Repository

Copyright (c) Igor Grešovnik
See LICENSE.md at https://github.com/ajgorhoe/iglibmodules_anka

