git clone https://github.com/LuisDistribuida2023/DeberDistribuida.git && 
cd ./app && cd ./app-authors && gradlew quarkusBuild && 
docker build -t lebriones/app-authors:1.0.0 . && 
cd .. && 
cd ./app-books && gradlew installDist && 
gradlew copyLibs && 
docker build -t lebriones/app-books:1.0.0 . && 
cd .. && 
cd ./app-web && gradlew installDist && gradlew copyLibs && 
docker build -t lebriones/app-web:1.0.0 . && docker push lebriones/app-web:1.0.0 && 
docker push lebriones/app-books:1.0.0 && docker push lebriones/app-authors:1.0.0 && cd .. && docker-compose up
