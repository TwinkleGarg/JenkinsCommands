cd %WORKSPACE%/%Git_Folder%
git clone https://github.com/%Git_User%/%Git_Repository%.git .
git checkout .
git pull 
git submodule add -b %Devops_Branch% https://github.com/%Git_User%/%Devops_Repository%.git %Devops_Folder%
git submodule update --recursive
git submodule foreach git pull orgin %Devops_Branch%
git clone 
exit 0