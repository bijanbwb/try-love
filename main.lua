function love.load()
  -- GRAPHICS
  whale = love.graphics.newImage("gfx/whale.png")

  -- AUDIO
  music = love.audio.newSource("sound/music.ogg", "stream")

  music:setLooping(true)
  music:play()
end

function love.draw()
  love.graphics.print("Whaley", 300, 180)
  love.graphics.draw(whale, 300, 200)
end
