mkdir $HOME/STM32MPU_workspace/STM32MP15-Ecosystem-v1.0.0/Developer-Package/stm32mp1-openstlinux-4.19-thud-mp1-19-02-20
mkdir $HOME/STM32MPU_workspace/STM32MP15-Ecosystem-v1.0.0/Developer-Package/stm32mp1-openstlinux-4.19-thud-mp1-19-02-20/sources

mkdir $HOME/STM32MPU_workspace/STM32MP15-Ecosystem-v1.0.0/Developer-Package/stm32mp1-openstlinux-4.19-thud-mp1-19-02-20/sources/gtk_hello_world_example
cd $HOME/STM32MPU_workspace/STM32MP15-Ecosystem-v1.0.0/Developer-Package/stm32mp1-openstlinux-4.19-thud-mp1-19-02-20/sources/gtk_hello_world_example

make

# scp gtk_hello_world root@<board ip address>:/usr/local
# cd /usr/local/
# ./gtk_hello_world
