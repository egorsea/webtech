git config --global user.name "Egor Sadyrev"
git config --global user.email "egor.sadyrev@gmail.com"
sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
gunicorn -w 2 -c /home/box/web/etc/hello.py hello:app & curl 'http://127.0.0.1:8080/?a=1&a=2&b=3'
