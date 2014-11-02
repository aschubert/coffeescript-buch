@todo.controller 'TaskController', (Task, $modal) ->
	new class TaskController
		constructor: ->
			@all = Task.all()
	
		remaining: ->
			(task for task in @all when task.done is false).length
	
		toggleDone: (task) ->
			task.done = ! task.done
			task.$update()
	
		edit: (task) ->
			@oldTask = angular.copy task
			task.disabled = false
			task.done = false
	
		save: (task) ->
			task.$update()
			task.disabled = true
			@oldTask = angular.copy task
	
		blur: (task) ->
			angular.copy(@oldTask, task)
	
		delete: (task) ->
			deleteModal = $modal.open
				templateUrl: "delete.html"
				resolve:
					task: -> 
						task
				controller: 'DeleteController as delete'

			deleteModal.result.then (task) =>
				task.$destroy()
				@all.splice(@all.indexOf(task), 1)

	
		add: ->
			task = Task.create
				name: @name
				done: false
			task.$save (data) =>
				data.disabled = true
				@all.push data
			@name = ''