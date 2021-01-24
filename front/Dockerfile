FROM node:10-alpine as builder
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build --prod --outputPath=./dist/

FROM bunkerity/bunkerized-nginx
COPY --from=builder /app/dist/tlcfront /www
