# Pro-HEIC-Encoder
Bash HEIC converter with extended settings

The code is a bash script. It does two main things:
1) Converts JPG and PNG into the HEIC
2) It copies all EXIF metadata and changes modify date of HEIC file

It prompts the user to enter the quality of the HEIC output files (default is 75%) and the preset used for encoding (default is "medium").
It also asks the user to enter the longer side length of the preview in pixels, and the number of cores in the device (default is 4).
The script converts image files of types PNG, png, JPG, jpg, JPEG, and jpeg to HEIC format using the heif-enc command and saves the encoded files with a .HEIC extension.
The metadata from the original files is then copied to the HEIC files using the exiftool command.
Finally, the script asks the user if they want to keep the backup files, and if the answer is "n", it removes the backup files.
The script ends by printing "Work has been finished."
