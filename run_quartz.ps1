# Script Configuration
$folderPath = "D:\Dev\Nodes"
$blogUrl = "https://blog.kavinthangavel.tech"
$githubUrl = "https://github.com/kvnlabs/Nodes/actions"

# Helper Functions
function Validate-Npx {
    if (-Not (Get-Command "npx" -ErrorAction SilentlyContinue)) {
        Write-Host "ERROR: npx is not installed or not available in the PATH."
        exit 1
    }
}

function Check-Folder {
    param (
        [string]$path
    )
    if (-Not (Test-Path -Path $path)) {
        Write-Host "ERROR: The folder path '$path' does not exist."
        exit 1
    }
}

function Run-Command {
    param (
        [string]$command,
        [string]$successMessage,
        [string]$errorMessage
    )
    Write-Host "Executing: $command"
    Invoke-Expression $command
    if ($LASTEXITCODE -ne 0) {
        Write-Host "ERROR: $errorMessage"
        exit 1
    }
    Write-Host "$successMessage"
}

# Main script
Validate-Npx

# Check if the folder exists
Check-Folder -path $folderPath

# Navigate to the folder
Set-Location -Path $folderPath

# Run 'npx quartz build'
Run-Command -command "npx quartz build" -successMessage "'npx quartz build' completed successfully." -errorMessage "'npx quartz build' failed."

# Run 'npx quartz sync'
Run-Command -command "npx quartz sync" -successMessage "'npx quartz sync' completed successfully." -errorMessage "'npx quartz sync' failed."

# Open GitHub Actions page
Write-Host "Opening GitHub Actions page..."
$githubPage = Start-Process "msedge.exe" -ArgumentList $githubUrl -PassThru

# Wait 10 seconds for the page to load before refreshing
Start-Sleep -Seconds 10

Write-Host "Refreshing the GitHub Actions page..."
$githubPage.CloseMainWindow()
Start-Sleep -Seconds 1
$githubPage = Start-Process "msedge.exe" -ArgumentList $githubUrl -PassThru

# Open blog and reload after 40 seconds
Write-Host "Waiting 40 seconds before opening the blog site..."
Start-Sleep -Seconds 40

Write-Host "Opening blog site: $blogUrl"
$blogPage = Start-Process "msedge.exe" -ArgumentList $blogUrl -PassThru

# Wait 10 seconds for the page to load before refreshing
Start-Sleep -Seconds 10

Write-Host "Refreshing the blog site..."
$blogPage.CloseMainWindow()
Start-Sleep -Seconds 1
$blogPage = Start-Process "msedge.exe" -ArgumentList $blogUrl -PassThru

Write-Host "Process complete."
