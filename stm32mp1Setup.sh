lsb_release -a

sudo apt-get update
sudo apt-get install sed wget curl cvs subversion git-core coreutils unzip texi2html texinfo docbook-utils gawk python-pysqlite2 diffstat help2man make gcc build-essential g++ desktop-file-utils chrpath libxml2-utils xmlto docbook bsdmainutils iputils-ping cpio python-wand python-pycryptopp python-crypto
sudo apt-get install libsdl1.2-dev xterm corkscrew nfs-common nfs-kernel-server device-tree-compiler mercurial u-boot-tools libarchive-zip-perl
sudo apt-get install ncurses-dev bc linux-headers-generic gcc-multilib libncurses5-dev libncursesw5-dev lrzsz dos2unix lib32ncurses5 repo libssl-dev
sudo apt-get install default-jre

echo 'options mmc_block perdev_minors=16' > /tmp/mmc_block.conf
sudo mv /tmp/mmc_block.conf /etc/modprobe.d/mmc_block.conf



mkdir $HOME/STM32MPU_workspace
mkdir $HOME/STM32MPU_workspace/tmp
cd $HOME/STM32MPU_workspace/tmp


echo "Downloading file into the $HOME/STM32MPU_workspace/tmp directory" 
wget https://www.st.com/content/ccc/resource/technical/software/sw_development_suite/group0/32/5e/0d/c9/05/87/40/c0/stm32mp1dev_yocto_sdk/files/SDK-x86_64-stm32mp1-openstlinux-4.19-thud-mp1-19-02-20.tar.xz/jcr:content/translations/en.SDK-x86_64-stm32mp1-openstlinux-4.19-thud-mp1-19-02-20.tar.xz

tar xvf en.SDK-x86_64-stm32mp1-openstlinux-4.19-thud-mp1-19-02-20.tar.xz


mkdir $HOME/STM32MPU_workspace/STM32MP15-Ecosystem-v1.0.0
mkdir $HOME/STM32MPU_workspace/STM32MP15-Ecosystem-v1.0.0/Developer-Package
mkdir $HOME/STM32MPU_workspace/STM32MP15-Ecosystem-v1.0.0/Developer-Package/SDK


chmod +x $HOME/STM32MPU_workspace/tmp/stm32mp1-openstlinux-4.19-thud-mp1-19-02-20/sdk/st-image-weston-openstlinux-weston-stm32mp1-x86_64-toolchain-2.6-openstlinux-4.19-thud-mp1-19-02-20.sh

echo "Execute the SDK installation script"
$HOME/STM32MPU_workspace/tmp/stm32mp1-openstlinux-4.19-thud-mp1-19-02-20/sdk/st-image-weston-openstlinux-weston-stm32mp1-x86_64-toolchain-2.6-openstlinux-4.19-thud-mp1-19-02-20.sh -d $HOME/STM32MPU_workspace/STM32MP15-Ecosystem-v1.0.0/Developer-Package/SDK

cd $HOME/STM32MPU_workspace/STM32MP15-Ecosystem-v1.0.0/Developer-Package
source SDK/environment-setup-cortexa7t2hf-neon-vfpv4-openstlinux_weston-linux-gnueabi

echo $ARCH
echo $CROSS_COMPILE

echo "check compiler version.. should be 8.2.0"

arm-openstlinux_weston-linux-gnueabi-
$CC --version
echo $OECORE_SDK_VERSION
