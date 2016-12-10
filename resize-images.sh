#!/bin/sh
rm -rf images
mkdir images

mkdir images/projects

for w in 1400 1010 720 530 360; do
	for i in images_source/projects/*.jpg; do
		magick convert $i -resize ${w}x images/projects/$(basename $i .jpg)_$w.jpg;
	done
done