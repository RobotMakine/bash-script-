#!/bin/bash 
# boşluk bırakmaya özen gösterilmelidir 
#system veriable
# echo $BASH
# echo $BASH_VERSION
# echo $HOME
# echo $PWD

#user veriable
# ad=samo
# yas=28
# echo $ad
# echo $yas

# echo "isminiz"
# read isim #input görevi görüyor
# echo "ismim $isim"

# echo "isimler :"
# read isim1 isim2 isim3
# echo "isimler : $isim1, $isim2 , $isim3"

# read -p 'isminiz :' isim 
# read -sp 'password:' password #Şifreyi gizleme parametresi
# echo
# echo "isiminiz : $isim"
# echo "password: $password"

# echo "isiminiz:"
# read
# echo "isminiz $REPLY" #DEĞİŞKEN ATAMADAN ÇIKTI ALMA

# echo "isimler:"
# read -a isimler #Liste Arguman
# echo "isimler ${isimler[0]},${isimler[1]},${isimler[2]}"

#ARGUMANLAR

#echo $0 $1 $2 $3 $4  #$0 ifadesi klasörün ismini verir
#echo $@ #tüm değişkenleri yazdırır Neyi başta yazarsak o 0 . indexi alır
#echo $# #kaç tane eleman varsa onun sayısını gösterir

# echo $* #elemanların hepsini gösterir

# dizi=("$@") #tek tek dizi gibi index tutar sadede kullanılabilir
# echo ${dizi[0]},${dizi[3]}

# echo $*
# dizi1=("$*")
# echo ${dizi1[2]}

# sayılarda if elif ve else  kullanımı
# sayi=10111
# if (( $sayi==10 ))
# then 
# echo "doğru"
# elif (( $sayi <= 110 ))
# then
# echo "yanlış"
# else 
# echo "koşol sağlanamadı"
# fi

# harflerde if elif else kullanımı 
# ad="mo"
# if [[ $ad == "samo" ]]
# then 
# echo "hoşgeldin"
# elif [[ $ad == "Samo" ]]
# then
# echo "ilk harf büyük"
# else 
# echo "tanımlanamadı"
# fi

# AND ve OR Kullanımı

#AND Kullanımı # iki durum sağlanmıyorsa if çalışmaz AND işlemi bu mantıkla çalışır
# ad="samo"
# sayi=15
# if [[ $ad == "samo" && $sayi == 15 ]]
# then
# echo "selam"
# else 
# echo "geçersiz"
# fi

# OR Kullanımı #iki durumdan biri çalışır ise if çalışır OR işlemi bu mantıkla çalışır
# ad="samo"
# sayi=20
# if [[ $ad == "samo" || $sayi==22 ]]
# then 
# echo "Doğrulandı"
# else
# echo "doğrulanamadı"
# fi

# Aritmetik işlemler

#echo $(( 10*20 )) #tek parantez ile kullanılmaz

# sayi1=10
# sayi2=5
# echo $( expr $sayi1 + $sayi2 )
# echo $( expr $sayi1 \* $sayi2 ) #çarpma işlemi böyle kullanılır
# echo $( expr $sayi1 - $sayi2 )
# echo $( expr $sayi1 / $sayi2 )
# echo $( expr $sayi1 % $sayi2 )
# echo $(( sayi1 + sayi2 ))
# echo $(( sayi1 * sayi2 ))
# echo $(( sayi1 - sayi2 ))
# echo $(( sayi1 / sayi2 ))
# echo $(( sayi1 % sayi2 ))
# echo $( expr $sayi1 + $sayi2 ) farklı kullanım

#ondalıklı sayılar ile işlemler 
# sayi1=20.5
# sayi2=5
# echo "20.5+5" | bc #bc hesaplama dili
# echo "20.5%5" | bc
# echo "20.5/5" | bc
# echo "20.5*5" | bc
# echo "20.5-5" | bc
# echo "scale=2;$sayi1/$sayi2" | bc
# echo "scale=2;20.5/5" | bc
# echo "$sayi1+$sayi2" | bc

# #karakök alma işlemi
# echo "scale=2; sqrt($sayi2)" | bc -l

#küp alma işlemi
# echo "scale=2; $sayi2^3" | bc -l

#dosya işlemleri

# echo -e "Dosya ismi giriniz:\c" #e ifadesi yanına yazar
# read DosyaMevcutmu
# if [ -e $DosyaMevcutmu ]
# then 
# echo "dosya bulundu"
# else 
# echo "dosya bulunamadı"
# fi

# echo -e "Dosya ismi giriniz:\c" #e ifadesi yanına yazar
# read DosyaMevcutmu
# if [ -s $DosyaMevcutmu ] #-s ifadesi dolumu boşmu olduğuna bakar
# then 
# echo "boş"
# else 
# echo "dolu"
# fi


# echo -e "Dosya ismi giriniz:\c" #e ifadesi yanına yazar \c ifadesi ile birlikte kullanılır 
# read DosyaMevcutmu
# if [ -w $DosyaMevcutmu ] #-w ifadesi dosya yazılıp yazılamadığına kontrol eder
# then 
# echo "yazılabilir "
# else 
# echo "yazılamaz"
# fi

