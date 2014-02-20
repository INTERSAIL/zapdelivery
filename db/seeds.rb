User.create!([
  {email: "alessandro2.fornasari@intersail.it", encrypted_password: "$2a$10$xFTojkR5kmibDuE0HNxt2.s0e3s.HDEZw9fjxbfbPPza8kFXwivN2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 13, current_sign_in_at: "2014-02-17 18:14:16", last_sign_in_at: "2014-02-17 16:20:58", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Alessandro"},
  {email: "federica.santicoli@intersail.it", encrypted_password: "$2a$10$ypukdLrmMwL2XTSv0/yOXe9pF1Aq4KfSPcNGsPPIf4FPF73wo.PPC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-10-21 14:41:03", last_sign_in_at: "2013-10-15 07:59:06", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Fede"}
])
Account.create!([
  {connection_string: "hrth tyhghtr bbrtbfb t rtbrtbdfgtr", customer_id: "", channel_id: 1, name: "Invio"},
  {connection_string: "sdasd asd fthyumnuthnfn", customer_id: "", channel_id: 2, name: "Spedizione full"},
  {connection_string: "xzccnzcnxnnnzcvcnxnxvnnxvnxnnnv", customer_id: "", channel_id: 2, name: "Spedizione standard"}
])
Assignment.create!([
  {user_id: 1, account_id: 1},
  {user_id: 1, account_id: 2},
  {user_id: 1, account_id: 3}
])
Attachment.create!([
  {xid: "allegato", name: "allegato", content_type: "application/pdf"},
  {xid: "fattura", name: "Fattura", content_type: "application/pdf"},
  {xid: "pagamento", name: "Pagamento", content_type: "application/pdf"},
  {xid: "auguri", name: "Auguri", content_type: "application/pdf"},
  {xid: "newsletter", name: "Newsletter", content_type: "application/pdf"},
  {xid: "elenco_utenti", name: "Elenco utenti", content_type: "application/pdf"},
  {xid: "20131230172838436791000", name: "Allegato", content_type: "application/pdf"},
  {xid: "20131230172838442248000", name: "Allegato", content_type: "application/pdf"},
  {xid: "20131230173650314204000", name: "CartaPlatinoSupplementare.pdf", content_type: "application/pdf"},
  {xid: "20131230173650341391000", name: "Schermata 07-2456475 alle 12.45.40.png", content_type: "image/png"},
  {xid: "20131230173942031994000", name: "CartaPlatinoSupplementare.pdf", content_type: "application/pdf"},
  {xid: "20131230173947193592000", name: "Schermata 07-2456475 alle 12.45.40.png", content_type: "image/png"},
  {xid: "000001_00000000001", name: "000001_00000000001", content_type: "application/pdf"},
  {xid: "20131230180505250674000", name: "ICARO-MINST [378-08].odt", content_type: "application/vnd.oasis.opendocument.text"},
  {xid: "20131230180505268766000", name: "Interfaccia Fruitore-PdL SISS 02072008.pdf", content_type: "application/pdf"},
  {xid: "20131230181650339877000", name: "ICARO - requisiti AO [r1.11].pdf", content_type: "application/pdf"},
  {xid: "20131230181650389503000", name: "ICARO-MUT (r1.25).pdf", content_type: "application/pdf"},
  {xid: "20131230181747729821000", name: "PresentazioneLombardiaInformatica.PDF", content_type: "application/pdf"},
  {xid: "20131230181747735125000", name: "img-firma.png", content_type: "image/png"},
  {xid: "20131231094055954785000", name: "ICARO - il sistema (nov-2010).odt", content_type: "application/vnd.oasis.opendocument.text"},
  {xid: "20131231094055999672000", name: "intersail.txt", content_type: "text/plain"},
  {xid: "20131231101450880742000", name: "ICARO - sicurezza accesso SIATEL [sett-11].pdf", content_type: "application/pdf"},
  {xid: "20131231101450882600000", name: "intersail.txt", content_type: "text/plain"},
  {xid: "20140211121024503606000", name: "CARONTE-Integrazione Accettazione AO.odt", content_type: "application/vnd.oasis.opendocument.text"},
  {xid: "20140211121024962920000", name: "Enums.txt", content_type: "text/plain"},
  {xid: "20140211144938486171000", name: "ICARO-C Scheda riassuntiva.odt", content_type: "application/vnd.oasis.opendocument.text"},
  {xid: "20140211144938487921000", name: "Sample.txt", content_type: "text/plain"},
  {xid: "20140218154957829131000", name: "ICARO-C Scheda riassuntiva.odt", content_type: "application/vnd.oasis.opendocument.text"},
  {xid: "20140218155605984632000", name: "Schermata 02-2456700 alle 11.23.04.png", content_type: "image/png"},
  {xid: "20140218155605998537000", name: "Sample.txt", content_type: "text/plain"},
  {xid: "20140218155606085540000", name: "Schermata 02-2456700 alle 11.23.04.png", content_type: "image/png"},
  {xid: "20140218155606087765000", name: "Schermata 02-2456700 alle 11.23.04.png", content_type: "image/png"},
  {xid: "20140218155606089523000", name: "Schermata 02-2456700 alle 11.23.04.png", content_type: "image/png"}
])
Channel.create!([
  {name: "Fax", parameters: "askaslkdjlkasjdklasjd", zf_id: "1001"},
  {name: "smtp", parameters: "sadasds sad sad", zf_id: "2002"}
])
Department.create!([
  {name: "Dipartimento di esempio", stato: 1, customer_id: nil}
])
Inbox.create!([
  {mittente: "Luca Russo", numero_protocollo: "010230123", numero_pagine: 1, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Alessandro Ricci", numero_protocollo: "010230123", numero_pagine: 3, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Michele Gallo", numero_protocollo: "010230123", numero_pagine: 1, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Massimo Conti", numero_protocollo: "010230123", numero_pagine: 1, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Daniele Colombo", numero_protocollo: "010230123", numero_pagine: 2, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Rosario Villa", numero_protocollo: "010230123", numero_pagine: 1, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Marco Ferri", numero_protocollo: "010230123", numero_pagine: 1, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Pietro Messina", numero_protocollo: "010230123", numero_pagine: 1, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Gianluca Vitale", numero_protocollo: "010230123", numero_pagine: 1, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Roberto Martinelli", numero_protocollo: "010230123", numero_pagine: 2, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Luigi De Santis", numero_protocollo: "010230123", numero_pagine: 1, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Paolo Villa", numero_protocollo: "010230123", numero_pagine: 1, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Alex Grazzo", numero_protocollo: "010230123", numero_pagine: 4, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Marco Lombardo", numero_protocollo: "010230123", numero_pagine: 1, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Gigi Fabbri", numero_protocollo: "010230123", numero_pagine: 2, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14},
  {mittente: "Mario Rossi", numero_protocollo: "010230123", numero_pagine: 1, data_ricezione: "2013-12-19 11:27:19", allegato_id: 14}
])
Outbox.create!([
  {destinatario: "Mario Rossi", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Aldo Bianchi", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-04 00:00:00", stato: 90, data_stato: "2013-09-04 00:00:00", risposta: "asdasdasdasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Luigi Ferrari", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Stefano Bianchi", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Carlo Neri", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Simone Esposito", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Luca Russo", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Nicola Romano", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Alessandro Ricci", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Michele Gallo", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Massimo Conti", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Daniele Colombo", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Rosario Villa", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Marco Ferri", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Pietro Messina", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Gianluca Vitale", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Roberto Martinelli", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Luigi De Santis", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Paolo Villa", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Alex Grazzo", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Marco Lombardo", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Gigi Fabbri", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Giovanni Leone", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Simone Parisi", oggetto: "Fattura", messaggio: "Testo del messaggio", data_invio: "2013-09-05 00:00:00", stato: 20, data_stato: "2013-09-03 00:00:00", risposta: "adadadasd", shipment_id: 1, allegato_id: 2},
  {destinatario: "Pippo", oggetto: "o", messaggio: "m", data_invio: nil, stato: 10, data_stato: "2014-02-18 14:47:42", risposta: nil, shipment_id: 21, allegato_id: 31},
  {destinatario: "cristiano.boncompagni@intersail.it", oggetto: "Nuove comunicazioni", messaggio: "Testo del messaggio", data_invio: nil, stato: 20, data_stato: "2014-02-18 14:56:06", risposta: nil, shipment_id: 22, allegato_id: 34},
  {destinatario: "massimiliano.redolfi@intersail.it", oggetto: "Nuove comunicazioni", messaggio: "Testo del messaggio", data_invio: nil, stato: 30, data_stato: "2014-02-18 14:56:06", risposta: nil, shipment_id: 22, allegato_id: 35},
  {destinatario: "amministrazione@pec.intersail.it", oggetto: "Nuove comunicazioni", messaggio: "Testo del messaggio", data_invio: nil, stato: 10, data_stato: "2014-02-18 14:56:06", risposta: nil, shipment_id: 22, allegato_id: 36}
])
Shipment.create!([
  {description: "Nuove comunicazioni", user_id: 1, account_id: 2, source_id: 33, template_id: 32},
  {description: "Invio comunicazioni", user_id: 1, account_id: 1, source_id: 30, template_id: 29},
  {description: "Invio solleciti", user_id: 1, account_id: 3, source_id: 28, template_id: 27},
  {description: "sa", user_id: 1, account_id: 2, source_id: 26, template_id: 25},
  {description: "rrrrr", user_id: 1, account_id: 3, source_id: 24, template_id: 23},
  {description: "xxxxxx", user_id: 1, account_id: 2, source_id: 22, template_id: 21},
  {description: "pppppp", user_id: 1, account_id: 2, source_id: 20, template_id: 19},
  {description: "Prova allegato ODT", user_id: 1, account_id: 2, source_id: 18, template_id: 17},
  {description: "bbbb", user_id: 1, account_id: 2, source_id: 13, template_id: 12},
  {description: "aaaa", user_id: 1, account_id: 2, source_id: 11, template_id: 10},
  {description: "Prova nuovo attachment #2", user_id: 1, account_id: 2, source_id: 9, template_id: 8},
  {description: "Prova nuovo attachment", user_id: 1, account_id: 1, source_id: nil, template_id: nil},
  {description: "Invio auguri di Natale", user_id: 1, account_id: 3, source_id: 1, template_id: 1},
  {description: "safagggggg5555", user_id: 1, account_id: 3, source_id: nil, template_id: nil},
  {description: "tre", user_id: 1, account_id: 1, source_id: nil, template_id: nil},
  {description: "tre", user_id: 1, account_id: 1, source_id: nil, template_id: nil},
  {description: "sadsadasdasdasdasd", user_id: 1, account_id: 1, source_id: nil, template_id: nil},
  {description: "Invio newsletter", user_id: 1, account_id: 1, source_id: 6, template_id: 5},
  {description: "Spedizione auguri di Natale", user_id: 1, account_id: 3, source_id: 6, template_id: 4},
  {description: "Spedizione pagamento", user_id: 1, account_id: 2, source_id: 6, template_id: 3},
  {description: "Invio fattura", user_id: 1, account_id: 1, source_id: 6, template_id: 2}
])
#Admin.create!([
#  {email: "alessandro2.fornasari@intersail.it", encrypted_password: "$2a$10$xFTojkR5kmibDuE0HNxt2.s0e3s.HDEZw9fjxbfbPPza8kFXwivN2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 13, current_sign_in_at: "2014-02-17 18:14:16", last_sign_in_at: "2014-02-17 16:20:58", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Alessandro"},
#  {email: "federica.santicoli@intersail.it", encrypted_password: "$2a$10$ypukdLrmMwL2XTSv0/yOXe9pF1Aq4KfSPcNGsPPIf4FPF73wo.PPC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-10-21 14:41:03", last_sign_in_at: "2013-10-15 07:59:06", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Fede"}
#])
