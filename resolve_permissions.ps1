# Check if a filename was provided as an argument
if ($args.Length -eq 0) {
    $path = Read-Host "Enter the filename (including extension):"
} else {
    $path = $args[0]
}

# Reset to remove explicit permissions
icacls.exe $path /reset

# Get current username
$currentUsername = whoami

# Give current user explicit read permission
icacls.exe $path /grant:r "$($currentUsername):(R)"

# Disable inheritance and remove inherited permissions
icacls.exe $path /inheritance:r
