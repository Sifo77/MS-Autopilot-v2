$computerSystem = Get-CimInstance -ClassName Win32_ComputerSystem
$bios = Get-CimInstance -ClassName Win32_BIOS

[PSCustomObject]@{
    Manufacturer = $computerSystem.Manufacturer
    Model        = $computerSystem.Model
    SerialNumber = $bios.SerialNumber
}