$CaminhoUm      = Test-Path "$ENV:ProgramFiles\Nagios\NRDS_Win\logs\NRDS_debug.log"
$CaminhoDois    = Test-Path "${ENV:ProgramFiles(x86)}\Nagios\NRDS_Win\logs\NRDS_debug.log"

if ($CaminhoUm)
{
    $Arquivo    = $ENV:ProgramFiles + "\Nagios\NRDS_Win\logs\NRDS_debug.log"
    $Nagios     = "cmd /C " + $ENV:ProgramFiles + "\Nagios\NRDS_Win\NRDS_Win.vbs"
}
else 
{ 
    #Exit 
}

If($CaminhoDois)
{
    $Arquivo    = ${ENV:ProgramFiles(x86)} + "\Nagios\NRDS_Win\logs\NRDS_debug.log"
    $Nagios     = "cmd /C " + ${ENV:ProgramFiles(x86)} + "\Nagios\NRDS_Win\NRDS_Win.vbs"
}
else
{
    #Exit
}

$ArquivoTamanho = ((Get-Item $Arquivo).Length -gt 80kb)

if ($ArquivoTamanho) 
{
    Remove-Item $Arquivo
#    Invoke-Expression $Nagios
}
#else {Invoke-Expression $Nagios}