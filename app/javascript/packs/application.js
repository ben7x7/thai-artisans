// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


import 'bootstrap';

// const countDown = () => {
//   const countDate = new Date('May 9, 2022 12:00:00').getTime();
//   const now = new Date().getTime();
//   const gap = countDate - now;

//   const second = 1000;
//   const minute = second * 60;
//   const hour = minute * 60;
//   const day = hour * 24;

//   const textDay = Math.floor(gap / day);
//   const textHour = Math.floor((gap % day) / hour);
//   const textMinute = Math.floor((gap % hour) / minute);
//   const textSecond = Math.floor((gap % minute) / second);

//   document.querySelector('.day').innerText = textDay;
//   document.querySelector('.hour').innerText = textHour;
//   document.querySelector('.minute').innerText = textMinute;
//   document.querySelector('.second').innerText = textSecond;
// };

// setInterval(countDown, 1000);
