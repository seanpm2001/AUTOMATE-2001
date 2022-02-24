
***

# AUTOMATE2001 ToDo Beacon

The AUTOMATE2001 todo beacon is a configuration script that you place in a repository to mark it for automation. If AUTOMATE2001 is installed and has privileges to the target repository, it will read the ToDo list and update the project accordingly.

The file MUST be named `AUTOMATE2001.yml` currently no other name is supported.

The very first syntax for the file went like this:

```yaml
# A set of tasks for the Automate2001 bot to perform here
automate2001_tasks:
isAlldone: "False"
-
Automate-All-ContributorSrc:
-
Automate-Pull-Requests-archival
isAdone: "False"
Automate-Index-file
isBdone: "False"
Automate-Issue-archival
isCdone: "False"
# File version: 1 (2022, Tuesday, February 22nd at 7:17 pm)
```

A revised version 2 changed and added some things, and looks like this:

```yaml
# A set of tasks for the Automate2001 bot to perform here
automate2001_tasks:
isAlldone: "False"

-
Automate-All-ContributorSrc:
-
Automate-Pull-Requests-archival
isAdone: "False"
Automate-Index-file
isBdone: "False"
Automate-Issue-archival
isCdone: "False"

-
Automate-RepoData:
-
Automate-RepoData-Description
isDDone: "True"
Automate-RepoData-GitHubLink
isEDone: "False"
Automate-RepoData-GitHubGitLink
isFDone: "False"
Automate-RepoData-Linked
isGDone: "False"
Automate-RepoData-Topics
isHDone: "False"

# File version: 1 (2022, Tuesday, February 22nd at 8:07 pm)
```

***

**Article version:** `1 (2022, Wednesday, February 23rd at 7:17 pm)`

***
