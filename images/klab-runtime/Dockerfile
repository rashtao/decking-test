FROM klab-base

# --- NODEJS ---
RUN mkdir /opt/nodejs && curl https://nodejs.org/dist/v0.12.7/node-v0.12.7-linux-x64.tar.gz | tar xvzf - -C /opt/nodejs --strip-components=1
ENV PATH $PATH:/opt/nodejs/bin
RUN npm install pm2 -g

