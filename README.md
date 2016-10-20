# BCM 4331 patched for kernel 4.7.x

## Do you want to share your ethernet connection through your WiFi (create a wifi hotspot)?

If so, you can take full advantage of your driver by downloading the broadcom driver, compiling and installing it:

(AND for those using Fedora 24 kernel 4.7.x and having trouble with this solution):

You can clone this repository that I've made and run install.sh
https://github.com/hngouveia01/hybrid-v35_64-nodebug-pcoem-6_30_223_271

Or you can also download the driver at http://www.broadcom.com/support/802.11
(64 bits) http://www.broadcom.com/docs/linux_sta/hybrid-v35_64-nodebug-pcoem-6_30_223_271.tar.gz

apply the patch found at
https://github.com/USA-RedDragon/broadcom-wl-dkms/commit/52ef285fd9c688bb8b161b64d5dd1c4a8f2a1c4f

compile it and install it.

## Install
./install.sh

