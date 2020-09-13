!g::
	Menu, DockerMenu, Add, docker ps -a, DockerMenuHandler2
	Menu, DockerMenu, Add, docker images, DockerMenuHandler2
	Menu, DockerMenu, Add, docker start <container>, DockerMenuHandler2
	Menu, DockerMenu, Add, docker stop -f <container>, DockerMenuHandler2
	Menu, DockerMenu, Add, docker restart <container>, DockerMenuHandler2
	Menu, DockerMenu, Add, docker rmi <IMAGE>, DockerMenuHandler2
	Menu, DockerMenu, Add, docker stop <container> && docker rm <container>, DockerMenuHandler2
	
	Menu, DockerMenu, Add
	Menu, DockerMenu, Add

	Menu, DockerMenu, Add, docker exec -it <container> /bin/bash, DockerMenuHandler2
	Menu, DockerMenu, Add, docker exec <container> echo 123, DockerMenuHandler2

	Menu, DockerMenu, Add
	Menu, DockerMenu, Add

	Menu, DockerMenu, Add, docker cp tmpNginx:/etc/nginx/nginx.conf /home/dc2-user/config, DockerMenuHandler2


	Menu, DockerMenu, Add
	Menu, DockerMenu, Add
	
	Menu, DockerMenu, Add, docker build -t <name> ., DockerMenuHandler2
	Menu, DockerMenu, Add, docker history <image>, DockerMenuHandler2
	
	Menu, DockerMenu, Add
	Menu, DockerMenu, Add

	Menu, DockerMenu, Add, docker run, DockerMenuHandler2

	Menu, DockerMenu, Add
	Menu, DockerMenu, Add

	Menu, DockerMenu, Add, docker network ls,DockerMenuHandler2
	Menu, DockerMenu, Add, docker network create --driver=bridge --subnet=192.138.0.0/16 {模式名称},DockerMenuHandler2
	Menu, DockerMenu, Add, docker network inspect {网络模式},DockerMenuHandler2
	Menu, DockerMenu, Add, docker network disconnect --force {网络模式} {容器名称},DockerMenuHandler2

	Menu, DockerMenu, Add
	Menu, DockerMenu, Add

	Menu, DockerMenu, Add, ps -ef | grep nginx, DockerMenuHandler2
	Menu, DockerMenu, Add, 默认的www目录：/usr/local/nginx/html, DockerMenuHandler
	Menu, DockerMenu, Add, nginx默认路径：/usr/local/nginx/sbin/nginx, DockerMenuHandler
	Menu, DockerMenu, Add, nginx配置路径：/usr/local/nginx/conf/nginx.conf, DockerMenuHandler
	Menu, DockerMenu, Add, nginx -s reload 重启 nginx, DockerMenuHandler
	Menu, DockerMenu, Add, nginx -t 测试配置是否有语法错误，并且获取配置位置, DockerMenuHandler
	Menu, DockerMenu, Add, nginx server 端口配置, DockerMenuHandler3

	Menu, DockerMenu, Add
	Menu, DockerMenu, Add

	Menu, DockerMenu, Add, docker + php-fpm + nginx, DockerMenuHandler3
	
	Menu, DockerMenu, Show
	Menu, DockerMenu, DeleteAll
return

DockerMenuHandler2:
v := A_ThisMenuItem
Sleep, 50
cs(v)
return

DockerMenuHandler3:
v := A_ThisMenuItem
Var := 
if (v == "") {
Var = 
(
)
}

