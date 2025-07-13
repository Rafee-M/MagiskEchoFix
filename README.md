<h1 align="center">
  <img src="/src/logo.png" alt="Main icon" width="190" height="190"/>
  <br>
  Magisk Echo Fix
</h1>
<p align="center"><strong>A quick fix for echoes on phone calls. Doesn't fix the underlying issue, but works for now!</strong></p>

<div align='center'>

[![Latest stable release version](https://img.shields.io/badge/Magisk-20%2B-orange?logo=android?style=flat&labelColor=AAFFAA&color=00AA44)](https://github.com/topjohnwu/Magisk)
[![Github downloads](https://img.shields.io/github/license/Rafee-M/MagiskEchoFix?style=flat&labelColor=AAFFAA&color=00AA44)](https://github.com/NeoApplications/Neo-Store/releases/)
![Visitors](https://api.visitorbadge.io/api/visitors?path=https%3A%2F%2Fgithub.com%2FRafee-M%2FMagiskEchoFix&labelColor=%23aaffaa&countColor=%2300aa44&style=flat)

</div>


A minimal Magisk module that replaces `/vendor/etc/audio_effects.xml` with an empty version to resolve audio processing issues on select devices.

## ❓ The Reason
On some devices there were reports constant echoes on calls. Could be due to multitude of reasons, but this exact type of issue was seen on devices running LineageOS ([Motorola Moto G32](https://gitlab.com/LineageOS/issues/android/-/issues/8284), [OnePlus 9RT](https://gitlab.com/LineageOS/issues/android/-/issues/9018)). Could be related to LineageOS, as users have reported this to be an non-issue on stock ROMS.

### Why This Works
Temporarily bypasses buggy audio processing by:
- The issue is likely caused due to misconfigured audio effects
- Emptying vendor DSP effects configuration allows to mitigate any issues
- Works immediately after reboot

### Features
- **Lightweight**: Uses bind mounts (no overlayfs)
- **Non-destructive**: Original file remains unchanged
- **Auto-reverting**: Disabling module restores original file

<img src="/src/image.png" alt="Neo Store's icon" width="500" height="331"/>

## 📖 FAQ
- This is a temporary workaround, not a permanent fix
- May disable wanted audio enhancements (VoIP noise suppression, etc.)\
- Effectiveness varies by device manufacturer

### Installation
1. Download the [latest release](https://github.com/Rafee-M/MagiskEchoFix/releases/latest)
2. Install via [Magisk](https://github.com/topjohnwu/Magisk/releases/latest)
3. Reboot your device

### Removal
1. Disable module in Magisk
2. Reboot device
