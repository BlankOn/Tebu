#!/bin/sh
#untuk mengeksport sebuah(satu) berkas *.svg menjadi *.png 
echo "actions | apps | categories | devices | emblems  "
echo "extras  | io   | mimetypes  | places  | status  |  stock    "

echo -n "Masukan Nama Folder [ENTER]: "
read icon	
echo -n "Masukan Nama Ikon [ENTER]: "
read name

for x in 16 22 24 32 48 64 96
do
	inkscape $icon/scalable/$name.svg --export-png=$icon/$x/$name.png --export-height=$x --export-width=$x
done
