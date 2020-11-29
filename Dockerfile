from node
expose 4200
run apt-get update &&\
  apt-get install -y net-tools &&\
  apt-get install -y vim && \
  apt-get install -y emacs-nox && \
  npm install -g @angular/cli
run ng new app --interactive=false --style=css --routing=false &&\
  cd /app &&\
  npm install --save bootstrap@3
