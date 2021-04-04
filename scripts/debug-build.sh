rm .env
# DEVELOPMENT, PRODUCTION
echo "BUILD_TYPE=DEVELOPMENT" >> .env

npx react-native start --reset-cache
