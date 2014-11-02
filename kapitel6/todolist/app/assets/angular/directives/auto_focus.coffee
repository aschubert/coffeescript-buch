@todo.directive "autoFocus", ($timeout) ->
	link: (scope, element, attrs) ->
		scope.$watch attrs.autoFocus, (value) ->
			if value
				$timeout ->
					element.select()