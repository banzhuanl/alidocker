/usr/sbin/init

name=borey
sed -i s/name/${name}/ /home/admin/.bashrc
source /home/admin/.bashrc

#/home/tops/bin/python /home/tops/bin/supervisord -c /home/admin/xonline_web_server/conf/supervisord_xonline.conf

