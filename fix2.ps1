$head = Get-Content 'piocakezeles.html' -Encoding UTF8 | Select-Object -First 195
$body = Get-Content '_lri_v2.html' -Encoding UTF8
$newContent = $head + $body
[System.IO.File]::WriteAllLines('C:\xampp\htdocs\2026\Kriszihonlap\_lri_v2.html', $newContent, [System.Text.Encoding]::UTF8)
