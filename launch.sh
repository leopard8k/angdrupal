docker build -t angular - <Dockerfile
docker run -d --name ang0 -p4200:4200 -v $(pwd)/app:/app angular sh -c 'sleep `expr 6 i\* 3600`' #bring up the server
docker exec -it ang0 sh -c "cd /app && npm ci && ng serve --host 0.0.0.0 --port 4200 --disable-host-check" #launch the app
