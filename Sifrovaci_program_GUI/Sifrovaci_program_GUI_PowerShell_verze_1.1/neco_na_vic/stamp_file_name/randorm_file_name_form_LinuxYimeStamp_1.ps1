﻿cls

#for ($aa = -3; $aa -le -1; $aa++ ) { echo $aa }
#exit 1


#odpovida naprosto presne jako v linuxu, viz screenshot
[string] $stamp = [DateTimeOffset]::Now.ToUnixTimeseconds()
echo $stamp

$d_stamp = $stamp.Length
#echo $d_stamp"<"
#echo $d_stamp.GetTypeCode()

$nazev_bat=""

for ($aa = 4; $aa -ge 1; $aa-- ){
$cast_stamp_int = 97
#echo $aa
#echo $aa.GetTypeCode()

$cast_stamp=$stamp.Substring( ($d_stamp -$aa), 1)
echo $cast_stamp
#echo $cast_stamp.GetTypeCode()
#echo $stamp.Substring($d_stamp -$aa,1)
#echo $cast_stamp
$cast_stamp_int += [int32] $cast_stamp
#echo $cast_stamp_int

$nazev_bat += [char] $cast_stamp_int
}

echo $nazev_bat"<"
# a = 97 - z = 122
$rnd_znak = Get-Random -Minimum 97 -Maximum 122
echo $rnd_znak
echo $rnd_znak.GetTypeCode()
$nazev_bat += [char] $rnd_znak
echo $nazev_bat"<<"
#echo $nazev_bat.GetTypeCode()
$nazev_bat += ".bat"
echo $nazev_bat"<<<"




