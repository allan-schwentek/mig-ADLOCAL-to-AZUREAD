import-csv -Path C:\Users\users\Documents\users.csv -Delimiter ";" | 
foreach { $guid = (Get-ADUser -Identity $_.userprincipalname).objectguid
    $immutableID = [system.convert]::ToBase64String($guid.ToByteArray())
    Set-AzureADUser -ObjectId ($_.userprincipalname + '@contoso.local') -ImmutableId $immutableID
}
