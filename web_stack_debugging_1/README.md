# Web stack debugging #1

Debugging a container where Nginx does not listen on port 80.

- `0-nginx_likes_port_80`: Bash script that restores the default site config, sets the listen port to 80 and restarts Nginx
