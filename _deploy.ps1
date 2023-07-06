$tenantId = "<tenantId>"
$subscriptionId = "<subscriptionId>"

$resourceGroup = "<resourceGroup>"
$webApp = "<webApp>"

az login --tenant $tenantId 
az account set --subscription $subscriptionId

$pyfiles = Get-ChildItem -recurse -Include approaches,data,static,app.py,langchainadapters.py,lookuptool.py,text.py,requirements.txt

Compress-Archive -Path $pyfiles  -DestinationPath .\pythonapp.zip -Force

az webapp deployment source config-zip --resource-group $resourceGroup --name $webApp --src .\pythonapp.zip --verbose