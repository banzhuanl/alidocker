docker login --username= 657356100@qq.com
docker build -t test/myapp .
docker push 657356100@qq.com

docker run -itd --name borey centos:latest /bin/bash
