#!/bin/bash

PACKAGE_PATH=$1
PROJECT_NAME=$2

mkdir $PROJECT_NAME
cd $PROJECT_NAME

npm init -y > /dev/null 2>&1

echo "Installing typescript-eslint and dependencies..."
npm i -D eslint @eslint/js @types/eslint__js typescript typescript-eslint > /dev/null 2>&1
echo "Installing @types/node..."
npm i @types/node -D > /dev/null 2>&1
echo "Installing tslib..."
npm i tslib -D > /dev/null 2>&1
echo "Installing prettier..."
npm i prettier -D > /dev/null 2>&1
echo "Installing eslint-config-prettier..."
npm i eslint-config-prettier -D > /dev/null 2>&1
echo "Installing tsx..."
npm i tsx -D > /dev/null 2>&1
echo "Installing nodemon..."
npm i nodemon -D > /dev/null 2>&1

cp $PACKAGE_PATH/samples/sample-tsconfig.json tsconfig.json
cp $PACKAGE_PATH/samples/sample-eslint.config.js eslint.config.js
cp $PACKAGE_PATH/samples/sample-prettierrc .prettierrc
cp -R $PACKAGE_PATH/samples/src ./
