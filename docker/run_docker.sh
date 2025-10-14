docker pull junspring/2025-autorace-clothoid-a

xhost +local:root

docker run -it --rm \
  --name yumi_cart_container \
  --net=host \
  --ipc=host \
  --privileged \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  -v ~/Clothoid-A:/root/catkin_ws \
  junspring/2025-autorace-clothoid-a:latest