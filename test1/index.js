var express = require('express');

var hello = express();

hello.get('/',function(req,res){
	res.sendFile(__dirname + '/index.html');
	});

hello.get('/domTest.html',function(req,res){
	res.sendFile(__dirname + '/domTest.html');
	});

hello.get('/bomTest.html',function(req,res){
	res.sendFile(__dirname+'/bomTest.html');
});

hello.get('/tabTest.html',function(req,res){
	res.sendFile(__dirname+'/tabTest.html');
});

hello.get('/nav.html',function(req,res) {
	res.sendFile(__dirname+'/nav1.html');
});

hello.use(express.static(__dirname));

hello.listen(8080,function(){
	console.log('port 8080 is running');
	});	