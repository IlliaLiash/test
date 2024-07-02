module.exports = {
  apps: [
    {
      name: 'server',
      script: 'dist/main.js',
      watch: false,
      instances: 1,
    },
  ],
};
