Card = {suit = '', value = ''}

function Card:new(o, suit, value)
    Card = o or {}
    setmetatable(Card, self)
    self.__index = self
    self.suit = suit
    self.value = value
    self.image = love.graphics.newImage('assets/cards/'..suit..value..'.png')
    self.x = 10
    self.y = 10
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()
    self.dragging = {active = false, diffX = 0, diffY = 0}
    return Card

end

function Card:update(o)
    o.image = love.graphics.newImage('assets/cards/'..o.suit..o.value..'.png')
    return o
end

function Card:setSuit(o, suit)
    o.suit = suit
    return o

end

function Card:setValue(o, value)
    o.value = value
    return o

end
