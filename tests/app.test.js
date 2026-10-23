const request = require('supertest');
const app = require('../src/app');

describe('Testes de Integracao da API', () => {
  it('Deve retornar status 200 na rota /health', async () => {
    const res = await request(app).get('/health');
    expect(res.statusCode).toEqual(200);
    expect(res.body).toHaveProperty('status', 'UP');
  });

  it('Deve retornar as informacoes da disciplina na rota /api/info', async () => {
    const res = await request(app).get('/api/info');
    expect(res.statusCode).toEqual(200);
    expect(res.body.fase).toBe(1);
  });
});