Start-Sleep -Seconds 10

$target = "http://localhost:7001/weblogic-demo"
$verb = "GET"
$content = ""
  
$webRequest = [System.Net.WebRequest]::Create($target)
$encodedContent = [System.Text.Encoding]::UTF8.GetBytes($content)
$webRequest.Method = $verb

  
[System.Net.WebResponse] $resp = $webRequest.GetResponse();
if($resp -ne $null) 
{
    echo $resp.StatusCode;
    if($resp.StatusCode -eq "OK")
    {
        exit 0
    } 
    else
    {
        exit -1
    }
}
else
{
    exit -1
}