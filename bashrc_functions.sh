
function sim-run()
{
    docker run -itd \
        --name=dev-sim \
        -h dev-sim-container \
        -v $HOME:/home/$USER \
        -v /var/docker.sock:/var/run/docker.sock \
        -v /etc/passwd:/etc/passwd:ro \
        -v /etc/group:/etc/group:ro \
        --user=$(id -u $USER):$(id -g $USER) \
        -e DISPLAY=$DISPLAY \
        --network host \
        sandbox-eda/dev-sim-container:latest
}


       # -e USER=$USER \
       # -e USERID=$(id -u) \

function sim-start() {
    docker restart dev-sim
}

function sim-enter()
{
    docker exec -it -u $(id -u $USER):$(id -g $USER) dev-sim bash
}

function sim-stop()
{
    docker stop dev-sim
    docker rm dev-sim
}