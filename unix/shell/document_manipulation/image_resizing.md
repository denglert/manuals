# Image resizing

**References;**
- https://guides.wp-bullet.com/batch-resize-images-using-linux-command-line-and-imagemagick/


~~~~
find ${FOLDER} -iname '*.png' -exec convert \{} -verbose -resize 600x400> \{} \;
~~~~
