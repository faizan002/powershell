$src_filename = "c:\tmp\secpol1.inf"
$dst_filename = "c:\tmp\secpolu.inf"
$referencestring = '[Registry Values]'
$newline = "`n`n"
$enabledsetting = 'MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\FilterAdministratorToken=4,1'

$fullstring = $referencestring + $newline + $enabledsetting + $newline + $enabledsetting 

Write-Output $fullstring

(Get-Content $src_filename).replace($referencestring, $fullstring) | Set-Content $dst_filename
 #Add-content $filename $enabledsetting