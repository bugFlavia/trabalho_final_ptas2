const { Pool } = require('pg');

let connect = async function () {
  try {
    if (global.connection) {
      return Promise.resolve(global.connection);
    }

    const pool = new Pool({
      connectionString: 'postgres://ypqkvaeg:UGy4ASyqKhHUEG08Rx_FS3Zwe70qy6Vl@motty.db.elephantsql.com/ypqkvaeg'
    });

    global.connection = pool;
    return Promise.resolve(pool);
  } catch (error) {
    console.error('Erro ao estabelecer a conexão :', error);
    throw error;
  }
};

module.exports = { connect };
