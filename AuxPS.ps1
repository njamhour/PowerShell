###############################################
##### Comandos Auxiliares para Powershell #####
###############################################
do
{
    $Escolha = Read-Host -Prompt "Escolha:"
    #Write-Host "Digite:"
    #Read-Host $Escolha
    switch($Escolha)
    {
        1{Write-Host "Teste1"}
        2{Write-Host "Teste2"}
        3{Write-Host "Teste3"}
        6{Write-Host "Sair"}
        default {Write-Host "Opção Invalida"}
    }

} while ($Escolha -ne 6)