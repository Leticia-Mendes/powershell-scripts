$UsersToCreate = Import-Csv -Path "D:\PW\UsersToCreate.csv"

foreach ($item in $UsersToCreate)
{
    if ($item.DEPARTMENT -eq "EvilWizards")
    {
        "The user " + $item.NAME + " is from the " + $item.DEPARTMENT + ". Are you sure you want to create this user? (y/n)"
        $answer = Read-Host
        if ($answer -eq "y")
        { 
            $SecurePassword = ConvertTo-SecureString -String $Item.PASSWORD -AsPlainText -Force
            $UsersToCreate = New-LocalUser -Name $item.LOGONNAME -Password $SecurePassword -Description $item.DEPARTMENT
        }
        else
        {
            "Ok. We will not create " + $item.NAME 
        }
    }
    else
    {
        $SecurePassword = ConvertTo-SecureString -String $Item.PASSWORD -AsPlainText -Force
        $UsersToCreate = New-LocalUser -Name $item.LOGONNAME -Password $SecurePassword -Description $item.DEPARTMENT
    }
}
Get-LocalUser