FROM osrf/ros:noetic-desktop-full

RUN apt-get update && apt-get install --quiet -y \
    git \
    vim \
    wget \
    curl \
    build-essential \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

SHELL ["/bin/bash", "-c"]
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
ENV ROS_DISTRO=noetic

RUN mkdir -p /catkin_ws/src
WORKDIR /catkin_ws

CMD ["bash"] #haha