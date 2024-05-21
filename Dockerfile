From node:16

ENV NODE_ENV development
ENV DATABASE_URL mysql://angga:P4ssw0rd@192.168.100.7:3306/dumbplay

WORKDIR /usr/src/app
COPY . .

RUN npm install
RUN npm install sequelize-cli -g
RUN npx sequelize-cli db:migrate --env development
EXPOSE 5000
CMD ["npm", "start"]
