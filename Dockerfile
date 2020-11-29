from node
expose 4200
run apt-get update &&\
  apt-get install -y net-tools &&\
  apt-get install -y vim && \
  npm install -g @angular/cli