if (v == "docker + php-fpm + nginx") {
Var =
(
https://hub.docker.com/_/php

尽量使用 alpine的版本

而我们需要用php启动一个服务，所以使用 fpm 版本。

在这里可以找到所有的tag版本：https://github.com/docker-library/docs/blob/master/php/README.md#supported-tags-and-respective-dockerfile-links

其他乱七八糟的我也不懂，反正我只找版本中带 fpm 和 alpine 关键字的。

docker pull php:7.3.11-fpm-alpine3.10


nginx 则简单多了，随便拉一个就好了。最好也拉 alpine 比较小
docker pull nginx:1.17.4-alpine


新建一个 /home/dc2-user/php 
index.html
echo 123 > index.html
index.php
echo 1234 > index.php
新建一个 /home/dc2-user/config
---
第一回：过河拆桥，工具人 Nginx 悲惨的一生
运行 nginx 容器，拷贝  nginx.conf，然后再删除容器
根据 nginx 镜像的文档，我们知道了：
配置文件 nginx.config 在：/etc/nginx/nginx.conf
网页文件放在：/usr/share/nginx/html
docker run --name tmpNginx --rm -d nginx:1.17.4-alpine
docker cp tmpNginx:/etc/nginx/nginx.conf /home/dc2-user/config
docker stop tmpNginx

配置了 --rm 参数的容器，会在停止以后，自动销毁。
---
第二回：我 Nginx 只想过普普通通的生活
先让 nginx 能运行普通的 html 文件
/home/dc2-user/php 是我的目录，里面放着 index.html 随便写点东西，待会方便测试。
docker run --name htmlNginx -d --rm \
-v /home/dc2-user/php:/usr/share/nginx/html \
-p 6634:80 \
nginx:1.17.4-alpine

curl localhost:6634

测试成功后，我们依然把它停止删除：docker stop htmlNginx
---
第三回：NetWork 牵桥搭线，Nginx 暗度陈仓
ngxin.config 加入 FPM 相关配置。准备与 FPM 勾结。
创建 docker network ，准备让 Nginx 和 Php-FPM 珠胎暗结。

一、本地 nginx.config
# include /etc/nginx/conf.d/*.conf;
server {
    listen 80;
    location / {
        root  /usr/share/nginx/html;
        index  index.html index.htm index.php;
    }
    location ~ \.php$ {
         root /php;
        fastcgi_pass 192.138.0.2:9000;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params; 
    }
}


请注意，这里配置了 /php 为编译目录，所以下文也映射到容器的 /php 目录中了。

二、创建 network
docker network ls
docker network create --driver=bridge --subnet=192.138.0.0/16 fpm-nginx
---
第四回：FPM 来袭，Nginx 最终形态
启动 php-fpm
docker run -d --rm --name fpm \
--network fpm-nginx --ip 192.138.0.2 \
-v /home/dc2-user/php:/php \
php:7.3.11-fpm-alpine3.10


启动 nginx
docker run --name fpmNginx -d --rm \
-v /home/dc2-user/config/nginx.conf:/etc/nginx/nginx.conf \
-v /home/dc2-user/php:/usr/share/nginx/html \
--network fpm-nginx \
-p 6634:80 \
nginx:1.17.4-alpine


测试一下
curl localhost:6634/index.php
)
txtit(Var)
return
}

if (v == "docker run") {
_send("docker run", true, true)
return
}

if (v == "nginx server 端口配置") {
Var = 
(
server {
	listen       6080;
	server_name  _;
	index index.html index.htm ;
	root /usr/local/nginx/html;


	location ^~ /api/ {
			proxy_pass    http://19.104.40.37:8082/api/;
	}

	location / {
			 try_files $uri /index.html;
	}
}
)
}

code(Var)
return


DockerMenuHandler:
v := A_ThisMenuItem
Var := 
if (v == "") {
Var = 
(
)
}


if (v == "默认的www目录：/usr/local/nginx/html") {
Var = 
(
/usr/local/nginx/html
)
}


if (v == "nginx默认路径：/usr/local/nginx/sbin/nginx") {
Var = 
(
/usr/local/nginx/sbin/nginx
)
}

if (v == "nginx配置路径：/usr/local/nginx/conf/nginx.conf") {
Var = 
(
/usr/local/nginx/conf/nginx.conf
)
}


if (v == "nginx -s reload 重启 nginx") {
Var = 
(
"nginx -s reload"
)
}

if (v == "nginx -t 测试配置是否有语法错误，并且获取配置位置") {
Var = 
(
"nginx -t"
)
}


cs(Var)
return


::docker run::
Var =
(
docker run --name phpNginx -d --rm \
-v /home/dc2-user/php:/usr/share/html \
-p 6634:80 \
nginx:1.17.4-alpine
)
code(Var)
return

::docker::
Var =
(
### 运行容器
docker run -it -p 8888:80 --name <新建容器名> -v $(pwd):/usr/share/nginx/html <镜像id> bash

### 进入容器
docker exec -it <容器id> bash

### 删除容器
docker stop <容器id> && docker rm <容器id>


### 容器打包为镜像
docker commit -a "lee" -m "node-nginx" <容器id> node-nginx:v1.0

### 一键运行 nginx
docker run --rm -p 80:80 nginx

### nginx 启动服务
nginx -t
nginx -c /etc/nginx/nginx.conf
nginx -s reload
ps -ef | grep nginx

### nginx 设置启动 /etc/nginx/sites-available/default
vim /etc/nginx/sites-available/default
/var/www/html 修改为 /usr/share/nginx/html
---

docker run -itd -p 8888:80 -p 8080:8080 --name node-nginx110 -v $(pwd):/usr/share/nginx/html 582b2bac91af bash

docker run -itd -p 8888:80 --name node-nginx110 f8fbdcd0d9e6 bash

docker stop 19e077a22987 && docker rm 19e077a22987

docker exec -it f8fbdcd0d9e6 bash
)
txtit(Var)
return