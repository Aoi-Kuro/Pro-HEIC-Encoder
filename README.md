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

# ChatGPT description:

This is a bash script that allows you to convert image files in your current directory from JPEG or PNG to HEIC format, while preserving their metadata.

You will be prompted to specify the quality of the output HEIC files in percent, with a default value of 75% if no input is provided. You can also choose from one of ten preset options for the encoding process, with a default of "medium". The number of cores on your device can also be inputted to affect the number of threads used during encoding. If no value is provided, the script will assume 4 cores.

The script uses the heif-enc command to convert each image file, and if desired, you can specify the longer side preview length in pixels to create a preview for each HEIC file. The metadata of the original files will then be copied over to the HEIC files using exiftool. The file modification time will also be updated to match the date and time the photo was taken.

At the end of the script, you will be prompted to keep or delete backup files created during the conversion process. If you choose to delete the backups, the script will remove all files with the "_original" extension.

This script requires the heif-enc and exiftool commands to be installed on your system.
