#Definir usuário onde deve ser realizada a busca do arquivo
$EnvVar = $Env:ProgramFiles
#Realizar a busca do arquivo, esta sendo tratado como array, caso exista mais de um, o array vai sendo populado
$Caminho = @(Get-ChildItem -Path C:\$EnvVar -Filter NRDS_debug.log -Recurse -ErrorAction SilentlyContinue -Force).FullName
$QuantidadeCaminhos = 0

if (Test-Path "C:\Users\$Usuario\Desktop\Pier.lnk")
{
    Write-Host "Arquivo ja existe!"
}
 else 
{
    while ($Caminho.count -gt $QuantidadeCaminhos) 
    {

        if (Test-Path $Caminho[$QuantidadeCaminhos]) 
        { 
            New-Item -ItemType SymbolicLink -Path "C:\users\$Usuario\Desktop\" -Name "Pier.lnk" -Value $Caminho[$QuantidadeCaminhos]
        } 
        else 
        { 
            Write-Host "Erro ainda não tratado" 
        }
    $QuantidadeCaminhos++
    }
}

#Write-Host $Caminho
#Write-Host $Caminho.count
#$AuxTrue = $True
#$AtalhoAux = New-Object -ComObject Wscript.Shell

#if ($Caminho.count -gt 1){
#    Write-Host "Existe mais de um caminho"
#} else {
#    Write-Host "Somente um caminho encontrado"
#}

#while ($Caminho.count -lt $QuantidadeCaminhos) {
#    if (Test-Path $Caminho[$QuantidadeCaminhos] -eq $True) { Write-Host "YES" } else { $QuantidadeCaminhos++ }
#}