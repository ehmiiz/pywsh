# password generator

[CmdletBinding()]
Param
(
    
    [Parameter(Mandatory = $true,
        ValueFromPipelineByPropertyName = $true,
        Position = 0)]
    [ValidateRange(6, 30)]
    [int32]$PwLength,
    [Parameter(Mandatory = $false)]
    [int32]$Amount = 1
)

Begin {
    $Password = @()
}
Process {

    $PwdValues = "-!@#$%^&*_{}()?0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    do {

        $PasswordGenerated = ($PwdValues.ToCharArray() | Sort-Object { Get-Random })[1..$PwLength] -join ''

        # Regex rules, contains any of the special AND 0-9 AND upper/lower
        if (
            $PasswordGenerated -match "[-!@#$%^&*_{}()?]" -and 
            $PasswordGenerated -match "(?-i)[A-Z]" -and 
            $PasswordGenerated -match "(?-i)[a-z]" -and 
            $PasswordGenerated -match "[0-9]"
        ) {
            # Add to pw array
            $Password += $PasswordGenerated
        }
        else {
            Continue
        }
    }
    until ($Password.count -eq $Amount)
}
End {
    $Password
}
