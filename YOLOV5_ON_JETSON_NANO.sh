#!/bin/bash

echo "This is the start of configuring the Jetson Nano for vehicle license plate detection";

sudo /opt/nvidia/jetson-io/jetson-io.py
git clone https://github.com/arghya013/JetsonYolo.git
git clone https://github.com/arghya013/buildOpenCV.git
cd buildOpenCV/
./buildOpenCV.sh
cd ..
sudo apt install python3-pip
pip3 install -U PyYAML==5.3.1
pip3 install tqdm
pip3 install cython
pip3 install -U numpy==1.18.5
sudo apt install build-essential libssl-dev python3-dev
pip3 install cycler==0.10
pip3 install kiwisolver==1.3.1
pip3 install pyparsing==2.4.7
pip3 install python-dateutil==2.8.2
pip3 install --no-deps matplotlib==3.2.2
sudo apt install gfortran
sudo apt install libopenblas-dev
sudo apt install liblapack-dev
pip3 install scipy==1.4.1
sudo apt install libjpeg-dev
pip3 install pillow==8.3.2
pip3 install typing-extensions==3.10.0.2
wget https://nvidia.box.com/shared/static/p57jwntv436lfrd78inwl7iml6p13fzh.whl -O torch-1.10.0-cp36-cp36m-linux_aarch64.whl
sudo apt-get install python3-pip libopenblas-base libopenmpi-dev
pip3 install --no-deps torch-1.10.0-cp36-cp36m-linux_aarch64.whl
sudo apt-get install libjpeg-dev zlib1g-dev libpython3-dev libavcodec-dev libavformat-dev libswscale-dev
git clone --branch v0.9.0 https://github.com/pytorch/vision torchvision
cd torchvision
export BUILD_VERSION=0.9.0
pip3 install dataclasses
python3 setup.py install --user
cd ..
pip3 install --no-deps seaborn==0.11.0
cd JetsonYolo/weights/
wget https://github.com/arghya013/License_Plate_Weights_for_YOLOv5/raw/main/yolov5s.pt
cd ..
python3 JetsonYolo.py

