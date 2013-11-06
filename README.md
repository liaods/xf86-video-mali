xf86-video-mali
===============

Mali-400 X11/DRI2/EXA drivers

How to build mali_drv.so on sunxi boards(lubuntu)
=====================================================
1) install required libs
$ sudo apt-get install automake libtool xutils-dev libxrandr-dev \
     libdrm-dev xorg-dev
$ sudo cp ump/ /usr/include -ar

2) build mali_drv.so
$ autoreconf -v --install
$ ./configure
$ make

3) overwrite /usr/lib/xorg/modules/drivers/mali_drv.so 
$ sudo cp src/.libs/mali_drv.so /usr/lib/xorg/modules/drivers/mali_drv.so -f
$ sudo cp xorg.conf /etc/X11/xorg.conf -f

4) restart x or reboot 
$ sudo restart lightdm

How to change screen resolution from UI
====================================================
1) install lxrandr
$ sudo apt-get install lxrandr
2) run lxrandr
start menu ==> Preferences ==> Monitor Settings
a) choose a resolution, click "Apply" (will not be saved by default)
if the resolution you choose is not supported by your display, just reset the board, or switch to command line to restart x ( sudo restart lightdm ). 

click "Save" button if you want to save.
