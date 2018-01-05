

const { exec } = require('child_process');
const fs = require('fs');
const readlineSync = require('readline-sync');

function errorLog(error, stdout, stderr)
{
	if(error)
	{
    console.log(error)
		console.log(stderr);
	}
}

console.log("====== Auto Publish Script ======")

pub_time = '' + new Date();
pub_time = pub_time.slice(0, pub_time.lastIndexOf(' '));

comments = "Publish: " + pub_time

do{
  tmp = ''
  tmp = readlineSync.question('Anything else? ', );
  comments += '\n' + tmp
}while(tmp!='');

console.log(comments)
fs.writeFileSync('../github-pages/.tmpfile', comments, 'utf8');
