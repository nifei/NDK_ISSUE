pwd=$PWD
echo $pwd
cd ./testA
ndk-build
cd $pwd/testB
ndk-build
cd $pwd/testSo
ndk-build
cd $pwd
cp ./testSo/libs/armeabi/libnifei.so ../svn/newp2psdk_2-0-1_BRANCH/Test1/app/src/main/jniLibs/armeabi/
