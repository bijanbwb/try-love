function love.load()
  -- GRAPHICS
  whale = love.graphics.newImage("gfx/whale.png")

  -- AUDIO
  music = love.audio.newSource("sound/music.ogg", "stream")

  music:setLooping(true)
  music:play()

  -- TEXT
  text = "Hello " .. "Cruel World"
end

function love.update(dt)
  if love.keyboard.isDown("down") then
    text = "Alas, the down key hath been pressed."
  end
end

function love.draw()
  love.graphics.print("Whaley", 300, 180)
  love.graphics.print(text, 300, 100)
  love.graphics.draw(whale, 300, 200)
end

function love.focus(f)
  if not f then
    print("Game paused.")
  else
    print("Resume game.")
  end
end

function love.quit()
  print("Thanks for playing! I've had a whale of a time.")
end
