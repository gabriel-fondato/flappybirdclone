bird = require("bird")
pipespawner = require("pipespawner")

gamestate = {}

function gamestate:load()
    bird:load()
    pipespawner:load()

end

function gamestate:update(dt)
    bird:update(dt)
    pipespawner:update(dt)

end

function gamestate:draw()
    bird:draw()
    pipespawner:draw()

end

return gamestate