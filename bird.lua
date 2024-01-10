bird = {}

function bird:load()
    self.x = 75
    self.y = 200
    self.Yvel = 0
    self.rotation = 0
    self.gravity = 0.4
end

function bird:update(dt)
    self.Yvel = self.Yvel - self.gravity
    self.gravity = self.gravity + 0.00005
    --print(self.Yvel)

    if love.keyboard.isDown("space") then
        self.Yvel = 6
        self.AditionalYvel = self.AditionalYvel + 0.5 
        --print("flap")
        --print(self.Yvel)
        --print(self.y)
    else
        self.AditionalYvel = 0
    end

    if not (self.Yvel == 0) then
        self.y = self.y - self.Yvel
        self.y = self.y - self.AditionalYvel
        --self.Yvel = self.Yvel -5
        --print(self.Yvel)
    else
        Yvel = 0
    end

end

function bird:draw()
    love.graphics.rectangle("fill", self.x, self.y, 35, 35)
end

return bird
