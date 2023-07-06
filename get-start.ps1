$tenantId = "<tenantId>"
$subscriptionId = "<subscriptionId>"

azd login --tenant-id $tenantId

azd config set defaults.subscription $subscriptionId   