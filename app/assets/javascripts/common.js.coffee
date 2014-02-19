
$(document).on "page:change", ->
  nome_classe = $('body').attr "class"
  $('#btn_'+nome_classe).parent().addClass "active"
  $('#mainTable').dataTable { iDisplayLength: 25 }

  modal = $('#appModal')
  modal.on 'shown.bs.modal', ->
    modal.find('.modal-body').outerHeight(modal.find('.modal-dialog').outerHeight() - modal.find('.modal-header').outerHeight())
