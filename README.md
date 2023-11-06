# PowerShell Script: SwitchOnQueryStore

This PowerShell script, named `SwitchOnQueryStore`, is designed to enable Query Store for databases on a specified SQL Server instance.

## Description

The script prompts the user to enter the SQL Server instance name, then iterates through user-owned databases on that instance, enabling Query Store with operational mode set to `READ_WRITE`. It handles potential errors and displays relevant error messages.

## Usage

1. **Run the Script:**
    - Execute the script `SwitchOnQueryStore.ps1`.
  
2. **Enter SQL Server Instance Name:**
    - The script will prompt you to enter the SQL Server instance name.

3. **Enable Query Store:**
    - The script will enable Query Store for user-owned databases on the specified SQL Server instance.
  
### Example Usage:

```powershell
# Example 1: Run the script and enable Query Store on the default SQL Server instance
.\SwitchOnQueryStore.ps1

# Example 2: Enable Query Store on a specific SQL Server instance
.\SwitchOnQueryStore.ps1 -SqlServerName "MySqlServer"
```

## Functionality

- **Function: SwitchOnQueryStore**
  - Prompts user for SQL Server instance name.
  - Iterates through user-owned databases.
  - Enables Query Store with operational mode set to `READ_WRITE`.

- **Error Handling:**
  - The script includes error handling with a red error message if an issue occurs.

## Notes

- Ensure that the `sqlserver` module is imported for proper functionality.

