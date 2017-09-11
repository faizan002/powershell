$full_path = "C:\tmp\"
$file_name = $full_path + "newfile.txt" 
Write-Output "Create file named: $file_name"

New-Item $file_name -ItemType file