monat = (Number) process.argv[2]

switch monat
	when 1,2,12 then console.log "Winter"
	when 3,4,5 then console.log "Frühling"
	when 6,7,8 then console.log "Sommer"
	when 9,10,11 then console.log "Herbst"
	else console.log "kein gültiger Monat, daher auch keine Jahreszeit"
