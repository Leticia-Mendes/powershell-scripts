$NumberToGuess = Get-Random -Minimum 1 -Maximum 11
'Guess the number between 1 and 10 and I will tell you if you were right, you have 3 tries'

for ($tries=2; $tries -Gt -1; $tries--)
{
    $YourNumber = Read-host
    if ($NumberToGuess -eq $YourNumber)
    {
        'YESSSS YOU GUESSED IT! THE NUMBER IS ' + $NumberToGuess + ' and you had ' + $tries + ' tries left'
        break
    }
    elseif ($tries -eq 0)
    {
        'No, not right. You have ' + $tries + ' tries left. It was ' + $NumberToGuess
        break
    }
    elseif ($YourNumber -lt $NumberToGuess)
    {
        'That guess ' + $YourNumber + ' is too low. ' + $tries + ' tries left'
    }
    elseif ($YourNumber -gt $NumberToGuess)
    {
        'That guess ' + $YourNumber + ' is too high. ' + $tries + ' tries left'
    }
}