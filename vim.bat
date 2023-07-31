@echo off
pushd "%~dp0"
bin-win\nvim-win64\bin\nvim.exe -u config/init.lua %*
popd