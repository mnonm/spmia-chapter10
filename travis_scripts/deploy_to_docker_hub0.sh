echo "Pushing service docker images to docker hub ...."
#docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push ppsosqq/tmx-authentication-service:$BUILD_NAME
docker push ppsosqq/tmx-licensing-service:$BUILD_NAME
docker push ppsosqq/tmx-organization-service:$BUILD_NAME
docker push ppsosqq/tmx-confsvr:$BUILD_NAME
docker push ppsosqq/tmx-eurekasvr:$BUILD_NAME
docker push ppsosqq/tmx-zuulsvr:$BUILD_NAME
