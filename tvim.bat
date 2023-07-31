@echo off
pushd "%~dp0"
start bin-wezterm/wezterm-gui.exe start --cwd "%cd%" -e vim.bat
popd