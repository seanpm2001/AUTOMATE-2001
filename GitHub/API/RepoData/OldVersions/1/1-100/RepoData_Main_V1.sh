#!/bin/sh
# Start of script
# Automating the archival of the /RepoData/ directory
# This is mainly pseudocode right now, and is not functional
check_bandwidth () {
  $///Repo/bandwidth_band/Automation/GitHub/Bandwidth_Check/.sh
  return 0;
  break
}
exd () {
  echo "AUTOMATE-2001 will end the Create RepoData process in 10 seconds"
  wait(10)
  exit
  break
}
input () {
	echo "AUTOMATE-2001\nArchive/update repodata\nWhich repository would you like to update:"
	read "RepoName: "
	echo "You entered: " + $RepoName + " would you like to create or update?"
	set Targetrepo to $RepoName
	read "c/u : "
	if read == "C" {
		echo "AUTOMATE-2001 will now create an archive of the repository data for this repo, and will send a pull request when done"
		return $create
		break
  	} fi else if read = "U" {
		echo "AUTOMATE-2001 will now update and archive the repository data for this repo, and will send a pull request when done"
		return $update
		break
  	} fi else {
		echo "Invalid input, exiting in 10 seconds"
		wait(10)
		exit
		break
	}
	break
}
repoData_create () {
	read.REST($Repo_Description)
	fork $Repo_Description as "///RepoData/Description/GitHub/README.txt"
	copy "///RepoData/Description/GitHub/README.txt" to "///RepoData/Description/GitHub/OldVersions/English/US/1/1-100/README_V1.txt"
	fork $repoLink as "///RepoData/Link/GitHub/README.md" format as \n"```"\n"$Data"\n"```"\n"$Data"\n""\b\r\e\a\k
	copy "///RepoData/Link/GitHub/README.md" to "///RepoData/Link/GitHub/OldVersions/English/US/1/1-100/README_V1.md"
	fork $repoLinkGit as "///RepoData/Link/GitHub-Git/README.md" format as \n"```"\n"$Data"\n"```"\n"$Data"\n""\b\r\e\a\k
	copy "///RepoData/Link/GitHub-Git/README.md" to "///RepoData/Link/GitHub-Git/OldVersions/English/US/1/1-100/README_V1.md"
	fork $repoLinked as # Stopping here for now
	fork $topicsGit as "///RepoData/Topics/TOPICS.txt" format as \n"$Data#1"\n$Data++ until $Data=21
	if $data.entry == "" {
		stop
		return 0
		break
	} fi else {
		continue
		break
	}
	copy "///RepoData/Topics/TOPICS.txt" to "///RepoData/Topics/OldVersions/1/1-100/TOPICS_V1.txt"
	REST.commitTitle = "Create RepoData archive directory"
	REST.commitDesc = "Created RepoData archive directory. This action was done by @AUTOMATE-2001"
	push to "/branches/AUTOMATE-2001-RepoData-create/"
	return makePR_A()
      	break
	}
}
makePR_A () {
  raise $pr on TargetRepo with {
    pr.title "RepoData creation " + $date
    pr.body "AUTOMATE-2001 has gone ahead and generated a RepoData archive directory on [this project]($RepoName/branch) please review the changes. After you are done, please delete or rename the branch, so that this script can be ran again in the future. If you believe you received this PR by mistake, someone may have targeted your repository without GitHub application authorization. Please report the issue to GitHub."
    pr.raise
    break
  } 
}
makePR_B () {
  raise $pr on TargetRepo with {
    pr.title "RepoData creation " + $date
    pr.body "AUTOMATE-2001 has gone ahead and updated the existing RepoData archive directory on [this project]($RepoName/branch) please review the changes. After you are done, please delete or rename the branch, so that this script can be ran again in the future. If you believe you received this PR by mistake, someone may have targeted your repository without GitHub application authorization. Please report the issue to GitHub."
    pr.raise
    break
  } 
}
return check_bandwidth()
return input()
read 0
exit
break
# File info
# File type: Shell script file (*.sh)
# File version: 1 (2022 Monday, February 7th at 6:55 pm)
# Line count (Including blank lines and compiler line): 90
# End of script
