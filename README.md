android_device_google_steelhead
===============================

"Operation Tuna Balls"


This is a partially complete attempt at porting CyanogenMod 9 (Android 4.0.4) to the Nexus Q.

At the time of original creation (July), there was no other source available.   As such,
I used the Tuna/Maguro bases to port to the Steelhead, as there were so many common pieces.

This combination worked well for the mnajority of things.  Known bugs never resolved since this
project was orphaned in July include:

* No working audio.  Mixers fail to load with tuna audio_hw.c.  The OMAP "Steelhead" and AOSP "Phantasm"
repositiories online have a -very- hacked up version of this file, but intended for Jellybean (as 
of writing).  Also, OMAP has the audio listed as a known issue in their source releases.
* No working NFC.  This could be easy to solve, I did not spend much time on it.
* System UI crashes.  This should be a simple matter of finding this conflicting Tablet/Phone
System UI layouts being requested (should be an overlay setting, likely).


Most everything works.  This includes:
* Bluetooth pair all the things, no hacks needed.
* Wifi works.
* XHDPI resolution works (when System UI doesn't crash).
* HW Acceleration in games work.
* Google Play Market is open for use.
