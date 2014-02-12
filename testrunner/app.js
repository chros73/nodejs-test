var port = process.env.PORT || 3000, http=require('http'), server;

server=http.createServer(function(req,res){
	res.writeHead(200, {'Content-Type':'text/plain'});
	res.write('Hello\r\n');
	res.write('portnumber:'+port+'\r\n');
	res.write('v0.0.13\r\n');
	res.end('World\r\n');
});
server.listen(port);

console.log('ry video http://goo.gl/9kuid '+port);
