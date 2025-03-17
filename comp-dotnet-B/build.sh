# dotnet tool install --global dotnet-sonarscanner
allopts="" 
for opt in $*
do
    newopt=$(echo $opt|sed 's/^-D/-d:/')
    allopts="$allopts $newopt"
done

dotnet sonarscanner begin /k:"demo:gitlab-ci-mono-dotnet-B" /n:"GitLab-CI / monorepo .Net Core B" \
    /d:"sonar.host.url=$SONAR_HOST_URL" /d:"sonar.login=$SONAR_TOKEN" $allopts
dotnet build dotnetcore-sample-B.sln
dotnet sonarscanner end /d:"sonar.login=${SONAR_TOKEN}"
