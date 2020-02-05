FROM jupyter/scipy-notebook

USER root

# bash instead of dash to use source
RUN ln -snf /bin/bash /bin/sh

#USER jovyan

# Original version: for AI demo
RUN pip install --upgrade tensorflow && pip install --upgrade --no-deps git+git://github.com/fchollet/keras.git && pip install opencv-python

# For Neural Style Transfer
#RUN pip install tensorflow==1.15 && pip install --upgrade --no-deps git+git://github.com/fchollet/keras.git && pip install opencv-python Pillow imageio redis

# For 3d visual effect
#RUN pip install --upgrade pip && pip install opencv-python Pillow imageio opencv-python
