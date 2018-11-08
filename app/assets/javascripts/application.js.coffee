//= require lib/jquery-3.3.1
//= require lib/popper
//= require lib/bootstrap-4.1.3
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$ ->
  $('.btn[data-target="#choose_folder"]').on('click', (e) ->
    e.preventDefault

    $.ajax({
      type: 'POST',
      url: 'storage/root/list',
      dataType: 'json',
      success: (resp) ->
        if resp.success
          list_el = $('#choose_folder .modal-body > .list-group')
          
          list_el.empty
          list_el.append """<a class="folder-btn list-group-item list-group-item-action" href="#" role="button" data-folder-id="#{file.id}">#{file.name}</a>""" for file in resp.results
    })
  )

  $('#choose_folder .folder-btn').on('click', (e) ->
    e.preventDefault
  )