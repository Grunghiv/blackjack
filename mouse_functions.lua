function love.mousepressed(x, y, button)
    if ((button == 1) and (x > NewCard.x) and (x < NewCard.x + NewCard.width) and (y > NewCard.y) and (y < NewCard.y + NewCard.height)) then
        NewCard.dragging.active = true
        NewCard.dragging.diffX = x - NewCard.x
        NewCard.dragging.diffY = y - NewCard.y
    end

    if button == 1 then
        NewCard = Card:setSuit(NewCard, 'h')
        NewCard = Card:setValue(NewCard, '7')
    end
end

function love.mousereleased(x, y, button)
    if button == 1 then
        NewCard.dragging.active = false
    end

end