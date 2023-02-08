git config --global user.name "Your Name"
git config --global user.email "your_email@whatever.com"
sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
gunicorn --bind='0.0.0.0:8080' hello:app
