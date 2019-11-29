param($Timer)

$vNet = Get-AzVirtualNetwork -Name $env:BASTION_VNET_NAME -ResourceGroupName $env:BASTION_VNET_RG
$pip = Get-AzPublicIpAddress -Name $env:BASTION_PIP_NAME -ResourceGroupName $env:BASTION_PIP_RG

New-AzBastion -Name $env:BASTION_NAME -ResourceGroupName $env:BASTION_RG -VirtualNetwork $vNet -PublicIpAddress $pip -AsJob