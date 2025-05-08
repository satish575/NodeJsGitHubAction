#!/bin/bash
cd NodeJsGitHubAction
sudo apt install nginx
sudo tee /etc/nginx/sites-available/node-app < nginxconf
sudo ln -s /etc/nginx/sites-available/node-app  /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl start nginx
npm install
sudo npm install -g pm2
pm2 start index.js