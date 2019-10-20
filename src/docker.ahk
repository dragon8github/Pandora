!g::
	Menu, DockerMenu, Add, docker ps -a, DockerMenuHandler2
	Menu, DockerMenu, Add, docker images, DockerMenuHandler2
	Menu, DockerMenu, Add, docker start <container>, DockerMenuHandler2
	Menu, DockerMenu, Add, docker stop <container>, DockerMenuHandler2
	Menu, DockerMenu, Add, docker restart <container>, DockerMenuHandler2
	Menu, DockerMenu, Add, docker rmi <IMAGE>, DockerMenuHandler2
	Menu, DockerMenu, Add, docker stop <container> && docker rm <container>, DockerMenuHandler2
	
	Menu, DockerMenu, Add
	Menu, DockerMenu, Add

	Menu, DockerMenu, Add, docker exec -it <container> /bin/bash, DockerMenuHandler2
	Menu, DockerMenu, Add, docker exec <container> echo 123, DockerMenuHandler2

	Menu, DockerMenu, Add
	Menu, DockerMenu, Add

	Menu, DockerMenu, Add, docker cp /root/php/www/index.html <container>:/var/www/, DockerMenuHandler2
	Menu, DockerMenu, Add, docker cp <container>:/var/www/ /root/php/, DockerMenuHandler2


	Menu, DockerMenu, Add
	Menu, DockerMenu, Add
	
	Menu, DockerMenu, Add, docker build -t <name> ., DockerMenuHandler2
	Menu, DockerMenu, Add, docker history <image>, DockerMenuHandler2
	
	Menu, DockerMenu, Add
	Menu, DockerMenu, Add

	Menu, DockerMenu, Add, docker run -it --rm --name myphp php:7.2.4-cli-alpine3.7 php -m, DockerMenuHandler2
	Menu, DockerMenu, Add, docker run --privileged -d -p 8080:80 --name myhttpd -v /root/myweb:/var/www/html centos:httpd /usr/sbin/init, DockerMenuHandler2
	Menu, DockerMenu, Add, docker run --name mynginx --privileged -p 9090:80 -v /root/nginx/conf/nginx.conf:/etc/nginx/nginx.conf -v /root/nginx/www/:/usr/share/nginx/html/ -d centos:nginx, DockerMenuHandler2
	

	Menu, DockerMenu, Add
	Menu, DockerMenu, Add
	
	Menu, DockerMenu, Add, ps -ef | grep nginx, DockerMenuHandler2
	Menu, DockerMenu, Add, 默认的www目录：/usr/local/nginx/html, DockerMenuHandler
	Menu, DockerMenu, Add, nginx默认路径：/usr/local/nginx/sbin/nginx, DockerMenuHandler
	Menu, DockerMenu, Add, nginx配置路径：/usr/local/nginx/conf/nginx.conf, DockerMenuHandler
	Menu, DockerMenu, Add, nginx -s reload 重启 nginx, DockerMenuHandler
	Menu, DockerMenu, Add, nginx -t 测试配置是否有语法错误，并且获取配置位置, DockerMenuHandler
	Menu, DockerMenu, Add, nginx server 端口配置, DockerMenuHandler3

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
