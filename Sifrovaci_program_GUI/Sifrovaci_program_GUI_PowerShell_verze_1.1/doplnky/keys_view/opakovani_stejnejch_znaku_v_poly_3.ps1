﻿cls
Remove-Variable pole, x, item, x, qq, suma -ErrorAction SilentlyContinue


#$str = "kSZxmdYmHR1UdLWRHIFIEKlOa0CBVvIXPGPyAOpcllqZfbNrFQqbEeZIS75kIL" # autor-klic-2 radek 123
#$str = "gCBRmAZoHnhNjLuymd4qItO8irbD9BftqyNsB2k1l5OzdtZV2ECzvApPUyU5iN" # autor-klic-2 radek 113
#$str = "1MxrgCaSsKkSLjYyUXpr5N4VMkcMs2c9sMWAVW7Un7gAgQsrDDKmjTFNqIaF2z" # autoruv-klic-2 - 125
$str = "9QhLDK8tyqDzDOtY1uf8gRTWe9EX0CDysUVVCb4ERQinDAwKnI8IvrOCCdyvT9" # autoruv-klic-2 - 81

echo $str.Length
$pole = $str.ToCharArray()

$x=@()
$x += $pole | Group -CaseSensitive | Where{$_.Count -gt 1} | Select-Object Count
# paklize nejni prepinac "-CaseSensitive" povazuje napr. "d" a "D" za stejnej znak !
# takze default je CaseSensitive  off
echo $pole | Group -CaseSensitive #| Select-Object Count, Group
echo $x.Length

$suma=0
if ( $x.Length -ne 0 ) {
foreach ( $item in $x ) {
#echo $item
[string] $qq = $item
echo $qq"<"

# toto odsud opraveno 20.10.2024
# a dela to ze kdyz se neco opakuje vece nezli 1x tak ostatni stejne opakovani anuluje
$qqq = [int32] $qq.Substring(8,$qq.Length -9)
if ( $qqq -gt 2 ){ 
$qqq = 2
$suma += $qqq
}else{
$suma += [int32] $qq.Substring(8,$qq.Length -9)
}
# a az sem, tady to konci 20.10.2024

}
}

echo $suma"<--stejnejch znaku v poly celkem"
sleep 20

