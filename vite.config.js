import { resolve } from 'node:path'
import { defineConfig } from 'vite'

const root = process.cwd()

export default defineConfig({
  build: {
    rollupOptions: {
      input: {
        jobs: resolve(root, 'index.html'),
        employers: resolve(root, 'employers.html'),
      },
    },
  },
})