# mig-ADLOCAL-to-AZUREAD
Atualiza / substituiu os IMMUTABLEID do azure para o qual o relacionado ao usuario local

# How to Disable Azure AD Synchronization
1. Install the Azure AD module
   - Open an elevated Windows PowerShell command and run the following command.
   - `Install-Module MSOnline`
2. Connect to Azure AD
   - `Connect-MsolService`
3. Check Current Sync Status (true or false)
   - `(Get-MSOLCompanyInformation).DirectorySynchronizationEnabled`
4. Disable Azure AD Sync
   - `Set-MsolDirSyncEnabled -EnableDirSync $false`
   - If you want to turn synchronization back on run this command.
   - `Set-MsolDirSyncEnabled -EnableDirSync $true`
