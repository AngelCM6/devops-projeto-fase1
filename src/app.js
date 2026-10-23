const express = require('express');
const app = express();

app.use(express.json());

app.get('/health', (req, res) => {
  res.status(200).json({ status: 'UP', timestamp: new Date().toISOString() });
});

app.get('/api/info', (req, res) => {
  res.status(200).json({
    projeto: 'DevOps na Pratica - PUCRS',
    fase: 1,
    status: 'Pipeline CI e IaC operacionais'
  });
});

module.exports = app;