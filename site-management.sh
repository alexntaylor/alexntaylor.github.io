#!/bin/bash

# Quarto Site Management Script for Alexander N. Taylor's Website

echo "Quarto Site Management Script"
echo "============================="

case $1 in
  "preview")
    echo "Starting Quarto preview..."
    quarto preview --port 4000
    ;;
  "build")
    echo "Building Quarto site..."
    quarto render
    ;;
  "clean")
    echo "Cleaning build artifacts..."
    rm -rf _site/
    rm -rf .quarto/
    echo "Clean complete."
    ;;
  "deploy")
    echo "Building and committing site..."
    quarto render
    git add -A
    git commit -m "Update site content"
    git push origin gh-pages
    echo "Site deployed!"
    ;;
  *)
    echo "Usage: $0 {preview|build|clean|deploy}"
    echo ""
    echo "Commands:"
    echo "  preview  - Start local development server"
    echo "  build    - Build the site"
    echo "  clean    - Clean build artifacts"
    echo "  deploy   - Build and deploy to GitHub Pages"
    ;;
esac
