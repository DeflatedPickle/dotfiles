#!/bin/bash
size=$(xdpyinfo | awk '/dimensions/{print $2}')
width=$(echo $size | cut -d "x" -f 1)
height=$(echo $size | cut -d "x" -f 2)
convert -size $size xc:transparent -strokewidth 0 -fill "rgba(0, 0, 0, 0.4)" -draw "roundrectangle $((width / 2 - 90)),$((height / 2 - 50)) $((width / 2 + 150)),$((height / 2 + 50)) 13,13" temp.png

i3lock \
  --show-failed-attempts \
  \
  --image "temp.png" \
  --screen 0 \
  --blur 5 \
  --indicator \
  --force-clock \
  \
  --timecolor=D3D0CBFF \
  --datecolor=D3D0CBFF \
  \
  --time-font=source-code-variable \
  --date-font=source-code-variable \
  --layout-font=source-code-variable \
  --verif-font=source-code-variable \
  --wrong-font=source-code-variable \
  \
  --veriftext="" \
  --wrongtext="" \
  --noinputtext="" \
  \
  --indpos="w/2-r/2-24:h/2" \
  --timepos="w/2:h/2" \
  --datepos="w/2:h/2+22" \
  --time-align 1 \
  --date-align 1 \
  \
  --radius 32 \
  --ring-width 4 \
