var http = require('http');
var handleRequest = function(request,response){
    console.log('Receive request for Url:' + request.url);
    response.writeHead(200);
    response.end('Hello world');

};
var www = http.createServer(handleRequest);
www.listen(8080);
