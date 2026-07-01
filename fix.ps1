$head = Get-Content 'piocakezeles másolata (2).html' | Select-Object -First 218
$body = Get-Content '_lri.html'
$newContent = $head + $body

# We also need to fix the duplicate observer code at the end of the script!
# Wait, I already fixed it in _lri_v2.html! So I should read $body from _lri_v2.html!
$body = Get-Content '_lri_v2.html'
$newContent = $head + $body
[System.IO.File]::WriteAllLines('_lri_v2.html', $newContent, [System.Text.Encoding]::UTF8)
