#!/bin/bash

echo
echo "----------------------------------------"
echo
echo "Bundling..."
echo
bundle install
echo
echo "----------------------------------------"
echo
echo
echo "----------------------------------------"
echo
echo "Precompiling assets..."
echo
RAILS_ENV=production bundle exec rails assets:precompile
echo
echo "----------------------------------------"
echo
echo
echo "----------------------------------------"
echo
echo "Deploying,,,"
echo
gcloud app deploy
echo
echo "----------------------------------------"
echo
echo "DONE!"
echo