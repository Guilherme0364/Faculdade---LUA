-- Introduções à animações controladas pelo tempo
-- Apelidos para funções 
local LG = love.graphics

-- Variávreis globais
posX = 0 
veloc = 60 -- Pixels/s
tam = 200 -- Tamanho da figura
x0, y0 = 10, 100 -- Posição inicial da figura

function love.load()
  LG.setBackgroundColor(1,1,1,1)
end

function love.draw()
  LG.setColor(1,0,0,1) -- Vermelho
  
  -- Desenhar uma linha colocando da origem até o centro da tela
  LG.line(0,0, 400,400)
  
  -- Cor azul, desenhar uma linha cortando verticalmente a tela
  LG.setColor(0,0,1,1) -- Azul 
  LG.line(0, LG.getHeight() / 2, LG.getWidth(), LG.getHeight() / 2)
  
  -- Desenhar uma figura que vai ser animada
  LG.setColor(0,1,0,1) -- Verde
  LG.polygon('fill', {posX + x0,y0, posX + x0+tam,y0, posX + x0+tam,y0+tam, posX + x0,y0+tam})
end

function love.update(dt)
  -- Atualizando a posição X para a translação no eixo X
  if(posX < LG.getWidth()) then 
  posX = posX + veloc * dt
  else
    posX = - tam
  end
end