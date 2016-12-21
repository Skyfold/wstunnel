#! /bin/bash

cat <<EOT >> .netrc
machine api.github.com
  login Skyfold
  password $GITHUB_TOKEN
machine upload.github.com
  login skyfold
  password $GITHUB_TOKEN
EOT

tar czf wstunnel.tar.gz wstunnel
tar czf wstunnel_windows_x64.tar.gz wstunnel_windows_x64/
tar czf wstunnel_windows_x86.tar.gz wstunnel_windows_x86/
tar czf wstunnel_x86_64.tar.gz wstunnel_x86_64

./github_deploy.sh SkyFold/wstunnel v0.1.0.0 -- bin/*.tar.gz
