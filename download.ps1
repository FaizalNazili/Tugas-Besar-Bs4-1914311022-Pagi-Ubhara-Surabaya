cd D:\Tugas-Besar-Bs4-1914311022-Pagi-Ubhara-Surabaya\soundfile

$list = Get-Content D:\Tugas-Besar-Bs4-1914311022-Pagi-Ubhara-Surabaya\link.txt

$clnt = New-Object System.Net.WebClient

foreach($url in $list) 
{ 

	#Get the filename 
	$filename = [System.IO.Path]::GetFileName($url) 

	#Create the output path 
	$file = [System.IO.Path]::Combine($pwd.Path, $filename) 

	Write-Host -NoNewline "Mengunduh ""$url""... "

	#Download the file using the WebClient 
	$clnt.DownloadFile($url, $file) 

	Write-Host "Selesai!." 
}