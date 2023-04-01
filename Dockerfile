FROM node
RUN  useradd roboshop
RUN mkdir app
WORKDIR app
RUN chown roboshop /app
USER roboshop
COPY server.js app
# COPY node_modules /root/app/node_modules
ENTRYPOINT ["node","server.js"]
