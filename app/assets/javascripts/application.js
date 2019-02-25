//= require lib/jquery-3.3.1
//= require lib/bootstrap-4.1.3
//= require lib/popper
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  $('#add-storage-folder-btn').on('click', function(e) {
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
          var list_el = $('#storage-folders .modal-body');

          list_el.empty();

          for (var i = 0; i < resp.results.length; i++) {
            var file = resp.results[i];

            list_el.append('<a class="folder-btn list-group-item list-group-item-action" href="#" role="button" data-folder-id="' + file.id + '">' + file.name + '</a>');
          }
        }
      }
    });
  });

  $('#storage-folders').on('click', '.folder-btn', function(e) {
    e.preventDefault();

    console.log($(this).data('folder'));

    $.ajax({
      type: 'POST',
      url: 'folders/add',
      dataType: 'json',
      error: function(jqXHR, textStatus, errorThrown) {
        //
      },
      success: function(resp, textStatus, jqXHR) {
        if (resp.success) {
          console.log(resp.results);
        }
      }
    });
  });
});