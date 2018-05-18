1 首先执行create_user_database中的相应命令创建pdns的mysql用户，如果修改了用户名和密码，需要修改对应的pdns.conf文件和config.inc.php文件中用户名和密码，数据库地址，端口号也需要先进性修改
2 执行powerdns.sql中的命令创建数据库表
3 将Dockerfile,config.inc.php,run.sh,pdns.conf放在同一目录下
4 在当前目录下执行"docker build -t wtown/pdns:1.1.1 . "命令生成docker镜像
5 启动镜像执行"docker run -it --name test-dns -p 8000:80 -d wtown/pdns:1.1.1"