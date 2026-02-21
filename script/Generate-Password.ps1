# Generate-Password.ps1
# Simple PowerShell password generator

param(
    [int]$Length = 12
)

$chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*'
$password = -join ((1..$Length) | ForEach-Object { $chars[(Get-Random -Minimum 0 -Maximum $chars.Length)] })

Write-Host "Generated password: $password"