Inventory = (@name) ->
        Inventory.count++
        @number = Inventory.count
        @status()

Inventory.count = 0
Inventory::status = ->
        console.log "#{@name} hat Inventarnummer #{@number}"

inventory1 = new Inventory "Hammer"
inventory2 = new Inventory "Zange"
inventory3 = new Inventory "Schraubenzieher"
