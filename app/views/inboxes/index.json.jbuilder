json.array!(@inboxes) do |inbox|
  json.extract! inbox, :mittente, :numero_protocollo, :numero_pagine, :allegato_xid, :data_ricezione
  json.url inbox_url(inbox, format: :json)
end
