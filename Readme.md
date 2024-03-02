## Windows SSH Private Key Permission Issue Resolver

This script is designed to resolve permission issues encountered while attempting to SSH into Cloud instances(like AWS) on Windows. The error message "WARNING: UNPROTECTED PRIVATE KEY FILE!" typically arises due to incorrect file permissions on the private key file.

### Prerequisites

- PowerShell
- Administrative privileges may be required depending on the file's location

### Usage

1. Ensure that PowerShell is open.
2. Run the script either by providing the filename as an argument or by entering the filename (including extension) when prompted.

```powershell
.\resolve_permissions.ps1 [filename]
```

3. If no filename is provided, the script will prompt you to enter it.

### Script Functionality

1. **Check for Filename**: Checks if a filename is provided as an argument. If not, prompts the user to enter it.
2. **Reset Permissions**: Resets permissions on the specified file to remove any explicit permissions.
3. **Grant Read Permission**: Grants the current user explicit read permission on the file.
4. **Disable Inheritance**: Disables inheritance and removes inherited permissions on the file.

### Note

- Ensure that the AWS private key file (e.g., `file.pem`) is specified correctly.
- This script should be executed in the directory where the private key file is located or provide the full path to the file.
- Administrative privileges may be necessary to execute some commands depending on the file's location.
- In Linux, you can typically resolve permission issues for SSH private key files using the `chmod` command to adjust the file's permissions. Here's a simple solution:

```bash
chmod 600 file.pem
```

Replace `file.pem` with the name of your SSH private key file. This command sets the file permissions to allow read and write access only for the owner (typically your user), and no access for anyone else. This should address the "bad permissions" issue when attempting to SSH into AWS instances.

### Disclaimer

Use this script at your own risk. Ensure that you understand the implications of modifying permissions on sensitive files. Always backup important files before making changes.
