<#
.NAME
    SD-verktyg1
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$SDTool                          = New-Object system.Windows.Forms.Form
$SDTool.ClientSize               = New-Object System.Drawing.Point(684,524)
$SDTool.text                     = "SD-Verktyg1"
$SDTool.TopMost                  = $false

$lblanv                          = New-Object system.Windows.Forms.Label
$lblanv.text                     = "Användarnamn"
$lblanv.AutoSize                 = $true
$lblanv.width                    = 25
$lblanv.height                   = 10
$lblanv.location                 = New-Object System.Drawing.Point(413,36)
$lblanv.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$lbldator                        = New-Object system.Windows.Forms.Label
$lbldator.text                   = "Datornamn"
$lbldator.AutoSize               = $true
$lbldator.width                  = 25
$lbldator.height                 = 10
$lbldator.location               = New-Object System.Drawing.Point(413,56)
$lbldator.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$lbltfn                          = New-Object system.Windows.Forms.Label
$lbltfn.text                     = "Telefon"
$lbltfn.AutoSize                 = $true
$lbltfn.width                    = 25
$lbltfn.height                   = 10
$lbltfn.location                 = New-Object System.Drawing.Point(413,77)
$lbltfn.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$lbltgl                          = New-Object system.Windows.Forms.Label
$lbltgl.text                     = "Tillgänglighet"
$lbltgl.AutoSize                 = $true
$lbltgl.width                    = 25
$lbltgl.height                   = 10
$lbltgl.location                 = New-Object System.Drawing.Point(413,99)
$lbltgl.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$lblext                          = New-Object system.Windows.Forms.Label
$lblext.text                     = "Extern/Intern"
$lblext.AutoSize                 = $true
$lblext.width                    = 25
$lblext.height                   = 10
$lblext.location                 = New-Object System.Drawing.Point(413,121)
$lblext.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label6                          = New-Object system.Windows.Forms.Label
$Label6.text                     = "Beskrivning"
$Label6.AutoSize                 = $true
$Label6.width                    = 25
$Label6.height                   = 10
$Label6.location                 = New-Object System.Drawing.Point(26,14)
$Label6.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$txtbeskrivning                  = New-Object system.Windows.Forms.TextBox
$txtbeskrivning.multiline        = $true
$txtbeskrivning.width            = 359
$txtbeskrivning.height           = 411
$txtbeskrivning.location         = New-Object System.Drawing.Point(23,49)
$txtbeskrivning.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TextBoxanv                      = New-Object system.Windows.Forms.TextBox
$TextBoxanv.multiline            = $false
$TextBoxanv.width                = 120
$TextBoxanv.height               = 20
$TextBoxanv.location             = New-Object System.Drawing.Point(520,33)
$TextBoxanv.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
# $textboxanv.GotFocus()

$TextBoxdator                    = New-Object system.Windows.Forms.TextBox
$TextBoxdator.multiline          = $false
$TextBoxdator.width              = 120
$TextBoxdator.height             = 20
$TextBoxdator.location           = New-Object System.Drawing.Point(520,53)
$TextBoxdator.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TextBoxtfn                      = New-Object system.Windows.Forms.TextBox
$TextBoxtfn.multiline            = $false
$TextBoxtfn.width                = 120
$TextBoxtfn.height               = 20
$TextBoxtfn.location             = New-Object System.Drawing.Point(520,75)
$TextBoxtfn.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TextBoxtillg                    = New-Object system.Windows.Forms.TextBox
$TextBoxtillg.multiline          = $false
$TextBoxtillg.width              = 120
$TextBoxtillg.height             = 20
$TextBoxtillg.location           = New-Object System.Drawing.Point(520,96)
$TextBoxtillg.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TextBoxext                      = New-Object system.Windows.Forms.TextBox
$TextBoxext.multiline            = $false
$TextBoxext.width                = 120
$TextBoxext.height               = 20
$TextBoxext.location             = New-Object System.Drawing.Point(520,117)
$TextBoxext.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


$btncopy                         = New-Object system.Windows.Forms.Button
$btncopy.text                    = "Copy"
$btncopy.width                   = 114
$btncopy.height                  = 39
$btncopy.location                = New-Object System.Drawing.Point(548,478)
$btncopy.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$btnclear                        = New-Object system.Windows.Forms.Button
$btnclear.text                   = "Clear all"
$btnclear.width                  = 114
$btnclear.height                 = 39
$btnclear.location               = New-Object System.Drawing.Point(26,478)
$btnclear.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


# Ordning för TAB knappen
# //TODO: Fix this row
$txtbeskrivning.TabIndex=1
$TextBoxanv.TabIndex=2
$TextBoxdator.TabIndex=3
$TextBoxtfn.TabIndex=4
$TextBoxtillg.TabIndex=5
$TextBoxext.TabIndex=6
$btnclear.TabIndex=7
$btncopy.TabIndex=8

# För att markera all text i boxar WIP skiten funkar inte


$SDTool.controls.AddRange(@($btncopy,$btnclear,$lblanv,$lbldator,$lbltfn,$lbltgl,$lblext,$Label6,$TextBoxanv,$TextBoxdator,$TextBoxtfn,$TextBoxtillg,$TextBoxext,$txtbeskrivning))

$SDTool.Add_Activated({  })
$btncopy.Add_Click({ btncopy_Click })
$btnclear.Add_Click({ btnclear_Click })

#region Logic
function btnclear_Click {
$txtbeskrivning.Clear()
$TextBoxanv.Clear()
$TextBoxdator.Clear()
$TextBoxtfn.Clear()
$TextBoxtillg.Clear()
$Textboxext.Clear()
}
function btncopy_Click {

# Create temp file for output
$tempfile = [IO.Path]::GetTempFileName()

# Add rich_textbox data in temp file
$txtbeskrivning.text|Add-Content $tempFile

# Add blank line to file
"`n"|Add-Content $tempFile

# Add rich_textbox data in temp file
"********************************"|Add-Content $tempFile

# Add blank line to file
"`n"|Add-Content $tempFile


# Addera användarnamn boxens data till fil
"Användarnamn: $($textBoxanv.text)"|Add-Content $tempFile

# Addera dator boxens data till fil
"Datornamn: $($textboxdator.text)"|Add-Content $tempFile

# Addera Telefon boxens data till fil
"Telefon: $($TextBoxtfn.text)"|Add-Content $tempFile

# Addera tillgänglighets boxens data till fil
"Tillgänglighet: $($TextBoxtillg.text)"|Add-Content $tempFile

# Addera extern/intern boxens data till fil
"Extern/Intern: $($TextBoxext.text)"|Add-content $tempfile





Get-Content $tempFile|Set-Clipboard



 }

#endregion

[void]$SDTool.ShowDialog()