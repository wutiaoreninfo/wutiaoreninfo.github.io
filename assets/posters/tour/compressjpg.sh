#!/bin/bash
for fig in 2020*.jpg
do 
    figname="${fig%.*}"
    echo $figname
    figout="${figname}-s.jpg"
    echo $figout
    magick $fig -strip -interlace Plane -sampling-factor 4:2:0 -quality 20% $figout
done

# pstoedit -f emf -rotate 270 02groups.eps 02groups.emf
# inkscape filename.svg --export-filename filename.emf
# magick cannot write to emf files

# Output format options from FLAC
# 
# 1. jpg with size defined + magick convert -trim to remove the white margins
#    X the 'main' area seems to be fixed, final figure not large enough
# 2. emf
#    X size seems to be fixed, large white margin, cannot ungroup in PowerPoint or Word
# 3. postscript + magick convert to png image (magick convert cannot write to emf file)
#    O transparent and clear png file, seems OK
# 4. postscript + pstoedit to emf file
#    O file seems OK, but rather large file size
# 5. postscript + inkscape to emf file
#    O file seems OK, but rather large file size
