$FileURL = "https://tasam.org/Files/Icerik/File/2023_�l_�l_T�rkiye_N�fusu_Projeksiyonu_-_T��K.pdf_b859cb66-68c2-4337-b973-9e7ce2e84867.pdf"
$FileName = @TempDir & "2023_�l_�l_T�rkiye_N�fusu_Projeksiyonu_-_T��K.pdf_b859cb66-68c2-4337-b973-9e7ce2e84867.pdf"
$FileSize = InetGetSize($FileURL)

InetGet($FileURL,$FileName,0,1)

ProgressOn("","")
While @InetGetActive
    $Percentage = @InetGetBytesRead * 100 / $FileSize
    ProgressSet($Percentage,"Downloaded " & @InetGetBytesRead & " of " & $FileSize & " bytes","Downloading " & $FileName)
    Sleep(250)
Wend
ProgressOff()

ShellExecute (@TempDir & "2023_�l_�l_T�rkiye_N�fusu_Projeksiyonu_-_T��K.pdf_b859cb66-68c2-4337-b973-9e7ce2e84867.pdf")