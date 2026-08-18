# Sincronização automática com o GitHub
# Fica rodando em segundo plano: a cada 60 segundos, se algum arquivo do sistema
# mudou (adicionado, alterado ou removido), faz commit e envia para o GitHub.
$ErrorActionPreference = 'Continue'
Set-Location -Path $PSScriptRoot

Write-Host "Sincronizacao automatica com o GitHub iniciada." -ForegroundColor Green
Write-Host "Pasta: $PSScriptRoot"
Write-Host "Deixe esta janela aberta (pode minimizar). Para parar, feche a janela."
Write-Host ""

while ($true) {
    $mudancas = git status --porcelain
    if ($mudancas) {
        $agora = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
        git add -A | Out-Null
        git commit -m "Atualizacao automatica - $agora" | Out-Null
        $temRemoto = git remote
        if ($temRemoto) {
            git push 2>&1 | Out-Null
            if ($LASTEXITCODE -eq 0) {
                Write-Host "[$agora] Mudancas enviadas para o GitHub." -ForegroundColor Green
            } else {
                Write-Host "[$agora] Commit feito, mas o envio falhou (sem internet ou sem login). Tentarei de novo." -ForegroundColor Yellow
            }
        } else {
            Write-Host "[$agora] Commit feito localmente. (Nenhum repositorio GitHub configurado ainda.)" -ForegroundColor Yellow
        }
    }
    Start-Sleep -Seconds 60
}
