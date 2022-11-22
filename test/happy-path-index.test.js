import { equal } from 'assert';
import { get } from './helpers/http.js'

describe('Index', function () {
  describe('GET /', function () {
    it('should have status 200', async function () {
      const data = await get('/');
			equal(data.status, 200);
    });
  });
});
