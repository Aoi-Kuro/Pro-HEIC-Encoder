# Pro-HEIC-Encoder
Multithread bash HEIC converter with extended settings

The code is a bash script. It does two main things:
1) Converts JPG and PNG into the HEIC
2) It copies all EXIF metadata and changes modify date of HEIC file

You may enter:
1) Quality [0; 100]
The higher the quality the better image will look and less information will be lost

2) Preset {ultrafast, superfast, veryfast, faster, fast, medium, slow, slower, veryslow, placebo}
The slower the preset the better will be final resut since code has more time to check all the encodeing patterns

3) Preview size
Creates to help OS show you a thumb of file without fully decoding it

4) Number of cores
Decides how much images will be encoded at the same time (grater - not better)

# What should be installed
1) libheif-examples
2) exiftool
3) libde265-dev
4) 
You may use this lines on Linux to install libs:


sudo apt install libde265-dev

sudo apt-get install exiftool

sudo apt-get install libheif-examples

# How to use
Just put the file in the same folder with the files to encode. Open console and run code (usually you must write "bash HEIC.sh")

# FAQ
1) Is it possilbe to use this code on Windows?
- Of course yes. You just have to install Ubuntu or another subsystem on your Windows. Read on the internet how to do this
2) Will this code be developed in future?
- Yes. Write what functional you want to see and I will soon add it!
