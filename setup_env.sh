#!/bin/bash

# Script to create and set up the 'growth' virtual environment for Mac/Linux
# This script creates a virtual environment, activates it, and installs all dependencies

set -e  # Exit on error

echo "========================================="
echo "Setting up 'growth' virtual environment"
echo "========================================="

# Check if Python 3 is available
if ! command -v python3 &> /dev/null; then
    echo "Error: Python 3 is not installed or not in PATH"
    echo "Please install Python 3 and try again"
    exit 1
fi

# Display Python version
PYTHON_VERSION=$(python3 --version)
echo "Found: $PYTHON_VERSION"

# Check if virtual environment already exists
if [ -d "growth" ]; then
    echo "Warning: 'growth' virtual environment already exists"
    read -p "Do you want to remove it and create a new one? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "Removing existing 'growth' directory..."
        rm -rf growth
    else
        echo "Setup cancelled"
        exit 0
    fi
fi

# Create virtual environment
echo "Creating virtual environment 'growth'..."
python3 -m venv growth

# Activate virtual environment
echo "Activating virtual environment..."
source growth/bin/activate

# Upgrade pip
echo "Upgrading pip..."
pip install --upgrade pip

# Install requirements
echo "Installing dependencies from requirements.txt..."
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
    echo ""
    echo "========================================="
    echo "Setup completed successfully!"
    echo "========================================="
    echo ""
    echo "To activate the virtual environment, run:"
    echo "  source growth/bin/activate"
    echo ""
    echo "To deactivate when you're done, run:"
    echo "  deactivate"
else
    echo "Error: requirements.txt not found"
    exit 1
fi
