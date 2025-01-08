cls

# tady menit kterej klic se nacte z adresare keys/
#$nazev_klice="C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.1\keys\novej_1"
$nazev_klice="C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.1\keys\autoruv-klic-cislo-1"
#$nazev_klice="C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.1\keys\autoruv-klic-cislo-2"
#$nazev_klice="C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.1\keys\autoruv-klic-cislo-3"

# Remove-Variable matrix, nazev_klice -ErrorAction SilentlyContinue
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
sleep 1
# matrix do souboru
#exit 

$h1="11111111112222222222333333333344444444445555555555566666666667"
$h2="01234567890123456789012345678901234567890123456789012345678901"
$h3="||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo $h1
echo $h2
echo $h3
#echo ""
# dela radku je 62 znaku
$jeden_radek=""
for ( $ff = 0; $ff -le 125; $ff++){
#if ( $ff -eq 0 ) { $jeden_radek=""}
for ( $gg = 10; $gg -le 71; $gg++){
#echo "$ff $gg"
#echo $matrix[$ff][$gg]
#$zz=$matrix[$ff][$gg]
#echo $zz
$jeden_radek+=$matrix[$ff][$gg]
}
#echo "-----------------------------"
echo $jeden_radek
# zde zapis do souboru <<
$jeden_radek=""


}

#echo ""
echo $h3
echo $h1
echo $h2






