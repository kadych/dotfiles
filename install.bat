set GIT_CMD=D:\tools\git\cmd\git.exe
set VUNDLE_HOME=%USERPROFILE%\.vundle
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
vim +PluginInstall +qall
