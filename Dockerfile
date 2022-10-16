FROM node:12.18.1
EXPOSE 3000
WORKDIR /app
COPY ["/src/protoPugApp/package.json", "/src/protoPugApp/package-lock.json*", "./"]
RUN npm install --save
COPY ./src/protoPugApp .
RUN chmod -R 555 /app
RUN useradd -ms /bin/bash admin
USER admin
CMD [ "sh", "start.sh" ]
