$Counter = 0
$Start = Get-Date
while ($true) {
    ($Counter ++)
    # "To infinity, and beyond! /Buz"
    if ($Counter -eq 1000000) {
        $End = Get-Date
        Break
    }
}
$TimeSpan = New-TimeSpan -Start $Start -End $End
Write-Output "$($TimeSpan.minutes):$($TimeSpan.Seconds):$($TimeSpan.Milliseconds)"