set -euxo pipefail

if [ -z ${2+x} ]; then
   echo "Script args: PATH_OF_FUNCTION FUNCTION_TAG [optional OUTPUT_IMAGE]"
fi

DOCKER_IMAGE="${3:-openwhisk-runtime-nativeimage-basefunction}"

cp -r mvnw/mvnw "$1"
cp -r mvnw/.mvn "$1"
DIR="$1" FUNCTION="$2" docker-compose up

mkdir -p "docker-builds/$2"

cp openwhisk-runtime-nativeimage-basefunction/Dockerfile "docker-builds/$2"
cp "$1/target/app" "docker-builds/$2"

cd "docker-builds/$2"
docker build . -t "davidfrickert/$DOCKER_IMAGE:$2"
docker push "davidfrickert/$DOCKER_IMAGE:$2"
