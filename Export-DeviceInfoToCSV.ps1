$info = [PSCustomObject]@{
    Manufacturer = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
    Model        = (Get-CimInstance -ClassName Win32_ComputerSystem).Model
    SerialNumber = (Get-CimInstance -ClassName Win32_BIOS).SerialNumber
}

$info | Export-Csv -Path "C:\Temp\CorporateDevices.csv" -NoTypeInformation