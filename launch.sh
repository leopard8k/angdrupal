docker build -t angular - <Dockerfile
docker run -d --name ang0 -p4200:4200 -v $(pwd)/app:/app angular sh -c 'sleep `expr 6 \* 3600`' # bring up the server
docker exec -t ang0 sh -c "cd /app && npm install && npm ci" # install dependencies
docker exec -t ang0 sh -c "cs /app &&  ng serve --host 0.0.0.0 --port 4200 --disable-host-check" # launch the app
