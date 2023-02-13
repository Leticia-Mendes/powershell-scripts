"Name the service you want to stop/start"
$Name = Read-Host

$ServiceObject = Get-Service -Name $Name 

if ($ServiceObject.Status -eq "Running")
{
    $ServiceObject.Name + " is Running"
    "Do you want to stop the " + $ServiceObject.Name + " service? (y/n)"
    $Answer = Read-Host
    if ($Answer -eq "y")
    {
        Stop-Service -Name $ServiceObject.Name
        $ServiceObject
        $ServiceObject.Name + " was stopped"
    }
    else
    {
        'Ok'
    }
}
else
{
    $ServiceObject.Name + " isn't Running"
    'Do you want to start the ' + $ServiceObject.Name + ' ? y/n'
    $Answer = Read-Host
    if ($Answer -eq "y")
    {
        Start-Service -Name $Name
        $ServiceObject
        $ServiceObject.Name + " was started"
    }
    else
    {
        "Ok"
    }
}
