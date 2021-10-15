set -euxo pipefail

if [ -z ${2+x} ]; then
   echo "Script args: PATH_OF_FUNCTION FUNCTION_TAG [optional OUTPUT_IMAGE]"
fi

DOCKER_IMAGE="${3:-'openwhisk-runtime-nativeimage-basefunction'}"

cp -r mvnw/mvnw "$1"
cp -r mvnw/.mvn "$1"
FUNCTION="$1" docker-compose up
cp "$1/target/app" openwhisk-runtime-nativeimage-basefunction/
cd openwhisk-runtime-nativeimage-basefunction
docker build . -t "davidfrickert/$DOCKER_IMAGE:$2"
docker push "davidfrickert/$DOCKER_IMAGE:$2"
