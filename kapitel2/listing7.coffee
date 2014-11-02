monat = (Number) process.argv[2]

if monat is 12 or 0 < monat < 3
	console.log "Winter"
else if 2 < monat < 6
	console.log "Frühling"
else if 5 < monat < 9
	console.log "Sommer"
else if 8 < monat < 12
	console.log "Herbst"
else
	console.log "kein gültiger Monat, daher auch keine Jahreszeit"
