[Byte[]]$msg= Get-Content sc_x64.bin -Encoding byte
[Byte[]]$output
foreach( $temp in $msg)
{
$output+="0x{0:X2}," -f $temp
} 
$msg=$output

Write-Host $output
Set-Content -Path payload.txt -Value $output