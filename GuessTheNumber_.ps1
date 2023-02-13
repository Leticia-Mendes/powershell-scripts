$NumberToGuess = Get-Random -Minimum 1 -Maximum 11
'Guess the number between 1 and 10 and I will tell you if you were right, you have 3 tries'
[int]$YourNumber = Read-Host
[int]$Tries = 2

while ($YourNumber -ne $NumberToGuess -and $Tries -ne 0 )
{
    if ($YourNumber -lt $NumberToGuess)
    {
        'That guess ' + $YourNumber + ' is too low. You have ' + $Tries + ' tries left'
    }
    elseif ($YourNumber -gt $NumberToGuess)
    {
        'That guess ' + $YourNumber + ' is too high. You have ' + $Tries + ' tries left'
    }
    [int]$YourNumber = Read-Host
    $Tries --
}

if ($YourNumber -eq $NumberToGuess)
{
    'YESSSS YOU GUESSED IT! THE NUMBER IS ' + $NumberToGuess + ' and you had ' + $tries + ' tries left'
} 
elseif ($Tries -eq 0)
{
    "NOOO, NOT RIGHT. You have " + $Tries + " tries left. It was " + $NumberToGuess
}
