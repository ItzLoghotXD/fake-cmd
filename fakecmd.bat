@echo off
title Command Prompt

:intro
cls
color 7
echo Microsoft Windows [Version 10.0.19045.4598]
echo (c) Microsoft Corporation. All rights reserved.
cd %USERPROFILE%
%HOMEDRIVE%
goto typecmd

:typecmd
echo.
set "c="
set /P c="%cd%>"

if /I "%c%" EQU "ls" (
    dir
    goto typecmd
)

if /I "%c%" EQU "clear" (
    cls
    goto typecmd
)

%c%
goto typecmd
