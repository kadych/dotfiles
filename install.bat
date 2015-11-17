REM @echo off
if _%GIT_CMD%_ == __ (
    set GIT_CMD=D:\tools\git\cmd\git.exe
)
if _%VIM_CMD%_ == __ (
  set VIM_CMD=vim
)
if _%VUNDLE_HOME%_ == __ (
    set VUNDLE_HOME=%USERPROFILE%\.vundle
)
set VUNDLE_REPO=https://github.com/VundleVim/Vundle.vim.git
if not exist "%USERPROFILE%\.vim" (
    mklink /j "%USERPROFILE%\.vim" .vim
    attrib +h /l "%USERPROFILE%\.vim"
)
if not exist "%USERPROFILE%\vimfiles" (
    mklink /j "%USERPROFILE%\vimfiles" .vim
    attrib +h /l "%USERPROFILE%\vimfiles"
)
if not exist "%VUNDLE_HOME%" (
    "%GIT_CMD%" clone %VUNDLE_REPO% "%VUNDLE_HOME%/Vundle.vim"
    attrib +h "%VUNDLE_HOME%"
)
"%VIM_CMD%" "+set t_Co=0" +PluginInstall +qall
