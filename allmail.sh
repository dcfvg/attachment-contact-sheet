start_time=`date +%s`
cd ~/Desktop

rm -r cachedir;
rm -r cachedirHD;

## debut du script

mkdir cachedir
echo "Dossier de cache …"

find /Users/*/Library/Mail/V2 -name '*.jpg' -exec cp {} cachedir \;
find /Users/*/Library/Mail/V2 -name '*.jpeg'-exec cp {} cachedir \;
find /Users/*/Library/Mail/V2 -name '*.png' -exec cp {} cachedir \;
find /Users/*/Library/Mail/V2 -name '*.gif' -exec cp {} cachedir \;
find /Users/*/Library/Mail/V2 -name '*.pdf' -exec cp {} cachedir \;
echo "images copiés …"

cp -r cachedir cachedirHD
echo "cache dupliqué …"

mogrify -thumbnail 350x350 "cachedir/*"
echo "images réduites …"

montage "cachedir/*" -auto-orient \
    -bordercolor white -background black +polaroid \
    -gravity center -background none -extent 0x0 \
    -background none -geometry -55-55  pj.png
echo "montage terminé"

######
end_time=`date +%s` 
secs=$(($end_time-$start_time))
echo "Temps total "$(($secs/3600))":"$(($secs%3600/60))":"$(($secs%60))