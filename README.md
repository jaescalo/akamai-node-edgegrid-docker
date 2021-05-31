# akamai-node-edgegrid-docker
This example demonstrates how to build a docker image running Node.js with the [Akamai Edgegrid](https://github.com/akamai/AkamaiOPEN-edgegrid-node) dependency installed. 

*Keyword(s):* edgegrid, node, docker<br>

This demo also contains a very small Node.js project (list-network-lists.js) which lists all the Network Lists available by leveraging the [List Network Lists GET API call](https://developer.akamai.com/api/cloud_security/network_lists/v2.html#getlists)

# Requirements
* Basic Docker knowledge
* Basic Node.js projects knowledge
* [Akamai API credentials](https://developer.akamai.com/api/getting-started) and .edgerc file

# Setup
1. Clone this repository locally

2. Build the Docker image

`$ docker build --tag edgegrid-node:latest .`

For this image I'm using the node 15.14.0 image based on alpine3.0. When the build process executes the `npm install --production` command it will install all the depencies specified in the `package.json' file.

3. Start the container, allow read-only access to the local [`.edgerc`](https://developer.akamai.com/api/getting-started#edgercfile) file and run the app: `npm start`.

`$ docker run -it --rm --name edgegrid-node -v $HOME/.edgerc:/root/.edgerc:ro edgegrid-node:latest npm start`

In our `package.json` the start script is `node list-network-lists.js`
