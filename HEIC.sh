#!/bin/bash

echo "Enter the quality of output HEIC files in percents (press Enter for default: 75%)"
read quality
if [ -z "$quality" ]; then
quality=75
fi

echo "Select the preset among {ultrafast, superfast, veryfast, faster, fast, medium, slow, slower, veryslow, placebo} (press Enter for default: medium)"
read preset
if [ -z "$preset" ]; then
preset=medium
fi

echo "Enter the longer side preview length in px (press Enter to skip the preview creation):"
read preview

types=(PNG png JPG jpg JPEG jpeg)
count=0

echo "Enter the number of cores in your device (Enter for default: 4) (it will effect the number of threads used to encode images)"
read ncores
if [ -z "$ncores" ]; then
ncores=4
fi

for type in "${types[@]}"; do
  files="*.$type"
  if [ -z "$preview" ]; then
    echo $files | xargs -P $ncores -n 1 bash -c 'heif-enc -q '$quality' -p preset='$preset' $0; echo "Image $count, done"; ((count++))'
  else
    echo $files | xargs -P $ncores -n 1 bash -c 'heif-enc -q '$quality' -t '$preview' -p preset='$preset' $0; echo "Image $count, done"; ((count++))'
  fi
done

types=(PNG png JPG jpg JPEG jpeg)
for type in "${types[@]}"; do
  files=$(ls *.$type 2>/dev/null)
  for file in $files; do
    base=${file%.*}
    heic_file="$base.HEIC"
    if [ -f "$heic_file" ]; then
      exiftool -tagsfromfile "$file" -r "$heic_file"
      exiftool "-filemodifydate<datetimeoriginal" "$heic_file"
    fi
  done
done

read -p "Do you want to keep backup files? (y/n): " answer

if [ "$answer" == "n" ]; then
  rm -f *_original
fi

echo "Work has been finished"
