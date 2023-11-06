function SwitchOnQueryStore {
    [CmdletBinding()]
    param (
        [string]$SqlServerName = (Read-Host "Enter SQL Server instance name")  # Prompt user for SQL Server instance name
    )

    try {
        $SqlServer = New-Object Microsoft.SqlServer.Management.Smo.Server($SqlServerName)

        foreach ($Database in ($SqlServer.Databases | Where-Object { $_.owner -eq [System.Security.Principal.WindowsIdentity]::GetCurrent().Name })) {
            $DatabaseName = $Database.Name

            if (-not (Get-Module -Name "sqlserver")) {
                Import-Module sqlserver -Verbose
            }

            Invoke-Sqlcmd -ServerInstance $SqlServerName -Query ("ALTER DATABASE $DatabaseName SET QUERY_STORE = ON (OPERATION_MODE = READ_WRITE)") -Verbose
        }
    }
    catch {
        Write-Error "Error occurred: $_" -ForegroundColor Red
    }
}
