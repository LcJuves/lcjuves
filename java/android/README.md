# Android

## Use `adb shell` to show the top activity

```bash
adb shell dumpsys activity top | grep 'ACTIVITY' | awk 'END{print $2}'
```
