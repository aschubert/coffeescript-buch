@todo.factory 'Task', ($resource) ->
	new class Task
		@railsRESTApi  = 
			index:
				method: "GET"
				isArray: true
			create:
				method: "POST"
			update:
				method: "PATCH"
			destroy:
				method: "DELETE"
	
		constructor: ->
			@service = $resource '/api/tasks/:id', {id: '@id'}, Task.railsRESTApi 

		create: (newTask) ->
			new @service(task: newTask)
	
		all: ->
			@service.query(success = (data) ->
				return (task.disabled = true for task in data)
			)