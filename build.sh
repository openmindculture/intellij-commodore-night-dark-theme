echo "build theme distribution $1 ..."
mkdir -pv build/intellij-commodore-night-dark-theme
rm -rf build/intellij-commodore-night-dark-theme/*
mkdir -pv build/intellij-commodore-night-dark-theme/lib
mkdir -pv build/intellij-commodore-night-dark-theme-$1
cp -rv src/main/resources/* build/intellij-commodore-night-dark-theme-$1/
cd build
cd intellij-commodore-night-dark-theme-$1
zip -rv ../intellij-commodore-night-dark-theme/lib/intellij-commodore-night-dark-theme-$1.jar ./*
cd ..
mkdir -pv distributions
zip -rv distributions/intellij-commodore-night-dark-theme-$1.zip.tmp intellij-commodore-night-dark-theme
rm -f distributions/intellij-commodore-night-dark-theme-$1.zip
mv distributions/intellij-commodore-night-dark-theme-$1.zip.tmp distributions/intellij-commodore-night-dark-theme-$1.zip
echo "done"
