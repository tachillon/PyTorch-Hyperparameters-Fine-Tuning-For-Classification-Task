FROM nvidia/cuda:11.6.2-cudnn8-devel-ubuntu20.04

# See http://bugs.python.org/issue19846
ENV LANG C.UTF-8

ENV DEBIAN_FRONTEND noninteractive
RUN DEBIAN_FRONTEND=noninteractive  apt-get update && apt-get install -y --no-install-recommends \
            build-essential  \
            python3          \
            python3-pip      \  
            python3-opencv   \
            rsync
ENV DEBIAN_FRONTEND noninteractive

RUN pip3 install --no-cache-dir \
    pip                         \ 
    setuptools

RUN python3 -m pip install --upgrade pip

RUN pip3 --no-cache-dir install --upgrade \    
    torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116 \
    numpy                 \
    opencv-python         \
    pillow                \
    scipy                 \
    termcolor             \
    alive-progress        \
    matplotlib            \
    progress              \
    scikit-learn          \
    pandas                \
    ray                   \
    tabulate              \
    tune                  \
    rllib                 \
    optuna                \
    hyperopt              \
    tensorboardx          \
    bayesian-optimization \
    plotly                \
    kaleido

ENV TORCH_HOME /tmp