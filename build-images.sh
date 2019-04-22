TAG="3.7.0"

# docker build -t ryanzl2018/rabbitmq-base:$TAG base
docker build -t ryanzl2018/rabbitmq-server:$TAG server

docker tag ryanzl2018/rabbitmq-server:$TAG ryanzl2018/rabbitmq-server:$TAG

#登录dockerhub
#docker login
docker push  ryanzl2018/rabbitmq-server
