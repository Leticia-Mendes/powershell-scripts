$source = "C:\Users\laraujo\Documents\docs"
$destination = "C:\Scripts\Destination"
$files = Get-ChildItem -Path $source
$exists = Test-Path -Path $destination

if ($exists -eq $false) {
    New-Item -Path $destination -ItemType 'directory'
    New-Item -Path $destination\Docs -ItemType 'directory'
    New-Item -Path $destination\Images -ItemType 'directory'
}

foreach ($file in $files) {

    if ($file.Extension -eq ".bmp" -or $file.Extension -eq ".jpg") {
        Copy-Item -Path "$source\$file" -Destination "$destination\Images"
    }
    elseif ($file.Extension -eq ".docx" -or $file.Extension -eq ".txt")  {
        Copy-Item -Path $source\$file -Destination "$destination\Docs"
    }
}
