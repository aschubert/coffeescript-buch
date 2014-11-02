try
	console.log "Fehler im Anmarsch"
	diese_funktion_gibt_es_nicht()
	console.log "Wird nicht angezeigt"
catch error
	console.log "Fehler!"
	console.log error
finally
	console.log "Das mache ich aber sicher!"
