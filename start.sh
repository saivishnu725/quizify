#!/bin/bash

# Start frontend
echo "Starting frontend server..."
cd frontend
npm start &
cd ..

# Start backend
echo "Starting backend server..."
cd backend
npm start &
cd ..
