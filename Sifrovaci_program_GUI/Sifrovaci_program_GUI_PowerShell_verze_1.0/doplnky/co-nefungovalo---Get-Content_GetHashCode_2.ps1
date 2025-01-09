cls
#Remove-Variable p1,p2,sum,file -ErrorAction SilentlyContinue

$f=""
$file=""

$file = "R:\doplnky\pokus1-convert"
# v druhym okne editovat soubor "R:\pokus1-convert" , ulozit ho a tady pak spustit znova a je to to samy ?
# i pri smazani asi 20ti radku z "R:\pokus1-convert" bylo porad 932535810
$sum = $file.GetHashCode()
echo $sum
echo $sum.Length
# porad stejny

echo "-------------------------+"

# do $f nacte celej obsah "R:\pokus1-convert" 
$f = Get-Content -Path "R:\doplnky\pokus1-convert" -Encoding String
echo $f.GetHashCode()
$d_f = $f.length
echo $d_f # delka souboru "R:\pokus1-convert"
# tohle je vdycky jiny ? i kdyz se na soubor vubec nasahalo
# pri smazani radku v pokus1convert, cislo zmeni
# pri zmene na radku napr. "z" na "c" zustava $p2 stejny ?? ( skouseno i 4 radky zmena a nic )
# zaver : nepouzitelne
Clear-Variable f
<#
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
1878331825
23
-------------------------+
35175847
30259167
9341919
2769600
25451872
16339469
60799409
65181207
24789436
63201002
2334738
65116560
63776397
30523268
57244933
14644555
53121230
6722040
60789379
47111674
63938614
43124705
21527797
23

PS C:\Users\DELL\Documents\ps1> 

#>


#sleep 15





