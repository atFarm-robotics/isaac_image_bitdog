xhost +local:
docker run \
        -it \
        --rm \
        --name miss-pose \
        --privileged \
        --net=host \
        --env 'DISPLAY' \
        --env="QT_X11_NO_MITSHM=1" \
        --volume "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	--volume "$PWD/yolo_pose:/dev_ws/src/yolo_pose" \
        --volume "$PWD/gimbal_control:/dev_ws/src/gimbal_control" \
        --runtime nvidia \
        ros-yolo:alpha 