
$(document).on "page:change", ->
  nome_classe = $('body').attr "class"
  $('#btn_'+nome_classe).parent().addClass "active"

  $('#mainTable td').hover ->
    $(oTable).$('tr')
  $('#mainTable tbody').click (e) ->
    $(oTable.fnSettings().aoData).each (i,d) =>
      $(d.nTr).removeClass 'row_selected'
    $(e.target.parentNode).addClass('row_selected')

  oTable = $('#mainTable').dataTable {
    iDisplayLength: 25,
    oLanguage: {
      sUrl : '/assets/jquery.dataTables.italian.txt'
    }
  }

  modal = $('#appModal')
  modal.on 'shown.bs.modal', ->
    modal.find('.modal-body').outerHeight(modal.find('.modal-dialog').outerHeight() - modal.find('.modal-header').outerHeight())
