# Define network path and drive letter
$networkPath = "\\192.168.168.5\Scans"
$driveLetter = "S:"

# Define credentials
$username = "dtc_readwrite"  # Replace with your domain and username
$password = "Dw}h^IJX}*reu]J&1"       # Replace with your password
$securePassword = ConvertTo-SecureString $password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($username, $securePassword)

# Check if the drive letter is already in use
if (!(Test-Path $driveLetter)) {
    # Create a network connection
    New-PSDrive -Name "S" -PSProvider FileSystem -Root $networkPath -Credential $credential -Persist
} else {
    Write-Host "Drive $driveLetter is already mapped."
}
