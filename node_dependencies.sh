#!/bin/bash

# frontend
echo "Installing dependencies of frontend server..."
cd frontend
npm i
cd ..

# backend
echo "Installing dependencies of backend server..."
cd backend
npm i
cd ..
