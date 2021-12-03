function Invoke-Query {
    param(
        [string] $dataSource = "***",
        [string] $database = "***",
        [string] $sqlCommand = $(Get-Content -Path ***.sql)
      )

    $connectionString = "Data Source=$dataSource; " +
            "Integrated Security=SSPI; " +
            "Initial Catalog=$database"

    $connection = new-object system.data.SqlClient.SQLConnection($connectionString)
    $command = new-object system.data.sqlclient.sqlcommand($sqlCommand,$connection)
    $connection.Open()
    
    $adapter = New-Object System.Data.sqlclient.sqlDataAdapter $command
    $dataset = New-Object System.Data.DataSet
    $adapter.Fill($dataSet) | Out-Null
    
    $connection.Close()
    $dataSet.Tables | Format-Table
}
