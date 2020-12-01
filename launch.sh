docker build -t angular - <Dockerfile
docker run -d --name ang0 -p4200:4200 -v $(pwd)/app:/app angular sh -c "cd /app && rm -fr node_modules package-lock.json && ng serve --host 0.0.0.0 --port 4200 --disable-host-check" #bring up the server
