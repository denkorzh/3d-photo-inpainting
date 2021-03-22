#!/bin/sh
fb_status=$(wget --spider -S https://filebox.ece.vt.edu/ 2>&1 | grep  "HTTP/1.1 200 OK")

mkdir checkpoints

echo "downloading from filebox ..."
wget https://filebox.ece.vt.edu/~jbhuang/project/3DPhoto/model/color-model.pth --no-check-certificate
wget https://filebox.ece.vt.edu/~jbhuang/project/3DPhoto/model/depth-model.pth --no-check-certificate
wget https://filebox.ece.vt.edu/~jbhuang/project/3DPhoto/model/edge-model.pth --no-check-certificate
wget https://filebox.ece.vt.edu/~jbhuang/project/3DPhoto/model/model.pt --no-check-certificate


mv color-model.pth checkpoints/.
mv depth-model.pth checkpoints/.
mv edge-model.pth checkpoints/.
mv model.pt MiDaS/.
