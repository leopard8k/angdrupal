docker build -t angular .
docker run -d --name ang0 -p4200:4200 -v/app:/app angular sh -c "ng new --directory=/app app && (cd /app && ng serve --host 0.0.0.0 --port 4200 --disable-host-check)" 
