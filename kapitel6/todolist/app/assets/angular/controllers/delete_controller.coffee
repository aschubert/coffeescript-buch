@todo.controller 'DeleteController', (task, $modalInstance) ->
	new class DeleteController
		constructor: ->
			@task = task

		ok: ->
			$modalInstance.close @task

		cancel: ->
			$modalInstance.dismiss "cancel"