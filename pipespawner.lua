pipespawner = {gapSizeIncreser = 75}
Pipe1 = require("pipe1")
Pipe1x = 0
function pipespawner:load()
    Pipe1:setPos(love.math.random(love.graphics.getHeight()),75)
end

function pipespawner:update()
    Pipe1x = Pipe1.getX()
    --Pipe1x = Pipe1x + 4
    --Pipe1.setX(Pipe1x)

    if(Pipe1x<-50) then
        self.gapSizeIncreser = self.gapSizeIncreser + 0.01
        Pipe1:setX(love.graphics.getWidth())
        Pipe1:setPos(love.math.random(love.graphics.getHeight()-85),self.gapSizeIncreser)
        print(self.gapSizeIncreser)
    end

    Pipe1:update(dt)
end

function pipespawner:draw()
    Pipe1:draw()
end    
return pipespawner