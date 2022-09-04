FROM node
WORKDIR /app

RUN apt update
RUN npm install -g typescript @angular/cli@latest

CMD ["npm", "start"]