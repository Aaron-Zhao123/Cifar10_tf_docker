from tensorflow/tensorflow:latest
MAINTAINER Aaron Zhao (yaz21@cam.ac.uk)
# Get dependencies
#RUN apt-get update && apt-get install -y \
#    php5-mcrypt \
#    python-pip
WORKDIR /root
COPY BUILD /root/BUILD
COPY cifar10.py /root/cifar10.py
COPY cifar10_input.py /root/cifar10_input
COPY cifar10_eval.py /root/cifar10_eval.py
COPY cifar10_train.py /root/cifar10_train.py
CMD ["python", "/root/cifar10_train.py"]
