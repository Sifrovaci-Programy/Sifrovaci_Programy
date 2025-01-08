cls
Remove-Variable i ,ii -ErrorAction SilentlyContinue
$hesla_old=@(
"2uNxkRtbjwwiQlkRn6kB5ze56M9Q2io5Ua2WSPDRMvBMReX5p3sTNqlz9o7fWVxWZgBMLspbzG3dkIt0gIabc21jkuYjz3qbVi6zV9Gg0HYiuM90gL2dSnHTX03IYc"
"Vs94lkkrBU4rOL9bHI9WVqQVjTHUskC81IIFspfrAe0hljAo466lH8qfYBw9uUcf3AmuVDVFZpSHZP7cjAXnmeUcNZFg87MpOCpGp2WTJdwdajj3Hzz9CVbwrsjI3S"
"UEyXcug6d0yfYs9uuQOXAjX6xVrelqLmHvOciUv0npNo2xTp1u2O7Im0ZFiNdIw15NkWuwSAx8WHYstvUDiDBn605GsVsdE9GGTPO4as6WS8gbzSeLeuEuhkDrAI67"
"gJm4mV6rT5oGPn4qp1KWDve3V7eHDn9KMqbgEKREflbPaJ55wGhUunPti5Yg7Ou7rBeKvXJ1enUJsjQKvDSkbVZwC9hKhGTx0HeiO7KzM8ppDBoEZj2pjHVTkp3Sjj"
"8DF24Vajd54yCiV3ntIEineYMpYpCOL5edBAzFG8hGGjpSG9AjGrvm5nLLGUjULaRWi1LM7lrPGviIAIqEa1ccfjNQg6ikJhaunAmJa0MMniyajX2g2lY1vFvW0eQ1"
"KH4T8dkps5JKufrf3P5E2A3o1RNhp3ujUSNze0hynW0rTMcCDpGN48DF1YdRdILPgwTIqtHnDhoJtIyHu1JgxWORZVoN2g74pfdB2HQXMqOoOEzM1dGabwsqVFmE6p"
"Y4rtw5VrGtWC0ZgWHTQLnpfRjXzpNepLcVj40nm4Af1hgiXHuFbLOqLfiNyPMCfbTKab8bsUJPSvCGMIUriPsrdntGEHo1EpVxSJVr8mxLaUmaIL0R0m6zCyo8hSZs"
"HWynp0BSl5hoz5uACIenn8vyz6TxocWXMiIj2N1qGKhHcd55QDWDcsgfwAwPiQgjIoh6r1RFevJ9o8NPr9s8Iw7PJysI64mvbGHVqbodqwXAm7veShe8LrIwklmIts"
"Xi94jtyN3lWk0G9rRvKrnS7Vy6S8bqM5beu6XE00LZrb1sAUDDweqRucv8ZTRMLZTBJS2QlGr6CH3opETL3tjDHZ1GjWuc79Bn08pbZd6EOH4MoC3dYQlYso70PbhK"
"K2mAR0tRlfkbzPvXqEmITO6mEyqAhO8LEaFrHEcIniR6L45odFmubmVK2WmvABfbOPR42Zdcz7FXCEQCA8GeelLvD9YgMzAiMGQ80QRgWDX8afjs3U3MCm3u4xQImU"
)


$hesla=@()
$hesla+=$hesla_old[0]

$d_hesla_old=$hesla_old.Length

for ( $i=1; $i -le $d_hesla_old -1; $i++ ){
#echo (($i +1))
$hesla+=$hesla_old[$i]

<# nahore v poly $hesla je 10 hesel k archivum zip vse vytvoreno jednim klicem - autoruv-klic-cislo-1
   bude se testovat opakovani znaku na pozici 0,1,2,3 atd. v ruznych heslech jak jdou po sobe 
#>  

$pole_vysledky=@()

for ( $aa=0; $aa -le $hesla[0].Length -1; $aa++ ) { # delka kazdeho hesla je 0-125 znaku ( 126 zanku celkem )
$pole_jeden_sloupec_ze_vsech_hesel=@()

for ( $bb=0; $bb -le $hesla.Length -1; $bb++ ) {
$pole_jeden_sloupec_ze_vsech_hesel+=$hesla[$bb].Substring($aa,1)
}

#echo $pole_jeden_sloupec_ze_vsech_hesel
Remove-Variable pole, x, item, x, qq, suma -ErrorAction SilentlyContinue

$x=@()
#$x += $pole_jeden_sloupec_ze_vsech_hesel | Group | Where{$_.Count -gt 1} | Select-Object Count
$x += $pole_jeden_sloupec_ze_vsech_hesel | Group -CaseSensitive | Where{$_.Count -gt 1} | Select-Object Count
# paklize nejni prepinac "-CaseSensitive" povazuje napr. "d" a "D" za stejnej znak !!!
# takze default je CaseSensitive  off

<#
$suma=0
if ( $x.Length -ne 0 ) {
foreach ( $item in $x ) {
[string] $qq = $item
#echo $qq
$suma += [int32] $qq.Substring(8,$qq.Length -9)
}
}
#>

# toto odsud opraveno 20.10.2024
# a dela to ze kdyz se neco opakuje vece nezli 1x tak ostatni stejne opakovani anuluje
$suma=0
if ( $x.Length -ne 0 ) {
foreach ( $item in $x ) {
#echo $item
[string] $qq = $item
#echo $qq"<"
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

#echo $suma
$pole_vysledky+=$suma
}

$ii=(($i+1))
Write-host -ForegroundColor yellow "toto je vypis $ii pouzitich hesel vzniklych z jednoho souboru klice pod sebou:"
for ( $cc=0; $cc -le $hesla.Length -1; $cc++ ) {
echo $hesla[$cc]
}

$vysledky_string_out_1=""
$vysledky_string_out_2=""
for ( $dd=0; $dd -le $pole_vysledky.Length -1; $dd++ ) {

if ( $pole_vysledky[$dd] -lt 10 ) {
$vysledky_string_out_1 += $pole_vysledky[$dd]
} else {
$vloz_1 = [string] $pole_vysledky[$dd]
$vloz_1 = $vloz_1.Substring(0,1)
$vysledky_string_out_1+=$vloz_1 # kdy je $suma >= 10
#$vysledky_string_out_1+="1" # kdy je $suma >= 10
}

if ( $pole_vysledky[$dd] -lt 10 ) {
$vysledky_string_out_2+=" "
} else {
$vloz_2 = [string] $pole_vysledky[$dd]
$vloz_2 = $vloz_2.Substring(1,1)
$vysledky_string_out_2+=$vloz_2 # kdy je $suma >= 10
#$vysledky_string_out_2+="0" # kdy je $suma >= 10
}
}

Write-host -ForegroundColor Cyan $vysledky_string_out_1
Write-host -ForegroundColor Cyan $vysledky_string_out_2 # radek nuly pro desitky ( paklize $suma >= 10 ) jsou dva znaky uz

$total_suma=0
for ($ee=0; $ee -le $pole_vysledky.Length -1; $ee++ ) {
$total_suma+=$pole_vysledky[$ee]
}

#$procent = (291/1260).ToString("P")
$celkem_znaku_v_heslech = (( $hesla[0].Length * $hesla.Length))
$procent = ($total_suma/$celkem_znaku_v_heslech).ToString("P") # toto je specialni vypocet procent ze dvou cisel v PowerShellu
Write-host -ForegroundColor yellow "soucet vsech stejnych znaku ve vsech sloupcich je : $total_suma to je $procent procent z $celkem_znaku_v_heslech znaku celkem"

sleep 15
cls
} # for i


