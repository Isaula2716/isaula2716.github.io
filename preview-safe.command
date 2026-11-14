#!/bin/bash
cd "$(dirname "$0")"
echo "Rendering website..."
quarto render
if [ $? -ne 0 ]; then
  echo ""
  echo "Render failed. Fix the error above before previewing."
  read -p "Press Enter to close..."
  exit 1
fi

echo ""
echo "Starting stable Quarto preview..."
quarto preview --no-watch-inputs --no-navigate
