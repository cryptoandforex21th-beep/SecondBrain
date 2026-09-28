# Antigravity Skills One-Click Installer for Friends
# Installs Antigravity Computer Use (Indonesian Edition + Cosmic Cyan Glow)

Write-Host "✦ Installing Antigravity Custom Skills..." -ForegroundColor Cyan

$TargetDir = "$env:USERPROFILE\.gemini\config\skills"
if (!(Test-Path $TargetDir)) {
    New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null
}

$CurrentDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Copy computer-use
$CU_Source = Join-Path $CurrentDir "computer-use"
$CU_Target = Join-Path $TargetDir "computer-use"
if (Test-Path $CU_Source) {
    if (Test-Path $CU_Target) { Remove-Item -Recurse -Force $CU_Target }
    Copy-Item -Recurse -Path $CU_Source -Destination $CU_Target -Force
    Write-Host "✓ computer-use (Indonesian + Cosmic Cyan Glow) installed!" -ForegroundColor Green
}

# Copy fast-gui-orchestrator
$FGO_Source = Join-Path $CurrentDir "fast-gui-orchestrator"
$FGO_Target = Join-Path $TargetDir "fast-gui-orchestrator"
if (Test-Path $FGO_Source) {
    if (Test-Path $FGO_Target) { Remove-Item -Recurse -Force $FGO_Target }
    Copy-Item -Recurse -Path $FGO_Source -Destination $FGO_Target -Force
    Write-Host "✓ fast-gui-orchestrator (Anti-Latency Engine) installed!" -ForegroundColor Green
}

Write-Host "`n✦ Installation complete! Restart Antigravity IDE to load your new skills." -ForegroundColor Cyan
