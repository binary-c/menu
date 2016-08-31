#/bin/bash
echo "NAME:Submit Changes to SVN"
echo "FUNCTION: Submits changes to SVN"
echo "VERSION:0"
echo "HACKS:Relies on current folder being SVN working dir"
echo "ISSUES: ONLY DOES COMMIT DOES NOT ADD NEW FILES OR DO DELETES"
svn commit 