# echo -e "Dosya ismi giriniz:\c" #e ifadesi yanına yazar
# read DosyaMevcutmu
# if [ -f $DosyaMevcutmu ] #-f  ifadesi dosya düzenli olup olmadığını kontrol eder
# then 
# echo "$DosyaMevcutmu düzenli"
# else 
# echo "$DosyaMevcutmu düzensiz"
# fi


# echo -e "Dosya ismi giriniz:\c" #e ifadesi yanına yazar
# read DosyaMevcutmu
# if [ -d $DosyaMevcutmu ] #-d  ifadesi klasör olup olmadığını kontrol eder
# then 
# echo "$DosyaMevcutmu klasör"
# else 
# echo "$DosyaMevcutmu klasör değil"
# fi

#DOSYA İÇERİSİNE METİN EKLEME 

# echo -e "Dosya ismi giriniz:\c" #e ifadesi yanına yazar
# read Dosyaismi
# if [ -f $Dosyaismi ]
# then
#     if [ -w $Dosyaismi ]
#     then
#         echo "Dosya yazılabilir Ctrl+d Tuşlarına basarak çıkabilirsiniz"
#         cat >> $Dosyaismi
#     else    
#     echo "dosya yazılabilir değil"
#     fi 
# else
#     echo "dosya mevcut değil"    
# fi         

# SwitchCase

# echo -e "bir arac giriniz" 
# read arac
# case $arac in
#     "araba" )
#     echo "$arac 200 tl'ye kiralabır";;
#     "Motorsiklet" )
#     echo "$arac 100 tl'ye kiralanır ";;
#     "bisiklet" )
#     echo "$arac 50 tl'ye kiralanır";;
#     * )
#     echo "$arac kiralık değil";;
# esac     

# echo -e "bir karakter giriniz:\c"
# read karakter 
# case $karakter in
#     [a-z] )
#     echo "$karakter bir karakterdir";;
#     [1-9] )
#     echo "$karakter bir sayıdır ";;
#     ? ) #özel karakter
#     echo "$karakter bir özel karakterdir";;
#     * )
#     echo "hatalı işlem"
# esac

# DİZİLER

# OS=( 'linux' 'windows' 'unix' )
# echo "${OS[@]}" # @ işareti dizinin tüm elemanlarını gösterir
# echo "${OS[2]}" #unix yazacaktır
# echo "${!OS[@]}" #tüm dizinin index numaralarını gösterir
# echo "${#OS[@]}" #tüm dizi eleman sayısını gösterir
# OS[3]="MacOs" #Diziye eleman eker
# echo "${OS[@]}"
# unset OS[1] #diziden eleman silmek için kullanılır
# echo "${OS[@]}"
# echo "${!OS[@]}"

#WHİLE DÖNGÜSÜ KULLANIMI

# i=1

# while [ $i -le 4 ] 
# do  
#     echo $i 
#     ((++i)) #((i++)) i=$((i+1)) veya ((++i)) şeklinde kullanılabilir 
#     sleep 1 #bir saniye bekler Sleep'in kullanımı
#     # gnome-terminal # her sayıda 1 terminal açar
    
# done    

#FOR DÖNGÜSÜ KULLANIMI

# for (( i=0;i<=5;i++ )) 1. Kullanım bu şekilde
# do
#     echo "$i"
# done

# for i in 1 2 3 4 5 #2. kullanım
# do 
#     echo "$i"
# done    

# for i in ls pwd #3.KULLANIM
# do 
#     echo "-------------$i-----------"
#     $i
#     echo
# done     

# for i in {1..10} #BASH SCRİPT'E ÖZEL KULLANIM
# do
#     echo "$i"
# done


# for i in {1..10..2} #ARTIŞ MİKTARI BELİTİLEBİLİR
# do
#     echo "$i"
# done    

#SELECT DÖNGÜSÜ

# select iller in Ankara izmir istanbul
# do
#     case $iller in
#     Ankara )
#     echo "Ankara Seçildi";;
#     izmir )
#     echo "izmir seçildi";;
#     istanbul )
#     echo "istanbul seçildi";;
#     * )
#     echo "il seçilmedi";;
#     esac
# done         

#BREAK, CONTİNUE  KULLANIMI

# for ((i=0;i<=10;i++))
# do 
#     if [ $i -gt 5 ]
#     then 
#     break  #dögüyü bitirir
#     fi
#     echo "$i"
# done

# for ((i=0;i<=10;i++))
# do 
#     if [ $i -eq 2 -o $i -eq 6 ]      #if (($i==2||$i==6))
#     then 
#     continue
#     fi
#     echo "$i"
# done

#UNTİL KULLANIMI                         #E KADAR DEMEKTİR

# i=1

# until [ $i -ge 100 ] #5 e kadar yazdır # until (($i >= 10))
# do
#     echo "$i"
#     ((i++))
# done
 
# FONKSİYONLAR #komutu tekrar tekrar yazmamızı engeller

