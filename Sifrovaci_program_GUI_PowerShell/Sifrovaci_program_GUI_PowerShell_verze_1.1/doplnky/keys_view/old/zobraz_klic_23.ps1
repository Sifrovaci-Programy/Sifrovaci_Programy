cls

Remove-Variable matrix,volba_klice,nazev_klice -ErrorAction SilentlyContinue

$cesta_do_adresare_keys="C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.1\keys\"

echo "zadej nazev klice z adresare"
echo "$cesta_do_adresare_keys"
echo "napr. autoruv-klic-cislo-1"
echo "?"
[string] $volba_klice = Read-Host
echo $volba_klice
$nazev_klice = $cesta_do_adresare_keys + $volba_klice
echo $nazev_klice
#exit 1

#$volba_klice="autoruv-klic-cislo-1"

$matrix=[System.Collections.ArrayList]::new()

# 23.10.2024 nove definice prazdneho matrixu ( pomoci cyklu )
# prazdny matrix 62 vodorovne a 126 svisle
for ( $aa = 0; $aa -le 125; $aa++ ) { # 0-125 radek pod sebou
#delka 72
$vv=@()
for ( $bb = 0; $bb -le 72; $bb++ ) { # 0-72 je radek
$vv+=""
}
$matrix.Add($vv) > $null
# bez > $null vypise 0-125 radek
}
# 23.10.2024 zde konec, nove definice prazdneho matrixu

$stream_reader_1 = [System.IO.StreamReader]::new($nazev_klice)

# zde nacita klic to matice
for ( $dd = 0; $dd -le 125; $dd++){
for ( $ee = 10; $ee -le 71; $ee++){
$line_read = ($stream_reader_1.ReadLine()) 

$in = ""
$in = '$matrix'
$in += "["
$in += $dd
$in += "]["
$in += $ee
$in += ']="'
$in += $matrix[$dd][$ee]
$in += $line_read
$in +='"'
#echo $in
$matrix[$dd][$ee]=$line_read
}
}
$stream_reader_1.close()
sleep 2
# matrix do souboru
cls
echo $volba_klice
echo ""

$h1="     11111111112222222222333333333344444444445555555555666666666677"
$h2="     01234567890123456789012345678901234567890123456789012345678901"
$h3="     ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo $h1
echo $h2
echo $h3

$pole_out=@()

$poc_1 = 1
# delka radku je 62 znaku
#$jeden_radek = [string] $poc_1
#$jeden_radek="000--"
$jeden_radek="000--"
for ( $ff = 0; $ff -le 125; $ff++){
for ( $gg = 10; $gg -le 71; $gg++){
$jeden_radek+=$matrix[$ff][$gg]
}
echo $jeden_radek

# zde zapis do souboru <<
#$jeden_radek=""
#$jeden_radek = [string] $poc_1
#$jeden_radek+="--"
#$poc_1++
if ( $poc_1 -lt 10 ) { 
$jeden_radek="00"
$jeden_radek+=[string]$poc_1
$jeden_radek+="--"
}
elseif ( $poc_1 -gt 9 -and $poc_1 -lt 100 ) {
$jeden_radek="0"
$jeden_radek+=[string]$poc_1
$jeden_radek+="--"
}
elseif ( $poc_1 -gt 99 ) {
$jeden_radek=""
$jeden_radek+=[string]$poc_1
$jeden_radek+="--"
}
#echo $poc_1
#echo $jeden_radek
$poc_1++
}

echo $h3
echo $h1
echo $h2


sleep 20




