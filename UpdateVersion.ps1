$build= [int32](((get-date).Year-2000)*366)+(Get-Date).DayOfYear

$VersionNumber = $env:Major_Revision + '.' + $env:Minor_Revision + '.' + $build + '.' + $env:Build_Id

cd $env:workspace\$env:Git_Folder
cmd.exe /c mvn -e versions:set -DnewVersion="$VersionNumber"