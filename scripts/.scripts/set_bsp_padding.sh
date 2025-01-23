layout=$(bspc query -T -d | jq -r '.layout')
if [ "$layout" = "monocle" ]; then
    bspc config top_padding 60
else
    bspc config top_padding 0
fi
