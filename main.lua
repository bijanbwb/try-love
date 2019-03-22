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
end

-- DRAW

function love.draw()
  x_offset = 40
  y_offset = 6

  horizontal_center = WINDOW_WIDTH / 2 - x_offset
  vertical_center = WINDOW_HEIGHT / 2 - y_offset

  -- Draw text in the center of the window
  love.graphics.print('Hello Pong!', horizontal_center, vertical_center)
end
