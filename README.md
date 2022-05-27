# dualsense_tweaks
Udev and X11 configs to resolve input and audio annoyances with dualsense controllers.

# Features
- Prevent pulseaudio from assinging your controller as an audio output.
- Prevent controller trackpad input.

# Planned Features
- Resolve bluetooth keyboard connectivity issues when dualsense is connected via bluetooth.

# Installation
- `git clone https://github.com/cyberrumor/dualsense_tweaks`
- `sudo cp -r dualsense_tweaks/etc /`
- `sudo udevadm control --reload`
- restart your X session.
