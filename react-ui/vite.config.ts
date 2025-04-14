import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import path from 'path';

// ✅ Set base path to /frontend for correct production asset loading
export default defineConfig({
  base: '/frontend/',
  plugins: [react()],
  build: {
    outDir: '../src/main/resources/static/frontend',
    emptyOutDir: true,
  },
  resolve: {
    alias: {
      '@': path.resolve(__dirname, './src'),
    },
  },
  server: {
    port: 3000,
    proxy: {
      '/api': 'http://localhost:8082', // Adjust this port if your Spring Boot is different
    },
  },
});
