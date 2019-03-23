-- CONSTANTS

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

-- LOAD

function love.load()
  settings = {
    fullscreen = false,
    resizable = false,
    vsync = true
  }

  love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {})

  -- Give the font a retro appearance
  love.graphics.setDefaultFilter("nearest", "nearest")

  -- Font
  font = love.graphics.newFont("fonts/font.ttf", 160)
  love.graphics.setFont(font)
end

-- UPDATE

function love.keypressed(key)
  if key == "escape" then
    love.event.quit("restart")
  end
end

-- DRAW

function love.draw()
  horizontal_center = WINDOW_WIDTH / 2
  player_one_score = 0
  player_two_score = 0
  vertical_center = WINDOW_HEIGHT / 2

  -- Player 1 Score
  love.graphics.print(tostring(player_one_score), 280, 40)

  -- Player 2 Score
  love.graphics.print(tostring(player_two_score), 880, 40)

  -- Player 1 Paddle
  playerOnePaddle = {
    height = 125,
    width = 25,
    x = 75,
    y = vertical_center - 75
  }

  love.graphics.rectangle(
    "fill",
    playerOnePaddle.x,
    playerOnePaddle.y,
    playerOnePaddle.width,
    playerOnePaddle.height
  )

    -- Player 2 Paddle
    playerTwoPaddle = {
      height = 125,
      width = 25,
      x = WINDOW_WIDTH - 100,
      y = vertical_center - 75
    }

    love.graphics.rectangle(
      "fill",
      playerTwoPaddle.x,
      playerTwoPaddle.y,
      playerTwoPaddle.width,
      playerTwoPaddle.height
    )

    -- Ball
    ball = {
      height = 25,
      width = 25,
      x = horizontal_center - 12,
      y = vertical_center - 12
    }

    love.graphics.rectangle(
      "fill",
      ball.x,
      ball.y,
      ball.width,
      ball.height
    )
end

-- QUIT

function love.quit()
  print("Thanks for playing!")
end
