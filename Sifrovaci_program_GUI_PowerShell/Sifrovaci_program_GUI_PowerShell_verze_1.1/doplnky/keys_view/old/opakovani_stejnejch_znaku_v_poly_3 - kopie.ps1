cls
Remove-Variable pole, x, item, x, qq, suma -ErrorAction SilentlyContinue


#$str = "QRaUJW265CKuGgQcYBbgVV4HnBDxAro4XFf8IV0EWq6MEPm29wmosHY8vuuK2j" # autoruv klic 2, radek 1

#$str = "oh44iJroszsWjbMxBEvDluLuuyYOlJ1IDAgRTQPbAlsscCSjbB6b12GLr34HUc" # autoruv klic 2, radek 2

#$str = "0F2S9ErN1b90rGfh90S8P3zjVO4zL6Sq5o1JrgW9FlmCgy4mBN2ymrTFLG5mRt" # klic 2, radek 3 

$str = "YNzN4zmTBgjR8i1LH1lkLcFwQ7zI5vjNlBlhEKqK3JXw3ypdCSmwp6KkwX7cvM" # aut klic 2, radek 4


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

