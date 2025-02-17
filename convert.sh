files="./fig/svg/*"
archive_dir="./fig/svg_archive/"
for file in $files; do
  echo $file
  new_file=./fig/`basename $file .svg`.eps
  echo $new_file
  inkscape $file -E $new_file
  mv $file $archive_dir
done