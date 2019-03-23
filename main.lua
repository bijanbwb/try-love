-- CONSTANTS

BALL_HEIGHT = 25
BALL_WIDTH = 25
PADDLE_HEIGHT = 125
PADDLE_SPEED = 100
PADDLE_WIDTH = 25
WINDOX_CENTER_X = 640
WINDOW_CENTER_Y = 360
WINDOW_HEIGHT = 720
WINDOW_WIDTH = 1280

-- LOAD

function love.load()

  -- Window
  settings = {
    fullscreen = false,
    resizable = false,
    vsync = true
  }

  love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, settings)

  -- Font
  font = love.graphics.newFont("fonts/font.ttf", 160)
  love.graphics.setFont(font)

  -- Scores
  player1Score = 0
  player2Score = 0

  -- Player 1 Paddle
  player1PaddleX = 75
  player1PaddleY = WINDOW_CENTER_Y - 75

  -- Player 2 Paddle
  player2PaddleX = WINDOW_WIDTH - 100
  player2PaddleY = WINDOW_CENTER_Y + 75

  -- Ball
  ballX = 100
  ballY = 100
end

-- UPDATE

function love.update()
  -- Move the ball
  ballX = ballX + 1
  ballY = ballY + 1

  -- Control the Player paddle
  if love.keyboard.isDown("up") then player1PaddleY = player1PaddleY - 1 end
  if love.keyboard.isDown("down") then player1PaddleY = player1PaddleY + 1 end

  -- Control the "AI" paddle
  player2PaddleY = ballY

  -- Restart
  if love.keyboard.isDown("escape") then love.event.quit("restart") end
end

-- DRAW

function love.draw()
  -- Scores
  love.graphics.print(tostring(player1Score), 280, 40)
  love.graphics.print(tostring(player2Score), 880, 40)

  -- Player 1 Paddle
  player1Paddle = {
    height = PADDLE_HEIGHT,
    width = PADDLE_WIDTH,
    x = player1PaddleX,
    y = player1PaddleY
  }

  love.graphics.rectangle(
    "fill",
    player1Paddle.x,
    player1Paddle.y,
    player1Paddle.width,
    player1Paddle.height
  )

    -- Player 2 Paddle
    player2Paddle = {
      height = PADDLE_HEIGHT,
      width = PADDLE_WIDTH,
      x = player2PaddleX,
      y = player2PaddleY
    }

    love.graphics.rectangle(
      "fill",
      player2Paddle.x,
      player2Paddle.y,
      player2Paddle.width,
      player2Paddle.height
    )

    -- Ball
    ball = {
      height = BALL_HEIGHT,
      width = BALL_WIDTH,
      x = ballX,
      y = ballY
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
