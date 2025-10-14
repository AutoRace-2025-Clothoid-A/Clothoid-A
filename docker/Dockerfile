FROM osrf/ros:noetic-desktop-full

ENV ROS_DISTRO=noetic
ENV ROS_MASTER_URI=http://localhost:11311
ENV ROS_HOSTNAME=localhost

RUN apt-get update && apt-get install --quiet -y \
    git \
    curl \
    wget \
    vim \
    unzip \
    zip \
    htop \
    net-tools \
    iputils-ping \
    locales \
    sudo \
    bash-completion \
    v4l-utils \
    build-essential \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-serial \
 && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    ros-noetic-ackermann-msgs \
    ros-noetic-vision-msgs \
    ros-noetic-serial \
    ros-noetic-joy \
    ros-noetic-robot-pose-ekf \
 && rm -rf /var/lib/apt/lists/*

RUN ln -sf /usr/bin/python3 /usr/bin/python

SHELL ["/bin/bash", "-c"]
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

RUN mkdir -p /catkin_ws/src
WORKDIR /catkin_ws

CMD ["bash"]