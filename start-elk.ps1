# Define path
$elasticsearchPath = "C:\elasticsearch-8.8.2\bin\elasticsearch.bat"
$kibanaPath = "C:\kibana-8.8.2\bin\kibana.bat"
$elasticHost = "localhost"
$elasticPort = "9200"

Write-Host "Starting Elasticsearch..."
Start-Process -FilePath $elasticsearchPath

# Wait for Elasticsearch to be ready using Test-NetConnection
while ($true) {
    $connectionTest = Test-NetConnection -ComputerName $elasticHost -Port $elasticPort -WarningAction SilentlyContinue
    if ($connectionTest.TcpTestSucceeded) {
        Write-Host "Elasticsearch is ready!"
        break
    } else {
        Write-Host "Waiting for Elasticsearch to be ready..."
        Start-Sleep -Seconds 10
    }
}

# Start Kibana
Write-Host "Starting Kibana..."
Start-Process -FilePath $kibanaPath

Write-Host "Elastic Stack startup process complete!"
