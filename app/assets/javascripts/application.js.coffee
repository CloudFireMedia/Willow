//= require lib/jquery-3.3.1
//= require lib/popper
//= require lib/bootstrap-4.1.3
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$ ->
  $.ajax({
    type: 'POST',
    url: 'storage/root/list',
    dataType: 'json',
    success: (resp) ->
      console.log(resp);
  })