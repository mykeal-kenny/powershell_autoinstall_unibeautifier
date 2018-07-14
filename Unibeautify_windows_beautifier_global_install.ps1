# Assumes you have Chocolatey installed for choco installs if needed
#
# ===================IMPORTANT===================
# YOU MUST INSURE THAT YOU HAVE THE EXECUTABLES INSTALLED
# FOR EVERYTHING THATS NOT A PIP OR NPM INSTALL
# 
#
# this will install the following as GLOBAL beautifiers:
#
# Unibeautify-cli: the main Unibeautify package
# Black
# ClangFormat
# Gofmt
# JS-Beautify
# PHP-CS-Fixer
# PHP_CodeSniffer
# Prettier
# Pretty Diff
#
Set-ExecutionPolicy Bypass -Scope Process -Force
function beautifier_install (){
# Uncomment the line below to install node as well
# choco install nodejs
#
# Unibeautify-cli: the main Unibeautify package
npm install --global unibeautify-cli
#
# Black: for Python beautification
npm install --global @unibeautify/beautifier-black
pip install black
#
# JS-Beautify
npm install --global js-beautify
npm install --global @unibeautify/beautifier-js-beautify
#
# Prettier
npm install --global prettier
npm install --global @unibeautify/beautifier-prettier
#
# Pretty Diff
npm install --global prettydiff2
npm install --global @unibeautify/beautifier-prettydiff
#
#NOTE: Everything below this line requires additional installs
# If possible, there are choco installs to add the additional
# required dependencies. To use, uncomment as needed.
# =============================================================
# 
# ========Requires Visual Studio (NOT VS CODE)========
# ClangFormat: For C, C++ and many others
# npm install --global @unibeautify/beautifier-clang-format
# choco install llvm
#
# Gofmt: For the Go language
# npm install --global @unibeautify/beautifier-gofmt
# choco install golang
#
# PHP-CS-Fixer
# npm install --global @unibeautify/beautifier-php-cs-fixer
#
# PHP_CodeSniffer
# npm install --global @unibeautify/beautifier-php-codesniffer
}

beautifier_install
cls
ECHO ALL DONE
ECHO
ECHO Go to:
ECHO
ECHO https://assistant.unibeautify.com/#/setup
ECHO
ECHO for setup assistance
ECHO
ECHO Dont forget the read the docs!