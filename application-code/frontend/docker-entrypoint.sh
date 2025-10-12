#!/bin/sh
# Generate config.js with runtime env variables
cat <<EOF > /usr/share/nginx/html/config.js
window._env_ = {
  VITE_API_URL: "${VITE_API_URL}"
};
EOF

echo "✅ Injected runtime config: VITE_API_URL=${VITE_API_URL}"

# Start Nginx
exec nginx -g 'daemon off;'

