FROM unit:node

COPY html/ /www/html/

ADD config.json /docker-entrypoint.d/
ADD server.js /www/
ADD package.json /www/



WORKDIR /www/
RUN npm install

EXPOSE 8080
EXPOSE 8765

CMD ["unitd","--no-daemon","--control","127.0.0.1:9999"] 
