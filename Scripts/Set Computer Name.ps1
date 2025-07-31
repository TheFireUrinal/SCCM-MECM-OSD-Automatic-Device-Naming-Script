# Set computer name script by FireUrinal

#gets asset tag number
$devicefas = (Get-WmiObject -Class Win32_SystemEnclosure).SMBiosAssetTag

#sets the remainder of the device name
$classname = "ReplaceMe"

#combines $classname and $devicefas
$finalname = $classname + $devicefas

#this sets the device name during a task sequence and does not work unless in a task sequence
try {
  $tsenv = New-Object -ComObject Microsoft.SMS.TSEnvironment
  $tsenv.Value("OSDComputerName") = $finalname
  Write-Output 0
}
#this is just for testing the script to make sure the naming function works and there are no typos
catch {
  Write-Output $finalname
}