# function Merhaba()
# {
#     echo "hello"
# }
# cikis()
# {
#     exit
# }
# Merhaba
# echo "test"
# cikis

# echo -e "bir sayı giriniz:\c "
# read sayi
# function Karehesapla()
# {
#     echo "sayının karesi $((sayi*sayi))"
# }
# Karehesapla

# function Enter()
# {
#     echo $1 $2 $3
# }
# Enter ahmet 2 3 

#LOCAL VE GLOBAL DEĞİŞKEN FARKLARI

# function enter()
# {
#     local isim=$1 #LOCAL DEĞİŞKEN SADECE KENDİ FONKSİYONU İÇİNDE ÇALIŞIR ÖNÜNE LOCAL KULLANMALIYIZ KARIŞIKLILIĞIN ENGELLENMESİ İÇİN
#     echo "ismim $isim"
# }

# isim="mehmet" #Global Değişken

# echo "ismim :$isim"

# enter ahmet

# echo "ismim: $isim"

#shift #birinci argümanı yok sayar 

#[] => META KARAKTERDİR

#META KARAKTERLER

# date;cal;who # noktalı virgül ile birçok komutu aynı anda çalıştırma
# ls -l U* # u ile başlıyanları filtreler
# ls -lap /bin/?? #bin klasörünün altında iki karakterli olan dosya ve klasörü ara
# ls -l /etc/[de]* #d veya e ile başlayan dosya ve klasörleri listele
# ls -l [^U]* # U ile başlamayan dosya ve klasörleri getir

# echo {ahmet,ali,veli}
# echo merhaba{\ ali,\ veli,\ yasin}\ hoşgeldiniz # \ işaret ayrı ayrı merhaba yazdırdı 3 satırda yapılacak işlemi 1 satıra indirdi

#DOSYA İŞLEMLERİ EKLEME SİLME

#mkdir klasör
# touch araba.txt
# cd klasör 
# ls
# touch file10.txt{,.eski}

# rm file8.txt

# echo {5..100..5} #BEŞTEN BAŞLA YÜZE KADAR 5'ER 5'ER ARTIRARAK GİT

# echo {01..10} #01'den başla başına 0 ilave ederek  10'a kadar git

# echo {a,b,c}{1..5} #çarparak git

# 'TIRNAK İFADELERİ'

# 1-˙ters tırnak sadece komutları barındırır˙

# deger=`date`
# echo $deger
# deger=`uname -n`
# echo $deger
 

#2- 'düz tek tırnak içerindeki ifadeyi yorumlamaz'
# echo 'Sistemin Adı `hostname`' 
# echo 'merhaba $LOGNAME bugünün tarihi:`date`' 
# çalışmadı çünkü tek tırnak içerindekini yorumlamaz 


# 3- "düz çift tırnak içerisindeki ifadeyi yorumlayarak çıktı verir"
# echo "Sistemin Adı `hostname`" # düz çift tırnak yorumladı

# echo "merhaba $LOGNAME bugünün tarihi:`date`" 

# Yönlendirme (Redirection)

# history > Desktop/gecmis #geçmisi bir dosyaya yazdırır
# isim="samo" #dosyanın sonuna yazar
# echo $isim >> Desktop/gecmis
# cal > Ay #Ay isminde sayfa oluşturur ve bu ayın takvim şeklini gösterir
# cal 5 2022 >> Ay #5. ayı sonuna  ekler
# set -o noclobber #üzerine yazmayı engeller ?
# find /etc -name network #arama
# find /etc -name network > hatasız #hatasız olanları yazdırır 
# find /etc -name network 2> hatalı #hatalı olanları yazdırır 
# find /etc -name network > hatalıhatasız 2>&1 #hem hatalı hem hatasız olanı yazdırır     find /etc -name network &> hatalı hatasız kolay yolu 
# find /etc -name network > hatasız 2> hatalı #iki farklı klasöre yazdırır

# KURALLI İFADELER (REGULAR EXPRESSİONS)

# GREP fitreler
# cat wordlist-probable.txt | grep ^kar #kar ifadesi ile başlayanları listeler
# cat wordlist-probable.txt | grep kar$ #kar iele bitenleri listeler
# cat wordlist-probable.txt | grep -i ^kar #küçük harf büyük harf ayırmaz
# cat wordlist-probable.txt | grep .kar. #sağında veya solunda harf olabilir
# * işareti kendinden önceki karakteri al veya alma her iki durumda geçerlidir 
# cat wordlist-probable.txt | grep -i ^kar* # kar ile başlasın ne ile devam ederse etsin demek
# cat wordlist-probable.txt | grep -i ^k......n$ #K ile başlasın N ile bitsin 
# cat wordlist-probable.txt | grep kar | grep -v ^kar |grep -v kar$ #kar ile başlamasın kar ile bitmesin kar arada kalsın
# cat wordlist-probable.txt | grep -ic ^k......n$ #kaç tane ifade varsa onların sayısını göstersin/satır sayısını söyle
# cat wordlist-probable.txt | grep -in ^k......n$  #satır numaralarını gösterir