#!/bin/sh
set -eu
# Install the platform adapter only in the Cloudflare build environment.
npm install --no-save @opennextjs/cloudflare@latest wrangler@latest
npm test
npx opennextjs-cloudflare build
