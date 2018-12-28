sudo docker login --username=657356100@qq.com registry.cn-hangzhou.aliyuncs.com      #用户名为阿里云账号全名  
docker build -t registry.cn-hangzhou.aliyuncs.com/wfj/borey:0.2 .  #-t 指定image文件的名字为docker_tag,用冒号指定标签，默认latest  
sudo docker push registry.cn-hangzhou.aliyuncs.com/wfj/borey:0.2  

docker run -itd --name borey --privileged=true registry.cn-hangzhou.aliyuncs.com/wfj/borey:0.2 bash -c 'sh /home/admin/.start.sh && tailf /dev/null'
#-it 容器的 Shell 映射到当前的 Shell，然后你在本机窗口输入的命令，就会传入容器  
#docker_demo:0.1 image 文件的名字  
#/bin/bash 容器启动以后，内部第一个执行的命令。这里是启动 Bash，保证用户可以使用 Shell  
#--privileged=true 使container内的root拥有真正的root权限  
docker exec -it borey /bin/bash   
#-it 以交互模式进入容器并执行容器中的脚本  
sudo docker tag [ImageId] registry.cn-hangzhou.aliyuncs.com/wfj/borey:[镜像版本号]  #修改镜像名称  



docker pull name[:Tag]            #从镜像仓库中拉取或者更新指定镜像  
docker image ls                   #列出本机所有image文件  
docker image rm [imageName]       #删除image文件  
docker ps              	          #列出容器  
docker stop name  	          #停止容器  
docker rm name          	  #删除容器  
docker logs name		  #查看容器标准输出  
docker rmi <image_id>             #删除image镜像         docker rmi $(docker images | grep "^<none>" | awk "{print $3}")  
