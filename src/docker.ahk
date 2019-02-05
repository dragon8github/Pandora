!g::
	Menu, DockerMenu, Add, docker ps -a, DockerMenuHandler2
	Menu, DockerMenu, Add, docker images, DockerMenuHandler2
	Menu, DockerMenu, Add, docker start <container>, DockerMenuHandler2
	Menu, DockerMenu, Add, docker stop <container>, DockerMenuHandler2
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
	
	Menu, DockerMenu, Show
	Menu, DockerMenu, DeleteAll
return

DockerMenuHandler2:
v := A_ThisMenuItem
Sleep, 50
Send, {Text}%v%
return



DockerMenuHandler:
v := A_ThisMenuItem
Var := 
if (v == "") {
Var = 
(
)
}
code(Var)
return
