#!/bin/sh

if [ ! -d ".github/workflows" ]; then
echo "Starting setup github actions workflow"
mkdir -p .github/workflows/
cp -f mlops-workflows/*.yml .github/workflows/
cp -f mlops-workflows/*.toml .
rm -rf mlops-workflows
echo "Setup completed"

echo "Start pushing workflow to repository"
git add .github/workflows/*.yml
git add *.toml
git commit -m "Seting up GitHub workflows" --no-verify
git push --no-verify
echo "Configuration successfully pushed to remote"
else
echo "Github actions workflows already setup in the project"
fi
