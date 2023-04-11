FROM node
RUN  useradd roboshop
RUN mkdir app
WORKDIR app
USER roboshop
COPY server.js /app
COPY node_modules/ /app/node_modules
RUN chown roboshop:roboshop -R /app
ENTRYPOINT ["node","server.js"]
