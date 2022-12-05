function Card:initialize(suit, value)
    Card = {}
    self.suit = suit
    self.value = value
    self.image = love.graphics.newImage('assets/cards/'..suit..value..'.png')
    self.__index = self

end

function Card:setSuit(suit)
    self.suit = suit

end

function Card:setValue(value)
    self.value = value

end