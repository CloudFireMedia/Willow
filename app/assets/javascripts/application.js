//= require lib/jquery-3.3.1
//= require lib/bootstrap-4.1.3
//= require lib/popper
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  $('.btn[data-target="#choose_folder"]').on('click', function(e) {
    e.preventDefault();

    $.ajax({
      type: 'POST',
      url: 'storage/root/list',
      dataType: 'json',
      error: function(jqXHR, textStatus, errorThrown) {
        //
      },
      success: function(resp, textStatus, jqXHR) {
        if (resp.success) {
          var list_el = $('#choose_folder .modal-body .list-group');
          
          list_el.empty();

          for (var file in resp.results) {
            list_el.append('<a class="folder-btn list-group-item list-group-item-action" href="#" role="button" data-folder-id="' + file.id + '">' + file.name + '</a>');
          }
        }
      }
    });
  });

  $('#choose_folder .folder-btn').on('click', function(e) {
    e.preventDefault();
  });
});