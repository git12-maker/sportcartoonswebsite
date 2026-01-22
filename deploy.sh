#!/bin/bash
# Deployment script for Sportcartoons website
# After creating the GitHub repository, run this script with your repository URL

echo "Please create a GitHub repository first at https://github.com/new"
echo "Then run this script with your repository URL as an argument"
echo ""
echo "Usage: ./deploy.sh https://github.com/username/repository-name.git"
echo ""

if [ -z "$1" ]; then
    echo "Error: Please provide the GitHub repository URL"
    exit 1
fi

REPO_URL=$1

# Add remote and push
git remote add origin $REPO_URL
git branch -M main
git push -u origin main

echo ""
echo "✅ Code pushed to GitHub!"
echo ""
echo "To deploy to GitHub Pages:"
echo "1. Go to your repository on GitHub"
echo "2. Click Settings > Pages"
echo "3. Select 'main' branch as source"
echo "4. Your site will be available at: https://[username].github.io/[repository-name]"