# -------------------------------------------------------------------
# Dockerfile for node 15 and all dependencies for required to 
# run the node scripts with Edgegrid
#
# Instructions:
# =============
# 1. Clone the repository locally
# 
# 2. Build the image
#    $ docker build --tag edgegrid-node:latest .
#
# 3. Start the container, allow ro access to the local .edgerc and run
#    the app: “npm start”. This is an example:
#    $ docker run -it --rm --name edgegrid-node -v $HOME/.edgerc:/root/.edgerc:ro edgegrid-node:latest npm start 
#
# --------------------------------------------------------------------

FROM node:15.14.0-alpine3.10

ENV NODE_ENV=production

WORKDIR /app/akamai-edgegrid
ADD  . /app/akamai-edgegrid

RUN npm install --production