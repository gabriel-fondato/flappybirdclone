bird = require("bird")
pipespawner = require("pipespawner")

gamestate = {}

function gamestate:checkColision()
    if ((bird.x>Pipe1.getX()) and (bird.y>Pipe1.pipeBottom.topGapHeight)) then
        print("bottom pipe collision")
    end
    if ((bird.x>Pipe1.getX()) and (bird.y<Pipe1.pipeTop.bottomGapHeight)) then
        print("top pipe collision")
    end
end


function gamestate:load()
    bird:load()
    pipespawner:load()

end

function gamestate:update(dt)
    bird:update(dt)
    pipespawner:update(dt)
    --print(Pipe1.x)
    gamestate:checkColision()
end

function gamestate:draw()
    bird:draw()
    pipespawner:draw()

end

return gamestate