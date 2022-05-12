# Microsoft Visual C++ Redistributable for Visual Studio 2019

## [x64](https://aka.ms/vs/16/release/VC_redist.x64.exe) | [ARM64](https://aka.ms/vs/16/release/VC_redist.arm64.exe) | [x86](https://aka.ms/vs/16/release/VC_redist.x86.exe)

---

**Build Tools for Visual Studio
[2022](https://aka.ms/vs/17/release/vs_BuildTools.exe) |
[2019](https://download.visualstudio.microsoft.com/download/pr/1192d0de-5c6d-4274-b64d-c387185e4f45/605089bf72da4da4d27eb0cfcec569ed61f5cf5671aa6d3dece1487abfd62cab/vs_BuildTools.exe)
|
[2017](https://download.visualstudio.microsoft.com/download/pr/653e10c9-d650-464b-a0b0-f211bb0c7c32/ce78a99572710c75aa8a209d771c54f98513c8f5cfe4bad9a661fb1a3298bf50/vs_BuildTools.exe)**

**Also can install `Windows Build Tools` from npm module by this:**

```bash
npm install --global windows-build-tools --vs2017
```

**uninstall by this:**

```bash
npm uninstall global windows-build-tools
```

---

[`Visual Studio Express 2010`](https://download.my.visualstudio.com/pr/en_visual_studio_2010_express_x86_dvd_510419.iso?t=e9342239-1935-4cfa-b4df-0b6bacafd391&e=1624405502&h=9bc2c1aa791aa48ecfd1a481f27400d8&su=1)

For download

```bash
curl -L -o "en_visual_studio_2010_express_x86_dvd_510419.iso" \
"https://download.my.visualstudio.com/pr/en_visual_studio_2010_express_x86_dvd_510419.iso?t=e9342239-1935-4cfa-b4df-0b6bacafd391&e=1624405502&h=9bc2c1aa791aa48ecfd1a481f27400d8&su=1"
```

How to use `7z` to eXtract files

```bash
7z x en_visual_studio_2010_express_x86_dvd_510419.iso -oen_visual_studio_2010_express_x86_dvd_510419
```

Install silently using the command line<br/> Can see by
[this](https://docs.microsoft.com/zh-cn/previous-versions/visualstudio/visual-studio-2010/e2h7fzkw(v=vs.100))

```bash
en_visual_studio_2010_express_x86_dvd_510419\VCExpress\setup.exe /q /full /norestart
```
