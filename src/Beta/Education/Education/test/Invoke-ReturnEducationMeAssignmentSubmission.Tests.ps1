$TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ReturnEducationMeAssignmentSubmission.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Invoke-ReturnEducationMeAssignmentSubmission' {
    It 'Return' {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'ReturnViaIdentity' {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}