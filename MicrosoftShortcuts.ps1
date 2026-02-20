<#
.SYNOPSIS
    Microsoft Portal Shortcut Toolkit
    Save this as MicrosoftShortcuts.ps1 and dotsource it in your profile:
    . .\MicrosoftShortcuts.ps1
#>

function Open-Aka {
    param([string]$Path)
    Start-Process "https://aka.ms/$Path"
}

# --- Shortcut Functions ---
function Go-Admin   { Open-Aka "admin" }
function Go-Entra   { Open-Aka "azad" }
function Go-Users   { Open-Aka "ad/users" }
function Go-Intune  { Open-Aka "in" }
function Go-Copilot { Open-Aka "copilot" }
function Go-PIM     { Open-Aka "ad/pim" }

# --- Interactive Menu ---
function Show-MSMenu {
    Clear-Host
    Write-Host "--- Microsoft Command Center ---" -ForegroundColor Cyan
    Write-Host "1. M365 Admin Center"
    Write-Host "2. Entra ID (Azure AD)"
    Write-Host "3. Intune Admin"
    Write-Host "4. Microsoft Copilot"
    Write-Host "5. Exit"
    
    $choice = Read-Host "Select an option"
    
    switch ($choice) {
        1 { Go-Admin }
        2 { Go-Entra }
        3 { Go-Intune }
        4 { Go-Copilot }
        5 { return }
    }
}

Write-Host "Microsoft Shortcuts Loaded! Type 'Show-MSMenu' for the interactive list." -ForegroundColor Green
