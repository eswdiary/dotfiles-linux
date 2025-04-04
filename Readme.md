## 250404

經過一次的大整理，該 dotfile 目前融合了 `bspwm` / `i3` / `hyprland` 的所有設置，以下整理一下該配置結構：

```tree
.
├── bspwm
├── dunst
├── fcitx5
├── gtk-4.0
├── hypr
├── i3
├── icons
├── kitty
├── picom
├── polybar
├── rofi
├── scripts
├── starship
├── swaync
├── sxhkd
├── themes
├── waybar
├── wofi
└── zsh

20 directories
```

- bspwm
- dunst：通知管理
- fcitx：中文輸入法，整合加入嘸蝦米與 rime 的 config
- gtk-4.0：GTK 主題，內為 Gruvbox GTK 主題
- hypr：Hyprland 配置
- i3：i3 配置
- icons：內為 Gruvbox 主題 icons
- kitty：Kitty terminal 配置
- picom：為 bspwm 使用之視窗渲染配置，基於 X11
- polybar：為 bspwm 使用之 info bar，基於 X11
- rofi：為 bspwm 使用之 launcher，基於 X11，雖另有 fork 支援 Hyprland，但功能部份受限
- scripts：各種 script 的集合
- starship：Terminal 裝飾性工具，基本上只有使用內建的 preset
- swaync：原為 Sway 的通知管理，但 Hyprland 也可以使用
- sxhkd：為 bspwm 使用之快捷鍵管理
- themes：為 GTK 3.0 所使用之 Gruvbox 主題
- waybar：為 Hyprland 所使用之 info bar，及其自訂之 CSS 與其他配置
- wofi：為 Hyprland 所使用之 launcher，及其自訂之 CSS 與其他配置
- zsh：Zsh shell 所使用之配置

Nvim 的配置較為複雜，將編輯器與桌面配置另外分開放。

