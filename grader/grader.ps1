# Simple cli grader D-A in a loop
while ($true) {
    [int]$grade = Read-Host -Prompt "Grade"
    if ($grade -ge 90) {
        'Grade A'
    }
    elseif ($grade -lt 90 -and $grade -ge 75) {
        'Grade B'
    }
    elseif ($grade -lt 75 -and $grade -ge 60) {
        'Grade C'
    }
    else {
        'Grade D'
    }
}