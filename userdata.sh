#!/bin/bash
sudo yum -y update
sudo yum -y install git
git clone https://github.com/esthermurambikar/Agri.git
sudo yum -y install python3-pip
cd Agri
pip3 install -r requirements.txt
screen -m -d python3 app.py
