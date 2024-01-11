bird = require("bird")
pipespawner = require("pipespawner")

gamestate = {state = "wait"}

function gamestate:checkColision()
    if ((bird.x+35>Pipe1.getX()) and (bird.y>Pipe1.pipeBottom.topGapHeight) and (bird.x< Pipe1.getX()+50)) then
        print("bottom pipe collision")
        bird.collided = true
    end
    if ((bird.x+35>Pipe1.getX()) and (bird.y<Pipe1.pipeTop.bottomGapHeight) and (bird.x< Pipe1.getX()+50)) then
        print("top pipe collision")
        bird.collided = true
    end
end


function gamestate:load()
    bird:load()
    pipespawner:load()

end

function gamestate:update(dt)
    if self.state == "wait" then
        
        if love.keyboard.isDown("space") then
            --print(state)
            self.state = "game"
            pipespawner:load()
            bird:load()
        end

    elseif self.state == "game" then
        gamestate:checkColision()
        bird:update(dt)
        pipespawner:update(dt)
        --print(Pipe1.x)
        gamestate:checkColision()
    end
    if bird.collided == true then
        self.state = "wait"
        
        bird.collided = false
    end
end

function gamestate:draw()
    if self.state == "wait" then
        love.graphics.print("Precione espaço para começar",love.graphics.getWidth()/2,80)
    end
    
    bird:draw()
    pipespawner:draw()

end

return gamestate