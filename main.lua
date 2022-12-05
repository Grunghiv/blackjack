require "card"

function love.load()
    NewCard = Card:Initialize('c', '4')
end

function love.update(dt)

end

function love.draw()
    love.graphics.draw(NewCard, 0, 0)
end