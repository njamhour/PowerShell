$T = 1
$Codigo = "Invoke-Command -Computername WS-0" + $T + " -ScriptBloack {$PSVersionTable.psversion}"
do {
    Write-Host $Codigo
    $T++
} while ($T -lt 10) 
$T++
