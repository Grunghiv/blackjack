require "card"
require "mouse_functions"

function love.load()
    love.window.setMode(1280, 720, {vsync = true})
    NewCard = Card:new(Card, 'c', '4')
end

function love.update(dt)
    if NewCard.dragging.active then
        NewCard.x = love.mouse.getX() - NewCard.dragging.diffX
        NewCard.y = love.mouse.getY() - NewCard.dragging.diffY
    end
end

function love.draw()
    
end
