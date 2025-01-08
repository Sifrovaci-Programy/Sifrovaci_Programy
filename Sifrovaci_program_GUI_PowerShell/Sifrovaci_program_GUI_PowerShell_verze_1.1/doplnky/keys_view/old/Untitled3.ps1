cls
$poc_1 = 0

for ($i = 0; $i -lt 125; $i++){ 
    
# delka radku je 62 znaku
#$jeden_radek = [string] $poc_1

if ( $poc_1 -lt 10 ) { 
$jeden_radek="00"
$jeden_radek+=[string]$poc_1
}
elseif (( $poc_1 -gt 9) -and ($poc_1 -lt 99 )) {
$jeden_radek="0"
$jeden_radek+=[string]$poc_1
}
elseif ( $poc_1 -gt 100 ) {
$jeden_radek=""
$jeden_radek+=[string]$poc_1
}
#echo $poc_1
echo $jeden_radek
$poc_1++
}

echo $poc_1




