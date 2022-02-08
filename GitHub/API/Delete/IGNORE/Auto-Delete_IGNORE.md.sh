#!/bin/sh
# Start of script
# Auto-deleting IGNORE.md files
# This is mainly pseudocode right now, and is not functional
check_bandwidth () {
  $///Repo/bandwidth_band/Automation/GitHub/Bandwidth_Check/.sh
  return 0;
  break
}
exd () {
  echo "AUTOMATE-2001 will end the Delete IGNORE.md process in 10 seconds"
  wait(10)
  exit
  break
}
input () {
  echo "AUTOMATE-2001\nDeleting IGNORE.md files\nWhich repository would you like to clean:"
  read "RepoName: "
  echo "You entered: " + $RepoName + " AUTOMATE-2001 will delete all lone IGNORE.md files, and will send a pull request when done"
  set Targetrepo to $RepoName
  return scopeOut()
  break
}
scopeOut () {
  read "/" for "/" > 2 files on TargetRepo
  if "/" contains "IGNORE.md" or "IGNORE.Md" or "IGNORE.MD" and fileCount > 2 {
    start.commit () {
      rename target to ("IGNORE.md")
      delete target ("IGNORE.md")
      REST.commitTitle = "Deleted IGNORE.md file"
      REST.commitDesc = "Deleted by AUTOMATE-2001"
      push to "/branches/AUTOMATE-2001-Delete-IGNORE/"
      return scopeOut()
      break
    } fi else {
      echo "File not found, either no files exist, or AUTOMATE-2001 has successfully done its job"
      return exd
      break
    }
  }
}
makePR () {
  raise $pr on TargetRepo with {
    pr.title "IGNORE.md file deletion on " + $date
    pr.body "AUTOMATE-2001 has gone ahead and deleted all the lonely IGNORE.md files on [this project]($RepoName/branch) please review the changes. After you are done, please delete or rename the branch, so that this script can be ran again in the future. If you believe you received this PR by mistake, someone may have targeted your repository without GitHub application authorization. Please report the issue to GitHub."
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
# File version: 1 (2022 Monday, February 7th at 4:18 pm)
# Line count (Including blank lines and compiler line): 60
# End of script
