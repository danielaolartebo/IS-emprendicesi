/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  swcMinify: true,
}

module.exports = {
  experimental: {
    forceSwcTransforms: true,
  }
}

module.exports = nextConfig
