

const { exec } = require('child_process')

function errorLog(error, stdout, stderr)
{
	if(stderr)
	{
		console.log(stderr);
	}
}

exec(`jekyll build`, {
  cwd: '../../'
  }, errorLog);

exec(`git add .`, {
  cwd: '../../github-pages'
  }, errorLog);

exec(`git commit -m "Publish: %Date% %Time:~0,5%"`, {
  cwd: '../../github-pages'
  }, errorLog);

exec(`git push origin master`, {
  cwd: '../../github-pages'
  }, errorLog);
