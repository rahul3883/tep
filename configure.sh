#!/bin/bash

PACKAGE_PATH=$1
PROJECT_NAME=$2

mkdir $PROJECT_NAME
cd $PROJECT_NAME
npm init -y
npm i typescript -D
npm i ts-node -D
npm i nodemon -D
npm i eslint -D
npm i @typescript-eslint/parser -D
npm i @typescript-eslint/eslint-plugin -D
npm i prettier -D
npm i eslint-config-prettier -D
npm i eslint-plugin-prettier -D
npm i @types/node -D
cp $PACKAGE_PATH/samples/sample-tsconfig.json tsconfig.json
cp $PACKAGE_PATH/samples/sample-eslintrc .eslintrc
cp $PACKAGE_PATH/samples/sample-prettierrc .prettierrc
cp -R $PACKAGE_PATH/samples/src ./
echo "$PROJECT_NAME configured successfully"
