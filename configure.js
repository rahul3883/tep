const { exec } = require('child_process');
const path = require('path');

const sep = path.sep;

const packagePath = __dirname;

const projectName = process.argv[2];

if (!projectName) {
  console.error('Please provide a project name');
  process.exit(1);
}

exec(
  `sh ${packagePath}${sep}configure.sh ${packagePath} ${projectName}`,
  (err, strout, stderr) => {
    console.log(err);
  },
);
