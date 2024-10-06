
# Check if the drive letter is already in use
if (!(Test-Path "S:")) {
    # Create a network connection
    net use S: \\192.168.168.5\Scans /user:dtc_readwrite "Dw}h^IJX}*reu]J&1" /persistent:yes
} else {
    Write-Host "Drive $driveLetter is already mapped."
}
