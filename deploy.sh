#! /bin/bash

cat <<EOT >> .netrc
machine api.github.com
  login Skyfold
  password $GITHUB_TOKEN
machine upload.github.com
  login skyfold
  password $GITHUB_TOKEN
EOT

./github_deploy.sh SkyFold/wstunnel v0.1.0.0 -- bin/*
