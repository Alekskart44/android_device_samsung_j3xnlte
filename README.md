##Device configuration for Samsung Galaxy J3 (2016) SPRD SM-J320FN (j3xnlte)

=====================================

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core 1,3GHz Cortex-A7
CHIPSET | Spreadtrum SC9830 sc8830
GPU     | Mali-400MP2
Memory  | 1 GB
Shipped Android Version | Android 5.1.1 with TouchWiz Essence
Storage | 8 GB
MicroSD | Up to 64 GB
Battery | 2600 mAh Li-Ion (removable)
Dimensions | 144.8 x 72.1 x 8.6 mm
Display | 720 x 1280 pixels, 5.0"
Rear Camera  | 8.0 MP, LED flash
Front Camera | 5.0 MP
Release Date | May 2016

##Building instructions

### What do you need?
* 50GB left of your hard disk space
* Basic skills / knowledge of Linux

### Building steps
* 1. Sync Android source
* 2. Copy this file ([j3xnlte.xml](https://github.com/koquantam/android_local_manifests/blob/cm-14.1-j3xnlte/j3xnlte.xml)) to `.repo/local_manifests` (if that folder doesn't exist then "mkdir" it)
* 3. `repo sync` again
* 4. After syncing source and device-specific repo (from step 2), from your source root folder (where you have synced) open Terminal, `cd` to device/samsung/scx30g_v2-common, type `./patch.sh` (this is the quick patching script)
* 5. `cd` to your source root again, type `. build/envsetup.sh && brunch j3xnlte`