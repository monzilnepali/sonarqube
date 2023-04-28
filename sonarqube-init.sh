# create a directory on host
path1=$(pwd)/sonarqube-data
path2=$(pwd)/server_data/sonarqube/extensions


mkdir -p $path1
mkdir -p $path2

docker create  \
    --name nodal-sonarqube \
    -p 9000:9000 \
    -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true \
    -e SONARQUBE_HOME=/sonarqube-data \
    -v /PERSISTENT_DISK/sonarqubeVolume:/sonarqube-data \
    sonarqube


echo "Sonar qube starting at http://localhost:9000"
