var EdgeGrid = require('edgegrid');

var eg = new EdgeGrid({
  path: '/root/.edgerc',
  section: 'default',
  debug: false
});

// List Network Lists
eg.auth({
  path: '/network-list/v2/network-lists',
  method: 'GET',
});

eg.send(function(error, response, body) {
    console.log(body);
});