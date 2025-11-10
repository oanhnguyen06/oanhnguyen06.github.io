const bcrypt = require('bcryptjs');

const password = '13062004';
bcrypt.hash(password, 10, (err, hash) => {
    if (err) throw err;
    console.log('Hashed password:', hash);
});
