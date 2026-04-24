@echo off
chcp 65001 >nul
title 多终端启动工具

:: ====================== 配置项 ======================
set "TARGET_DIR=D:\360MoveData\Users\MJJ\Desktop\project\Web Digital Human"
set "PROXY=http://127.0.0.1:7897"
:: ====================================================

start wt ^
  new-tab -d "%TARGET_DIR%" cmd /k "set http_proxy=%PROXY%&& set https_proxy=%PROXY%&& claude" 
exit