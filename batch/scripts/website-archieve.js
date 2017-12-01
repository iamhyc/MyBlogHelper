

const { exec } = require('child_process')
const readlineSync = require('readline-sync');

var pass1, pass2;

verified = false;

while(!verified)
{
  pass1 = readlineSync.question('Password: ', {hideEchoBack: true});
  pass2 = readlineSync.question('Password Again: ', {hideEchoBack: true});

  if(pass1 === pass2)
  {
    verified = true;
  }
  else
  {
    console.log();
  }
}

const cmd = `7z a -t7z ./website.7z ./website/* -p${pass1}`

exec(cmd, {
  cwd: '../../'
  }, (error, stdout, stderr)=>{
    if(stderr)
      console.log(stderr)
    else
      console.log("Successful.")
  });
