

Pipe1 = {speed = 4}

function Pipe1:setPos(gapPos, gapSize)
    self.x = love.graphics.getWidth()
    self.pipeTop = {
        bottomGapHeight = gapPos - gapSize,
    }

    self.pipeBottom = {
        topGapHeight = gapPos + gapSize,
        bottomHeight = love.graphics.getHeight(),
    }

    
end

function Pipe1:getX()
    return Pipe1.x
end

function Pipe1:setX(X)
    self.x = X or self.x
end

function Pipe1:load()

end

function Pipe1:update(dt)
    self.x = self.x - Pipe1.speed
    self.speed = self.speed + 0.0005
end

function Pipe1:draw()
    love.graphics.rectangle("fill", self.x, 0, 50, self.pipeTop.bottomGapHeight)
    love.graphics.rectangle("fill", self.x, self.pipeBottom.topGapHeight, 50, love.graphics.getHeight())
end
return Pipe1