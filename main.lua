function love.load()
  whale = love.graphics.newImage("whale.png")
  sound = love.audio.newSource("music.ogg", "stream")
  love.audio.play(sound)
end

function love.draw()
  love.graphics.print("Whaley", 300, 180)
  love.graphics.draw(whale, 300, 200)
end
