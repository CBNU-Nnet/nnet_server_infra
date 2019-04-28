# nnet_server_infra
http://nnet.cbnu.ac.kr docker &amp; terraform infrastructure


**Nest.net 도커 이미지 저장소**

----
 **내용**
  + Nest.net 도커 베이스 이미지 저장소. 
    1. Nginx(1.12.0)  
    2. PHP(7.0-fpm)
    
 **사용법**
  + git clone 후 빌드할 이미지가 있는 폴더로 이동. (ex cd nginx)
  ```bash
    docker build --no-cache --force-rm=true -t seansin/{nginx/php5-fpm/ubuntu}:latest .
  ```
 **Related Works**
 
 상당부분 김충섭 개발자의 DockerFile을 참고하였음.
 이 도커 이미지와 의존성을 갖는 이미지들은 1번 주석에서 받을 수 있음.
  + [Dailyworker's DockerFile](https://github.com/dailyworker/DockerFile) 
  + [김충섭 개발자의 DockerFile](https://github.com/subicura/Dockerfiles)
