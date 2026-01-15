#!/bin/bash

echo "🚀 Starting MERN Full-Stack Application..."
echo ""

# Check if dependencies are installed
if [ ! -d "node_modules" ]; then
    echo "📦 Installing root dependencies..."
    npm install
fi

if [ ! -d "Our-Product-Backend/node_modules" ]; then
    echo "📦 Installing backend dependencies..."
    cd Our-Product-Backend && npm install && cd ..
fi

if [ ! -d "U-DEVS-Project/node_modules" ]; then
    echo "📦 Installing frontend dependencies..."
    cd U-DEVS-Project && npm install && cd ..
fi

echo ""
echo "✅ All dependencies installed!"
echo ""
echo "🔥 Starting both servers..."
echo "   - Backend: http://localhost:5000"
echo "   - Frontend: http://localhost:5173"
echo "   - API Docs: http://localhost:5000/api-docs"
echo ""
echo "Press Ctrl+C to stop both servers"
echo ""

# Start both servers
npm run dev