$(document).ready(function(){
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
  $('.modal').modal();
});

$(document).on('turbolinks:load', function() {
  $('.modal').modal();
});
