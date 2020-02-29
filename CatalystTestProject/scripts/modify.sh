#filepath="../CatalystTestProject.xcodeproj" /CatalystTestProject/
filepath="./CatalystTestProject/CatalystTestProject.xcodeproj"
searchstring="buildSettings = {"
replacestring="buildSettings = { SUPPORTS_MACCATALYST = YES;"

i=0;
all=$(grep -l -R $searchstring $filepath)

echo "all: " $all

for file in $all
do
  cp $file $file.bak
  sed -e "s/$searchstring/$replacestring/ig" $file > project.pbxproj
  mv project.pbxproj $file

  let i++;

  echo "Modified: " $file
done
