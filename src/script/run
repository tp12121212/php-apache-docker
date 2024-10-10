
export APP_NAME="php-apache-docker"
export RESOURCE_GROUP="kc-aci-rig"
export LOCATION="australiaeast"
export ENVIRONMENT="php-appenv"
export GITHUB_USERNAME="tp12121212"
export ACR_NAME="phpacr"$GITHUB_USERNAME


az containerapp up --name $APP_NAME --resource-group $RESOURCE_GROUP --location $LOCATION --environment $ENVIRONMENT --context-path ./src --repo php-apache-docker


az containerapp up --name $APP_NAME --location $LOCATION --environment $ENVIRONMENT --source .