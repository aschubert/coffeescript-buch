MandatoryFields = 
	id: "#newsletter_mandatory"
	
	fieldIDs: [
		"#newsletter_salutation"
		"#newsletter_firstname"
		"#newsletter_lastname"
		"#newsletter_email"
	]
	
	errorMessage: "Die rot markierten Felder dürfen nicht leer sein"
		
	findEmpty: ->
		( field for field in @fieldIDs when $(field).val().length is 0 )
		
	check: ->
		emptyFields = @findEmpty()
		if emptyFields.length is 0
			true
		else
			$(field).css("border","3px solid red") for field in emptyFields
			ErrorMessages.messages[@id] = @errorMessage
			ErrorMessages.display()
			false

	reset: ->
		delete ErrorMessages.messages[@id]
		ErrorMessages.display()
		$(field).css("border","") for field in @fieldIDs

ErrorMessages =
	messages: {}
	errorID: "#newsletter_error"

	display: ->
		message = ""
		message += "#{val}<br/>" for key,val of @messages
		$(@errorID).html(message)


ValidEmail =
	id: "#newsletter_email"
	errorMessage: "Keine gültige Email-Adresse"
	
	check: ->
		if /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,6}$/i.test $(@id).val()
			delete ErrorMessages.messages[@id]
			ErrorMessages.display()
			true
		else
			ErrorMessages.messages[@id] = @errorMessage
			ErrorMessages.display()
			false

ValidBirthday =
	id: "#newsletter_birthday"
	errorMessage: "Kein gültiges Datum"
	
	check: ->
		if /^[0-9]{1,2}\.[0-9]{1,2}\.[0-9]{2,4}$/i.test $(@id).val()
			delete ErrorMessages.messages[@id]
			ErrorMessages.display()
			true
		else
			ErrorMessages.messages[@id] = @errorMessage
			ErrorMessages.display()
			false

jQuery ->
	$('#new_newsletter').submit ->
		MandatoryFields.reset()
		mf = MandatoryFields.check()
		ve = ValidEmail.check()
		vb = ValidBirthday.check()
		mf and ve and vb