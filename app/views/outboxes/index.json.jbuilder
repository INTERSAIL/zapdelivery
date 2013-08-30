json.array!(@outboxes) do |outbox|
  json.extract! outbox, :destinatario, :oggetto, :messaggio, :allegato, :data_invio, :stato, :data_stato, :risposta
  json.url outbox_url(outbox, format: :json)
end
