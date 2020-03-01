#filepath="../CatalystTestProject.xcodeproj" /CatalystTestProject/
filepath="./CatalystTestProject/CatalystTestProject.xcodeproj/project.pbxproj"
searchstring="buildSettings = {"
replacestring="buildSettings = { SUPPORTS_MACCATALYST = YES; DERIVE_MACCATALYST_PRODUCT_BUNDLE_IDENTIFIER = YES;"

sed -i "s/$searchstring/$replacestring/g" $filepath
echo "Modified: " $(cat $filepath)


#i=0;
#all=$(grep -l -R $searchstring $filepath)
#
#echo "all: " $all
#
#for file in $all
#do
#  cp $file $file.bak
#  sed -e "s/$searchstring/$replacestring/ig" $file > project.pbxproj
#  mv project.pbxproj $file
#
#  let i++;
#
#  echo "Modified: " $file
#done
