#!/bin/bash

cp -a fsiw ~/bin/fsiw

which fsiw > /dev/null
if [ $? != 0 ]; then
	echo "We need to add $HOME/bin to your path (editing your .profile and hoping that works)"
	echo "export PATH=\"\$PATH:$HOME/bin\" # http://github.com/nicholaspaun/vsc-sharpener" >> ~/.profile
	chmod +x ~/.profile
else
	echo "Congrats. Your PATH will work for the installation"
fi


mv ~/.vscode/extensions/Ionide.Ionide-fsharp* ~/.Ionide-BKUP
tar -xzvf ionide-source.tar.gz -C ~/.vscode/extensions/
cp -a Fsi.js ~/.vscode/extensions/Ionide.Ionide-fsharp-2.22.1/Components/

echo "Installation completed."
echo "A friendly reminded to disable auto-updates or stuff will break again."