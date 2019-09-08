const express = require('express');
const router = express.Router();
const passport = require('passport');

router.get('/signup', (req, res) =>{
  res.render('auth/signup');
});

//router.post('/signup', (req,res) =>{
//  passport.authenticate('local.signup', {
//    successRedirect: '/profile',
//    failureRedirect: '/signup',
//    failureFlash: true
//  })
//  res.send('rescibido');
//});

//Other way
 router.post ('/signup', passport.authenticate('local.signup', {
   successRedirect: '/profile',
   failureRedirect: '/signup',
   failureFlash: true
 }));

router.get('/profile', (req,res) => {
  res.send('This is ur Prof');
});

module.exports = router;
