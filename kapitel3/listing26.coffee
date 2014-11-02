class Inventory
        @count: 0

        constructor: (@name) ->
                Inventory.count++
                @number = Inventory.count
                @status()

        status: ->
                console.log "#{@name} hat Inventarnummer #{@number}"

inventory1 = new Inventory "Hammer"
inventory2 = new Inventory "Zange"
inventory3 = new Inventory "Schraubenzieher"
