#!/bin/zsh

# 檢查是否已有 trayer 運行
if pgrep -x "trayer" > /dev/null; then
    # 如果 trayer 已經運行，則關閉
    pkill -x "trayer"
else
    # 如果 trayer 沒有運行，則啟動
    trayer --edge bottom --align right --width 10 --transparent true --tint 0x000000 --height 36 --iconspacing 15 &
fi
