FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-runtime

RUN apt-get update

RUN apt-get install -y libgl1-mesa-glx

RUN apt-get install -y libgtk2.0-dev

RUN git clone https://github.com/deagwon97/ct-abdomen

WORKDIR /ct-abdomen

RUN python -m pip install --upgrade pip

RUN python -m pip install -r /workspace/src/requirements.txt