const express = require('express');
const router = express.Router();

router.get('/',(req,res) => {
  res.send('Holi boli pendejoidse');
});

module.exports = router;
