echo "Launching $BUILD_NAME IN AMAZON ECS"
# ecs-cli configure --region us-west-1 --access-key $AWS_ACCESS_KEY --secret-key $AWS_SECRET_KEY --cluster spmia-tmx-dev
ecs-cli configure profile --profile-name "default" --access-key $AWS_ACCESS_KEY --secret-key $AWS_SECRET_KEY
ecs-cli configure --cluster spmia-tmx-dev --default-launch-type EC2 --region us-east-2b --config-name default
ecs-cli compose --file docker/aws-dev/docker-compose.yml up
rm -rf ~/.ecs
