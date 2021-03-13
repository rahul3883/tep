#!/bin/bash

PACKAGE_PATH=$1
PROJECT_NAME=$2

mkdir $PROJECT_NAME
cd $PROJECT_NAME

npm init -y

echo "Installing typescript..."
npm i typescript -D
echo "\n"
echo "Installing ts-node..."
npm i ts-node -D
echo "\n"
echo "Installing nodemon..."
npm i nodemon -D
echo "\n"
echo "Installing eslint..."
npm i eslint -D
echo "\n"
echo "Installing @typescript-eslint/parser..."
npm i @typescript-eslint/parser -D
echo "\n"
echo "Installing @typescript-eslint/eslint-plugin..."
npm i @typescript-eslint/eslint-plugin -D
echo "\n"
echo "Installing prettier..."
npm i prettier -D
echo "\n"
echo "Installing eslint-config-prettier..."
npm i eslint-config-prettier -D
echo "\n"
echo "Installing eslint-plugin-prettier..."
npm i eslint-plugin-prettier -D
echo "\n"
echo "Installing @types/node..."
npm i @types/node -D

cp $PACKAGE_PATH/samples/sample-tsconfig.json tsconfig.json
cp $PACKAGE_PATH/samples/sample-eslintrc .eslintrc
cp $PACKAGE_PATH/samples/sample-prettierrc .prettierrc
cp -R $PACKAGE_PATH/samples/src ./
echo "\n$PROJECT_NAME configured successfully"
