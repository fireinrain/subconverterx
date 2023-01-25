# build docker image
docker build -t subconverter:v1.0.0 .

#tag name
docker tag subconverter:v1.0.0 liuzy/subconverter:latest

# push to docker hub
docker push liuzy/subconverter:latest

# clean docker images
# shellcheck disable=SC2006
imagesId=`docker images | grep subconverter | awk '{print $3}'`
echo $imagesId
for str in $imagesId
do
  docker rmi $str -f
done