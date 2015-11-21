$(document).ready(function() {

  $('.submit').on('click', submitButtonClicked)

  function returnLyricSearchResults(data){
    console.log(data)
  };

  function submitButtonClicked(event){
  var lyrics_search = $.ajax({
    url: '/',
    type: 'POST',
    data: {
      artist: $("input.artist").val(),
      song: $("input.song").val()
      }
  })
    .done( returnLyricSearchResults )};

});
