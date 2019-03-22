function love.load()
  whale = love.graphics.newImage("whale.png")
end

function love.draw()
  love.graphics.draw(whale, 300, 200)
end
