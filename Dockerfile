FROM node
RUN  useradd roboshop
RUN mkdir app
WORKDIR app
COPY server.js /app
COPY node_modules/ /app/node_modules
RUN chown roboshop:roboshop -R /app
USER roboshop
ENTRYPOINT ["node","server.js"]
