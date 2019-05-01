"use strict";

$(document).on('turbolinks:load', function () {
    CondominioApp.scrollspy();
});

CondominioApp.scrollspy = function () {
  $('body').scrollspy({
    target: '#mainNav',
    offset: 57
  });
}
