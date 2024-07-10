-- Carregar uma imagem e promover a rotação da tela
-- Variáveis globais 
local personagem = {}
function love.load()
  personagem.img = love.graphics.newImage('bola.png')
  personagem.larg = personagem.img:getWidth()
  personagem.alt = personagem.img:getHeight()
  personagem.angulo = 0
  -- Coletando informações da janela do jogo 
  l_max = love.graphics.getWidth()
  a_max = love.graphics.getHeight()
  -- Definindo a cor de fundo 
  love.graphics.setBackgroundColor(1, 1, 1, 1)
end

function love.draw()
  px = (l_max - personagem.larg) / 2
  py  = (a_max - personagem.alt) / 2
  cx = personagem.larg / 2
  cy = personagem.alt / 2
  love.graphics.draw(personagem.img, px, py, personagem.angulo, 1, 1, cx, cy)
end

function love.update(dt)
  -- Padronização 
  -- D rotaciona no sentido horário 
  -- A rotaciona no sentido anti-horário
  if love.keyboard.isDown('d') then
    personagem.angulo = personagem.angulo + math.pi * dt
  elseif love.keyboard.isDown('a') then
    personagem.angulo = personagem.angulo - math.pi * dt
  end
end