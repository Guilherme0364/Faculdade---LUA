-- Animação manipulando a escala
local LG = love.graphics
local angulo = 0
local l, a -- Largura e altura da imagem carregada
local x, y = 400, 300 -- Posição da imagem carregada

function love.load()
  LG.setBackgroundColor(1,1,1,1)
  imagem = LG.newImage("bola.png")
  l = imagem:getWidth()
  a = imagem:getHeight()
end 

function love.draw()
  rot = angulo * 180 /math.pi
  ex, ey = math.cos(angulo), math.sin(angulo)
  LG.draw(imagem, x,y, rot, ex, ey, 1/2, a/2)
end

function love.update(dt)
-- Definindo a rotação 
angulo = angulo + 0.5 * dt
x, y = 400 + math.cos(angulo) * 100, 300 + math.sin(angulo) * 100
end
