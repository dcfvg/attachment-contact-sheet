start_time=`date +%s`

cd ~/Desktop

# rm -r cachedir;
# 
# echo "Creation du cache …"
# mkdir cachedir
# 
# echo "Recherche … "
# find /Users/*/Library/Mail/V2 -name '*.jpg'   -exec cp {} cachedir \;
# find /Users/*/Library/Mail/V2 -name '*.jpeg'  -exec cp {} cachedir \;
# find /Users/*/Library/Mail/V2 -name '*.png'       -exec cp {} cachedir \;
# #find /Users/*/Library/Mail/V2 -name '*.gif'  -exec cp {} cachedir \;
# #find /Users/*/Library/Mail/V2 -name '*.pdf'  -exec cp {} cachedir \;
# echo "images copiés …"

#mogrify -thumbnail 200x200 -gravity center -crop 200x200+0+0 "cachedir/*"
#echo "images réduites …"

#montage cachedir/* -mode Concatenate allmail.png
#montage "cachedir/*" -geometry 200x200\>+0+0 all.png

mogrify -thumbnail 200x200 "cachedir/*"

montage "cachedir/*" -auto-orient \
    -bordercolor white -background black +polaroid \
    -gravity center -background none -extent 0x0 \
    -background none -geometry -50-50  pj.png

echo "montage terminé"

#rm -r cachedir;
#echo "cachedir supprimé";

end_time=`date +%s` 
secs=$(($end_time-$start_time))
echo "Temps total "$(($secs/3600))":"$(($secs%3600/60))":"$(($secs%60))