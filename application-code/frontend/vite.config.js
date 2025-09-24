import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// Load API URL from env, fallback to node-backend (K8s service name)
const API_URL = process.env.VITE_API_URL || "http://node-backend:4000";

export default defineConfig({
  plugins: [react()],
  server: {
    port: 5173,
    proxy: {
      '/api': {
        target: API_URL,
        changeOrigin: true,
      },
    },
    allowedHosts: [
      'a3bb049a5e2804f2ab7e9242ad4f9c7f-1657005513.us-east-1.elb.amazonaws.com',
    ],
  },
});

