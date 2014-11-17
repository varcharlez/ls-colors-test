#!/bin/sh

mkdir ls-colors-test
cd ls-colors-test

touch 0-file
mkdir 1-dir
ln -s /dev/null 2-symlink
python -c 'import socket; s = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM); s.bind("3-socket")' &
mkfifo 4-pipe
touch 5-executable && chmod +x 5-executable
sudo mknod 6-block-dev b 1 8
sudo mknod 7-character-dev c 1 8
touch 8-setuid && chmod u+xs 8-setuid
touch 9-setgid && chmod g+xs 9-setgid
mkdir a-write-others-sticky && chmod 1777 a-write-others-sticky
mkdir b-write-others-nosticky && chmod ugo+rwx b-write-others-nosticky
