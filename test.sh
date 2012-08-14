cd ~/Desktop

# montage "test/*" -auto-orient  -thumbnail 300x300 \
#     -bordercolor Lavender -background black +polaroid \
#     -gravity center -background none -extent 0x0 \
#     -background none -geometry -60-60  polaroid_overlap.png
    

montage "cachedir/*" -auto-orient \
    -bordercolor white -background black +polaroid \
    -gravity center -background none -extent 0x0 \
    -background none -geometry -50-50  pj.png