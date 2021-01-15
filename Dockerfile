FROM node:latest
EXPOSE 4200
RUN apt-get -y update
RUN apt-get install -y curl

RUN curl -L https://www.npmjs.com/install.sh | sh 
RUN npm install -g @angular/cli

COPY ./front ./front
WORKDIR ./front

CMD ["ng", "serve","--host","0.0.0.0"]
