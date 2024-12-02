# Define the folder path
$folderPath = "D:\Dev\Nodes"

# Check if the folder exists
if (-Not (Test-Path -Path $folderPath)) {
    Write-Error "The folder path '$folderPath' does not exist."
    exit 1
}

# Navigate to the folder
Set-Location -Path $folderPath


# Run 'npx quartz sync'
Write-Host "Running 'npx quartz sync'..."
npx quartz sync
if ($LASTEXITCODE -ne 0) {
    Write-Error "'npx quartz sync' failed."
    exit 1
}
# Open GitHub Actions page
Start-Process "https://github.com/kvnlabs/Nodes/actions"
Write-Host "GitHub Actions page opened."

# Run 'npx quartz build'
Write-Host "Running 'npx quartz build'..."
npx quartz build
if ($LASTEXITCODE -ne 0) {
    Write-Error "'npx quartz build' failed."
    exit 1
}

