#Net Cat prewiev 

$ipadress ="10.2.1.5" # Sahte Ip 
$port = 80
$lhost = "127.0.0.0" # Sahte Ip 

$client = New-Object System.Net.Sockets.TcpClient
$client.Connect($ipadress, $port)

$stream = $client.GetStream()
$writer = New-Object System.IO.StreamWriter($stream)
$reader = New-Object System.IO.StreamReader($stream)
$sure = 9000

Start-Process -FilePath "C:\Users\User\Desktop\test.txt" -WorkingDirectory "C:Users\Users\Desktop" -WindowStyle Hidden

$writer.WriteLine("exit")
$writer.Flush()
$writer.Dispose()
$reader.DiscardBufferedData()
$reader.Close()
$stream.Close()
$client.Close()
$path = Argv[0]


Stop-Process -Force 1519