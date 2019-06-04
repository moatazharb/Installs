FROM ubuntu:16.04

ENV HOME /root

RUN apt-get -y --force-yes update
RUN apt-get install -y --force-yes \
    software-properties-common python-software-properties wget

# pyne specific dependencies
RUN apt-get install -y --fix-missing build-essential python-numpy python-scipy cython \
                       python-nose git cmake vim emacs gfortran libblas-dev \
                       liblapack-dev libhdf5-dev gfortran python-tables \
                       python-matplotlib python-jinja2 autoconf libtool \
                       python-setuptools python-yaml apt-file python-pip \
		       ipython ipython-notebook python-pandas python-sympy \
		       vim emacs libblas-dev liblapack-dev libhdf5-dev \
		       libc6 libc6-dev gcc-multilib g++-multilib libx11-dev \
		       openconnect network-manager-openconnect \
		       network-manager-openconnect-gnome python-virtualenv
		       