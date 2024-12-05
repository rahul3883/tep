const { exec } = require('child_process');
const { sep } = require('path');
const fs = require('fs');

const packagePath = __dirname;

const projectName = process.argv[2];

if (!projectName) {
  console.error('Please provide a project name');
  process.exit(1);
}

const setupProcess = exec(`sh ${packagePath}${sep}configure.sh ${packagePath} ${projectName}`, () => {
  const packageJsonPath = `${process.env.PWD}${sep}${projectName}${sep}package.json`;
  const packageJson = require(packageJsonPath);
  packageJson.scripts = {
    start: "tsc && node dist/index.js",
    "start:dev": "nodemon --watch 'src/**/*.ts' --exec 'tsx' src/index.ts",
    build: "tsc",
    lint: "eslint .",
    "lint:fix": "eslint . --fix"
  };
  packageJson.type = "module";
  fs.writeFile(packageJsonPath, JSON.stringify(packageJson, null, 2), () => {
    console.log(`\n${projectName} configured successfully`);
  })
});
setupProcess.stdout.pipe(process.stdout);
