FROM OpenJDK:
WORKDIR /APP
COPY . .

CMD['java','-jar','my-app-1.0-SNAPSHOT.jar']