sudo apt install -y openjdk-8-jre openjdk-8-jdk

sudo snap install android-studio --classic

# according to https://developer.android.com/studio/run/emulator-acceleration?utm_source=android-studio#vm-linux
# it is better to enable KVM for faster Android emulator performance for Linux

sudo apt install -y cpu-checker

sudo kvm-ok

# don't forget to enable VT option in BIOS 

sudo apt install -y qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils

sudo adduser howard kvm


