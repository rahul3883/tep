#!/bin/bash

PACKAGE_PATH=$1
PROJECT_NAME=$2

mkdir $PROJECT_NAME
cd $PROJECT_NAME

npm init -y > /dev/null 2>&1

echo "Installing typescript..."
npm i typescript -D > /dev/null 2>&1
echo "Installing ts-node..."
npm i ts-node -D > /dev/null 2>&1
echo "Installing nodemon..."
npm i nodemon -D > /dev/null 2>&1
echo "Installing eslint..."
npm i eslint -D > /dev/null 2>&1
echo "Installing @typescript-eslint/parser..."
npm i @typescript-eslint/parser -D > /dev/null 2>&1
echo "Installing @typescript-eslint/eslint-plugin..."
npm i @typescript-eslint/eslint-plugin -D > /dev/null 2>&1
echo "Installing prettier..."
npm i prettier -D > /dev/null 2>&1
echo "Installing eslint-config-prettier..."
npm i eslint-config-prettier -D > /dev/null 2>&1
echo "Installing eslint-plugin-prettier..."
npm i eslint-plugin-prettier -D > /dev/null 2>&1
echo "Installing @types/node..."
npm i @types/node -D > /dev/null 2>&1

cp $PACKAGE_PATH/samples/sample-tsconfig.json tsconfig.json
cp $PACKAGE_PATH/samples/sample-eslintrc .eslintrc
cp $PACKAGE_PATH/samples/sample-prettierrc .prettierrc
cp -R $PACKAGE_PATH/samples/src ./
