docker-compose up
cp "../FunctionRunner/target/app" openwhisk-runtime-nativeimage-basefunction/
cd openwhisk-runtime-nativeimage-basefunction
docker build . -t "davidfrickert/openwhisk-runtime-nativeimage-basefunction:sleep"
docker push "davidfrickert/openwhisk-runtime-nativeimage-basefunction:sleep"
